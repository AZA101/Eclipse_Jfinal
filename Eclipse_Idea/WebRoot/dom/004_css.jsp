<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>jquery操作css样式</title>
</head>
<style type="text/css">
   .cls1{font-style:italic; font-weight:bold;}
   .cls2{border:solid 1px #666;font-size:40px;}
</style>
<script type="text/javascript">
$(function(){
	//css(name,value) 增加样式
	$("p").click(function(){//绑定一个click事件，该click事件里面绑定一个函数
		$(this).css("font-size","30px").css("font-weight","bold").css("background-color","#eee");
	//this指代该标签，即上面的p标签，给该标签连续设置多个样式。
	});
	//addClass 增加类别
	$("p").click(function(){
		$(this).addClass("cls1","cls2");
	});
});

$(function(){
	//$('body').append('<div id=dd style=background-color:red onclick=alert(123);>我是div内容</div>');
});
</script>

<body>
  <p>write less Do More</p>
</body>
</html>