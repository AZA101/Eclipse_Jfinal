<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>利用jquery创造dom节点</title>
</head>
<script type="text/javascript">
 $(function(){
	 $("#p1").click(function(){
		 var mydiv=$("<div id='d' title='mydiv' onclick=addInput()>hi my div</div> ");
		 $("body").append(mydiv);
	 });	 
 });
 function addInput(){
	 $('body').append("<input value=222>");
 }
</script>
<body>
  <p id="p1" style="background-color:yellow; width:300px;">点击后创建div</p>
</body>
</html>