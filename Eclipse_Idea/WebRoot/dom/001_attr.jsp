<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>001操作dom节点</title>
<script type="text/javascript">
//操作元素的属性用attr方法，根据参数的不同可以用于不同的处理
   $(function(){
	  // console.log($("input").attr("type")); // 获取元素可以通过id,也可以通过class,或者直接获取标签类型也可以
	  // $("input").attr("value","文本框");// 获取标签input,给它的value属性赋值,若没有该属性，则先增加该属性
	 //用json对象设置多个属性
	  /* $("input").attr(
	 {value:111,style:"width:300px",readOnly:"readOnly"} //传递json对象进行赋多个值的操作	 
	 //readOnly设置只读的属性，不能进行写操作
	  ); */
	   
	   $("input").attr("value",function(){return 1+2;})
   });
</script>
</head>
<body>
<input type="text">
</body>
</html>