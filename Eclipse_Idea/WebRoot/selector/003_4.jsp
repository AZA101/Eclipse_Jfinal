<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>属性过滤选择器</title>
<style type="text/css">
 body{font-size:12px;text-align:center;}
 div,span{float:left;margin:8px;border:solid 1px #666;width:100px;height:100px;display:none;}
</style>
<script type="text/javascript">
   $(function(){
	   //$("div[id]").show(1000); //显示含有id的div属性
	  // $("div[title='A']").show(1000); //属性为title并且值为'A'的显示
	  // $("div[title!='A']").show(1000); //title属性值不是'A'的显示
	  // $("div[title^='AB']").show(1000);  //title的属性值是以'A'开头的显示,区分大小写	
	  // $("div[title$='C']").show(1000);  //title的属性值是以'C'结尾的显示,区分大小写
	  // $("div[title*='B']").show(1000);//显示包含B的
	   $("div[id^='div'][title*='B']").show(1000);  //多个复合选择器，div中要有id,其次要有title,然后再根据里面的条件
   });
</script>
</head>
<body>
  <div id="divID">DIVID</div>
  <div title="A">A</div>
  <div id="divAB" title="AB">id:DIVAB<br/>title:AB</div>
  <div title="ABC">ABC</div>
</body>
</html>