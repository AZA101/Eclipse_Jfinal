<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>jquery 切换事件</title>
<style type="text/css">
.red{color:red;}
.green{color:green;}
</style>
<script type="text/javascript">
  //hover(over,out) 两个方法的切换是通过鼠标的移动  
  $(function(){
	  $("#d1").hover(function(){
	      $(this).hide();
	   },
	   function(){
		   $(this).show(100);
	  });	  
  });  
  $(function(){
	  $("#aa").hover(function(){
		  $(this).removeClass("green"); //css没有覆盖的方式，当鼠标移动到字内，需要先去除原先的颜色
		  $(this).addClass("red");
	  },
	  function(){
		  $(this).addClass("green");
	  });
  });  
  $(function(){
	  $("#dd").bind('click',function(){ //绑定一个click事件可以写为，绑定一个事件，该事件在点击时候触发
		  console.info($(this).val());
	  });
  });
</script>
</head>
<body>
<input id="dd" value="123">
<a id="aa">我是超链接</a>
<div id="d1" style="width:200px; height:100px;border: solid 1px #eee">jquery hover事件</div>
</body>
</html>