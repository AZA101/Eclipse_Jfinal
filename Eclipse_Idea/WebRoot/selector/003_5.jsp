<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>子元素过滤选择器</title>
<style type="text/css">
body{font-size:12px;text-align:center;}
ul{width:241px;list-style-image:none;padding:0px;}
ul li{height:23px; width:60px;line-height:23px;float:left;border-top:solid 1px #eee;
      border-bottom:solid  1px #eee; margin-bottom:5px; 
      }
     .GetFocus{width:58px;border:solid 1px #666;background-color:#eee}
</style>
<script type="text/javascript">
   $(function(){
	   //<ul>标签是父元素,<li>标签是子元素
	   //$("li:nth-child(2)").addClass("GetFocus"); //增加每个父元素下的第二个子元素类别
	   //$("li:first-child").addClass("GetFocus");   //增加每个父元素下的第一个子元素类别
	   // $("li:last-child").addClass("GetFocus");   //增加每个父元素下的最后一个子元素类别
	  // $("li:only-child").addClass("GetFocus");  //增加父元素只有一个子元素类别
   });
</script>
</head>
<body>
<ul>
   <li>Item 1-0</li>
   <li>Item 1-1</li>
   <li>Item 1-2</li>
   <li>Item 1-3</li>
</ul>
<ul>
   <li>Item 2-0</li>
   <li>Item 2-1</li>
   <li>Item 2-2</li>
   <li>Item 2-3</li>
</ul>
<ul>
  <li>Item 3-0</li>
</ul>
</body>
</html>