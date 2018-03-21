$(function() {
	$("#cnt").blur(function() {
		var quantity = $("#cnt").val();
		if(!/^[1-9]\d*$/.test(quantity) ) {
			alert("数量必须是合法整数！" );
			$("#cnt").val("1");
		}else if(quantity > 300){
			alert("厂家库存量最大量为300！别瞎买！");
			$("#cnt").val("300");
		}
	});
});