<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>隐藏显示切换</title>
<script type="text/javascript">
  $(function(){
	  $("#d1").click(function(){
		  $("#d1").toggle(3000,myshow,myhide);//传递一个时间值，进行两个事件的切换
		  //$("#d1").show(2000);
	  });
  });
  function myshow(){
	  $(this).show('fast');
  }
  function myhide(){    
	  $(this).hide('slow');
  }
</script>
</head>
<body>
<input id="d1" type="button" value="点击">
</body>
</html>