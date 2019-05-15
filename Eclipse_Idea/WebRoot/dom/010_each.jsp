<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>遍历元素</title>
<style type="text/css">
  .aaa{border:solid 1px red;}
  .red{color:red;}
</style>
</head>

<script type="text/javascript">
  //传统的javascript,遍历元素要获取总长度，再用for循环或者用
  //for(var i in elements),在jquery中直接用each
  //each(callback)注：callback是一个函数，该函数内部有一个形参index,此形参为遍历
  //元素的序号（index从0开始）如果需要访问属性可以通过index,配合this关键字来使用
  $(function(){
	 /*
	  $("img").each(function(index){//这里是省略了each事件里面callback函数名的书写，index就是那个形参
		  this.title="这是第"+index+"个图";//这种this的使用方式是js的方式	
		  $(this).addClass("aaa");//增加css样式
	  });
	  */
	  $('.red').each(function(count){
		  //alert($(this).val());
		  alert(this.value);
	  });
  });
  
</script>
<body>
 
<input class="red" value="111">
<input class="red" value="222">
<input class="red" value="333">

<p>
  <img alt="图一" src="WebRoot/jquery_easyui/themes/icons/clear.png">
  <img alt="图二" src="WebRoot/jquery_easyui/themes/icons/help.png">
  <img alt="图三" src="WebRoot/jquery_easyui/themes/icons/ok.png">
</p>
</body>
</html>