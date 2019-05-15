<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>淡入淡出效果</title>
<script type="text/javascript">
   $(function(){
	   //淡入淡出效果，调整的是css的透明效果
	   $("#btn1").click(function(){
		   $("#d1").fadeOut(2000);
	   });
	   $("#btn2").click(function(){
		   $("#d1").fadeIn(2000);
	   });
	   $("#btn3").click(function(){
		   $("#d1").fadeTo(2000,0.20);//2秒之内效果淡到一定程度
	   });
   });
</script>
</head>
<body>
<div id="d1" style="background-color:green;width:100px;height:100px;border: solid 1px #666;">测试效果</div>
<button id="btn1">点击消失</button>
<button id="btn2">点击出现</button>
<button id="btn3">点击调整</button>
</body>
</html>