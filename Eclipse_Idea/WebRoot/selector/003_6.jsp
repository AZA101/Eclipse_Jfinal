<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>表单对象选择器</title>
<style type="text/css">
  body{font-size:12px;text-align:center;}
  div{display:none;}
  select{height:65px;}
  .clsIpt{width:100px;padding:3px}
  .GetFocus{width:58px;border:solid 1px red;background-color:#eee}
</style>
<script type="text/javascript">
$(function(){
	//$("#divA").show(1000);//上面已经把div设置为不可用，所以要先设置为显示
	//$("#form1 input:enabled").addClass("GetFocus");//可用表单对象增加class属性
	//$("#form1 input:disabled").addClass("GetFocus"); //不可用表单对象增加class属性
	
	//$("#divB").show(1000);
	//alert($("#form1 input:checked").val());//获取复选框中的值
	
	//$("#divC").show(1000);
	//$("#form1 select option:selected").text();  //获取选中项
	//$("#sp").html("选中项为："+$("#form1 select option:selected").text());// 在选中项的基础上在做一个操作
	//js方式获取input的value值
	window.onload=function(){
		var a =document.getElementById("input1");
		 alert(a.value);//这是js的取值方式
	}
	
});
</script>
</head>
<body>
  <form action="" id="form1" style="width:241px">
     <div id="divA">
        <input type="text" value="可用文本框" class="clsIpt"/>
        <input type="text" disabled="disabled" value="不可用文本框" class="clsIpt"/>
     </div>
     <div id="divB">
     <input id="input1" type="checkbox" checked="checked" value="1"/>选中
     <input type="checkbox" value="0"/>未选中 
     </div>
     <div id="divC">
         <select multiple="multiple">
           <option value="0">select 0</option>
           <option value="1" selected="selected">select 1</option>
           <option value="2">select 2</option>
           <option value="3" selected="selected">select 3</option>
         </select>
         <span id="sp"></span>
     </div>
  </form>
</body>
</html>