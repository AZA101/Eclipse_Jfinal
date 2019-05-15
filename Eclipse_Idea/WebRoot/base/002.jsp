<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>jQuery获取表单数据</title>
<style type="text/css">
   .divFrame{width:260px;broder:solid 1px #666; font-size:10pt}
   	.divTitle{background-color:#eee;padding:5px}
   	.divContent{padding:8px;font-size:9pt;}
   	.divTip{width:244px;border:solid 1px #666;padding:8px;font-size:9px;margin-top:5px;display:none;}
   	.divBtn{padding-top:5px;}
   	.divBtn,btnCss{border:solid 1px #535353; width:50px;}
</style>
<script type="text/javascript">
   $(function(){
	   $("#button1").click(function(){
		   var t1=$("#text1").val();//获取text属性中的值
		   var s1=$("#radio1").attr("radio")?"男":"女";//jQuery中要取到某个标签的具体属性，必须调用一个方法
		   //js中的话可以直接.属性名
		   var c1=$("#check1").attr("checkbox")?"结婚了":"没结婚";
		   $(".divTip").html(t1+'\n'+s1+'\n'+c1).show(1000).css('display','block');
		   // 
	   });	  
   });
</script>
</head>
<body>
<div class="divTitle">请输入如下信息</div>
<div class="divContent">
  姓名：<input id="text1" type="text" class="txtCss"><br/>
  <!-- checked属性规定首次加载时应该被选中 -->
 性别：<input id="radio1" checked="checked" type="radio" name="sex"value="男"/>男
       <input id="radio2"  type="radio" name="sex"value="女"/>女<br/>
 婚否:<input id="check1" type="checkbox">
 <div class="divBtn">
   <input id="button1" type="button" value="提交" class="btnCss">
 </div>
 </div>
 <div id="divTip" class="divTip"></div>
</body>
</html>