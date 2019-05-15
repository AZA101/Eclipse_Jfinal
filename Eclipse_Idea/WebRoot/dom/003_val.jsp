<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>jquery通过val()方法获取元素的值</title>
</head>
<script type="text/javascript">
 $(function(){
	 $("select").change(function(){//选择器选择了标签名称  绑定一个onchange事件 onchange事件里面绑定一个function函数
		 var values=$("select").val().join(",");//得到select里面的所有val值，返回的是一个数组，给数组加一个逗号
		 $("#p1").html(values);//选择器选择了id属性
	 });
	 $("input").change(function(){
		 var value=$("input").val();
		 $("#p2").html(value);
	 });
	 $("input").focus(function(){
		 $("input").val("");//将input里面的值清空
		 $("#p2").empty();//将p2里面的值也清空，empty方法用来清空标签里面的内容
	 });
 });
</script>
<body>
   <select multiple="mutiple" style="height:96px ;width:85px;">
    <option value="1">item 1</option>
     <option value="2">item 2</option>
     <option value="3">item 3</option>
     <option value="4">item 4</option>
   </select>
   <p id="p1"></p>
   <input type="text" value="">
   <p id="p2"></p>
</body>
</html>