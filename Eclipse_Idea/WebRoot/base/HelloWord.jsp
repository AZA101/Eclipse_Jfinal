<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<!-- 因为这所建立的jsp文件是html所以在引入js文件时必须使用../的形式 -->
<title>Insert title here</title>
<script type="text/javascript">
//使用eclipse和myeclipse在建立这些jsp文件时候可以注意一下系统默认帮生成的代码还是有一些区别的
/*window.onload=function(){  //当页面加载完成之后再执行onload里面的匿名代码程序
	 var t1 =document.getElementById("t1");
	  alert(t1);
	  alert(t1.value);//可以直接取到value值
}*/
$(document).ready(function(){ //该类型有四种写法
	//$(function(){
	 //var t1 =document.getElementById("t1");//这部分是js代码，这是传统的dom来取到
	 // var $t1=$("#t1");//$t1用来区分是js对象还是jQuery对象,这种方式取出来的数据被封装为jQuery的object类型
	 //console.info($t1);//打印到控制台
	 //console.info($t1.val());//jQuery直接取到value中的具体值
	 //jQuery对象和js的dom对象转换机制
	 //var $t1=$("#t1");
	 //$t1[0];表示取到第一个元素，该object的第一个元素就是input标签
	// console.info($t1[0].value);//取出该元素的value属性的值
	// console.info($t1.get(0).value);
	 //将dom对象转换为jQuery对象
	 var t1 =document.getElementById("t1");//取到id为t1的元素
	 var $t1=$(t1);//将一整个t1元素转换
	 console.info($t1.val());
});
</script>
</head>
<body>
   <input id="t1" name="t1" value="ttt">
</body>
</html>