<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>滑动效果</title>
<script type="text/javascript">
   $(function(){
	  
	   $("#btn1").click(function(){
		   $("#d1").slideUp(2000);
	   });
	   $("#btn2").click(function(){
		   $("#d1").slideDown(2000);
	   });
	   $("#btn3").click(function(){
		   $("#d1").slideToggle(2000);//滑动效果
	   });
   });
</script>
</head>
<body>
<div id="d1" style="background-color:green;width:100px;height:100px;border: solid 1px #666;">测试效果</div>
<button id="btn1">点击上滑</button>
<button id="btn2">点击下滑</button>
<button id="btn3">滑入滑出</button>
</body>
</html>