<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>子元素过滤选择器的demo</title>
<style type="text/css">
   body{font-size:12px;text-align:center;}
   #tbStu{width:260px;border:solid 1px #666;}
   #tbStu tr{line-height:23px;}
  
  #tbStu .trOdd{background-color:blue;}
</style>
<script type="text/javascript">
//#tbStu tr th{background-color:#ccc; color:#fff;}  
  /*
  window.onload=function(){ //window.onload页面加载完之后开始调用方法
	  var tb=document.getElementById("tbStu");//取到table,
      var len=tb.rows;//计算table里面的所有的行
      console.info(len); //输出结果为5
      for(var i=0;i<len.length;i++){
    	  if(i%2==0){
    		  tb.rows[i].className="trOdd";
    	  }
      }
  }
  */
   $(function(){
	   $("#tbStu tr:nth-child(odd)").addClass("trOdd");//使用子元素过滤选择器的话，索引是从1开始
	 // $("#tbStu tr:odd").addClass("trOdd");
   });
</script>
</head>
<body>
<table id="tbStu" cellpadding="0" cellspacing="0">
<tbody>
  <tr>
  <th>学号</th><th>姓名</th><th>性别</th><th>总分</th>
  </tr>
  <!-- 偶数行 -->
  <tr>
    <td>1001</td><td>小K</td><td>男</td><td>340</td>
  </tr>
   <!-- 奇数行 -->
  <tr>
    <td>1002</td><td>小T</td><td>女</td><td>350</td>
  </tr>
  <tr>
    <td>1003</td><td>小U</td><td>女</td><td>340</td>
  </tr>
  <tr>
    <td>1004</td><td>小L</td><td>男</td><td>350</td>
  </tr>
</tbody>
</table>
</body>
</html>