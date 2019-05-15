<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>包裹节点</title>
</head>
<script type="text/javascript">
//通过包裹某个节点，使其增加相应的功能
$(function(){
	
	 $("#sp1").wrap("<b></b>");//包裹此节点
	 $("#sp2").wrapInner("<i></i>");//包裹此节点的内部元素（包括文本内容）
	 //wrapInner是在标签内部包裹进来其他功能
 });

</script>
<body>
<p>姓名：<span id="sp1">bhx</span></p>
 <p>年龄：<span id="sp2">29</span></p>
</body>
</html>