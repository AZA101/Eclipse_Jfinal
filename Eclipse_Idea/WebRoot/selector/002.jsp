<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>层次选择器</title>
<style type="text/css">
 body{font-size:12px;text-align:center;}
 div,span{display:none;float:left; border:solid 1px #ccc;margin:8px;}
 .clsA{width:65px;height:65px}
 .clsP{width:45px;height:45px;background-color:#eee}
 .clsC{width:25px;height:25px;background-color:#ddd}
</style>
<script type="text/javascript">
   $(function(){
	   //匹配所有的后代元素
	  //$("#divMid").css('display','block');
	  // $("div span").css('display','block');
	   //匹配子元素
	   //$("#divMid").css('display','block');//父层的必须要显示
	   //$("div>span").css('display','block');//永远只匹配一层
	   //匹配后面的元素
	   //$("#divMid+span").css('display','block');//指定id为divMid的紧邻的下一个元素名称必须为span的元素
	   //$("#divMid").next().css('display','block');//显示id为divMid的下一个元素
	   
	  //  $("#divMid~div").css('display','block');//显示id为divMid的后面的所有名称为div的元素
	  // $("#divMid").nextAll().css('display','block');//显示id为divMid的后面的所有的元素
	  //匹配所有的兄弟元素
	  $("#divMid").siblings("div,span").css('display','block');
	  //匹配所有的兄弟元素包括该元素的上下位置
   });
</script>
</head>
<body>
  <div class="clsA">left</div>
  <div class="clsA" id="divMid">
    <span class="clsP" id="span1">
    <span class="clsC" id="span2"></span>
    </span>
  </div>
  <span class="clsA">Right_1</span>
  <div class="clsA">Right_2</div>
  <div class="clsA">Right_3</div>
</body>
</html>