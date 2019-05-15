<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>css的样式使用</title>
<style type="text/css">
  .divDefault{width:260px;font-size:10pt;padding:5px;}
  .divClick{width:260px;border:solid 1px #666; font-size:10pt;background-color:#eee padding:5px;}
</style>
<script type="text/javascript">
  $(function(){
	  $('.divDefault').click(function(){
		$(this).toggleClass("divClick").html("点击后的样式"); 
		//$(this)是获取当前元素
		//toggleClass是如果存在或不存在就删除或添加一个类
	  });
  });
</script>
</head>
<body>
<div class="divDefault">点击前的样式</div>
</body>
</html>