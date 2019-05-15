<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>dom节点的克隆</title>
</head>
<script type="text/javascript">
   $(function(){
	   $("img").click(function(){
		   $(this).clone().appendTo("#d2");
		  // $(this).clone(true).appendTo("#d2");
//clone()括号里面默认不设置参数，不设置参数时(参数为true和flase)，就不复制该标签绑定的事件		  
	   });
   });
</script>
<body>
<div id='d1' style="border: solid 1px #666;"><img alt="表情包" src="WebRoot/jquery_easyui/themes/icons/blank.gif"></div>
<div id="d2"></div>
</body>
</html>