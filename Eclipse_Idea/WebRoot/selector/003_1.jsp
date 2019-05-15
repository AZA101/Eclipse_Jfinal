<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>基本过滤选择器</title>
<!-- ul中不要样式-->
<style type="text/css">
  body{font-size:12px;text-align:center;}
  div{width:241px;height:83px;border:solid 1px #eee}
  h1{font-size:13px}
  ul{list-style-type:none;padding:0px} 
  .DefClass,.NotClass{height:23px;width:60px;line-height:23px;float:left;
                    border-top:solid 1px #eee;border-bottom:solid 1px #eee}
   .GetFocus{width:58px;border:solid 1px #666;backgroud-color:#eee}
   #spMove{width:238px;height:23px;line-height:23px}
</style>
<script type="text/javascript">
// 过滤选择器必须写：冒号中间是不能有空格的
  $(function(){
	 //$("li:first").addClass("GetFocus");//第一元素添加类样式
	  //$("li:last").addClass("GetFocus");//最后一个元素添加类样式
	 // $("li:not(.NotClass)").addClass("GetFocus");//增加所有与给定选择器不匹配的元素类别
	 // $("li:even").addClass("GetFocus");// 索引为偶数的增加类样式（索引index从0开始）
	  $("li:odd").addClass("GetFocus");//索引为奇数的增加类样式
	 //  $("li:eq(1)").addClass("GetFocus"); //索引为1的增加样式
	 // $("li:gt(1)").addClass("GetFocus");// 索引大于1的增加样式
	  // $("li:lt(2)").addClass("GetFocus");//索引小于2的增加样式
	  //$(":header").addClass("GetFocus");//增加标题标题类型样式
	  //$("div h1").css("width","238"); //可以在原来增加的样式上重新修改里面的属性值
	  animateIt();	 //根据jQuery的从上往下的执行顺序调用方法	  
	  $("span:animated").addClass("GetFocus");//正在执行动画效果的span增加样式 
  });
  function animateIt(){
	  $("#spMove").slideToggle(1000,arguments.callee);
	  //slideToggle是上下来回滑动的意思，arguments.callee是调用自己	
  }
</script>
</head>
<body>
<div>
<h1>基本过滤选择器</h1>
<ul>
   <li class="DefClass">Item 0</li>
   <li class="DefClass">Item 1</li>
   <li class="NotClass">Item 2</li>
   <li class="DefClass">Item 3</li>
</ul>
<span>这是一个span</span>
<span id="spMove">Span Move</span>
</div>
</body>
</html>