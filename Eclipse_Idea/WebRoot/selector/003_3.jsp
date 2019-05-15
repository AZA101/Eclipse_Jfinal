<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>可见性过滤选择器</title>
<style type="text/css">
  body{font-size:12px;text-align:center;}
  div,span{float:left;margin:8px;border:solid 1px #666 ;width:100px;height:100px;}
  .GetFocus{width:100px;border:solid 1px #666;background-color:#eee;}
</style>
<script type="text/javascript">
   $(function(){
	   //获取所有不可见元素
	   $("span:hidden").show(1000);    //隐藏元素变为显示
	 //获取所有可见元素
	   $("div:visible").addClass("GetFocus");  //显示元素加上类样式
   });
</script>
</head>
<body>
<span style="display:none">Hidden</span>
<div>Visible</div>
</body>
</html>