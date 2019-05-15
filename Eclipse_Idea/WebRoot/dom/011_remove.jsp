<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>删除节点</title>
<style type="text/css">
ul li{list-style-type:none;padding：0px;height:23px;}
.btn{
  border:solid 1px #444;padding:2px;width:60px;
  filter:progid:DXImageTransform.Microsoft.Gradient(GradienType=0,StartColorStr=#ffffff,EndColorStr=#ECE9DB)
}
</style>
<script type="text/javascript">
  $(function(){
	  $("ul li:first").css("font-weight","bold");
	  $("#b1").click(function(){
		 // $("ul li").remove("li[title=t]");//remove方法中设计参数
		  $("ul li:eq(1)").remove();//学号是第一项，下标为0
	  });
  });
</script>
</head>

<body>
 <ul>
    <li>学号</li>
    <li title="t">1001</li>
    <li>1002</li>
    <li>1003</li>
    <li title=t>1004</li>
    <li style="text-align: center;padding-top:5px;">
      <input id="b1" type="button" value="删除" class="btn">
    </li>
 </ul>
</body>
</html>