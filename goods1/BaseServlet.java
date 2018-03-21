
package cn.com.hkr.servlet;

import java.io.IOException;
import java.lang.reflect.Method;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class BaseServlet extends HttpServlet
{

	public BaseServlet()
	{
	}

	public void service(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException
	{
		response.setContentType("text/html;charset=UTF-8");
		String methodName = request.getParameter("method");
		Method method = null;
		try
		{
			method = getClass().getMethod(methodName, new Class[] {
				javax/servlet/http/HttpServletRequest, javax/servlet/http/HttpServletResponse
			});
		}
		catch (Exception e)
		{
			throw new RuntimeException((new StringBuilder("��Ҫ���õķ�����")).append(methodName).append("����ڣ�").toString(), e);
		}
		try
		{
			String result = (String)method.invoke(this, new Object[] {
				request, response
			});
			if (result != null && !result.trim().isEmpty())
			{
				int index = result.indexOf(":");
				if (index == -1)
				{
					request.getRequestDispatcher(result).forward(request, response);
				} else
				{
					String start = result.substring(0, index);
					String path = result.substring(index + 1);
					if (start.equals("f"))
						request.getRequestDispatcher(path).forward(request, response);
					else
					if (start.equals("r"))
						response.sendRedirect((new StringBuilder(String.valueOf(request.getContextPath()))).append(path).toString());
				}
			}
		}
		catch (Exception e)
		{
			throw new RuntimeException(e);
		}
	}
}
