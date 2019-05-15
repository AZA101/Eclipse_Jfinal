<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>002操作dom节点</title>
<script type="text/javascript">

$(function(){
	document.getElementById("div1").innerHtml="传统方式操作";//传统方式操作元素内容
	/*
	html()&&html(val)
	console.info($("#div1").html());
	$("#div1").html("<h1>abcde<h1>");
	*/
	/*
	text() && text(val)
	alert($("#div2").text());
	$("#div2").text("<h2>修改内容<h2>");
	*/
});
</script>
</head>
<body>
    <div id="div1">jQuery操作元素的内容11</div>
     <div id="div2">jQuery操作元素的内容22</div>
     <input type="button" onclick="#">
</body>
</html>