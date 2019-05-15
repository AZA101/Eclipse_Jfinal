<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>jquery的冒泡机制（冒泡事件）</title>
<style type="text/css">
.btn{
   broder:solid 1px #444;padding:2px; width:60px;
   filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr=#ffffff,EndColorStr=#ECE9D8);
}
</style>
<script type="text/javascript">
$(function(){
	var i=0;
	$("body,div,#btnShow").click(function(event){//给三个标签元素绑定了一个click事件，该事件里面绑定了一个匿名的函数
		i++;
		$(".cls").show(2000).html("欢迎学习jQuery").append("执行次数:<b>"+i+"</b>");
		//event.stopPropagation();// 阻止冒泡事件继续响应
		//return false;//最土的阻止冒泡事件继续响应
	});
});
</script>
</head>
<body>
<div style="border:solid 1px #666;">
    <input id="btnShow" type="button" value="点击" class="btn">
</div>
  <div id="d1" class="cls"></div>
</body>
</html>