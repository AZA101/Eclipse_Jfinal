<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>替换节点</title>
</head>
<script type="text/javascript">
 $(function(){
	 //jquery的replace和传统的javascript还是有区别的
	 $("#sp1").replaceWith("<span>bhx</span>");//replacewith前面是替换的对象，后面是替换的内容
	 $("<span>29</span>").replaceAll("#sp2");//replaceAll前面是替换的内容，后面是替换的对象
 });
</script>
<body>
 <p>姓名：<span id="sp1"></span></p>
 <p>年龄：<span id="sp2"></span></p>
</body>
</html>