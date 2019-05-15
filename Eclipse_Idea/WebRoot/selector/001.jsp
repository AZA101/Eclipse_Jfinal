<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>基本选择器</title>
<!-- 边框粗细为2px、样式为实心的、颜色为红色的边框-->
<style type="text/css">
  body{font-size:12px;text-align:center;}
  .clsFrame{width:300px;height:100px;}
  .clsFrame div,span{display:none;float:left;width:65px;height:65px;border:solid 1px #ccc;margin:8px;}
  .clsOne{background-color:#eee}
</style>
<script type="text/javascript">
       
     $(function(){     	
    	//id匹配元素
//     	$(function(){
//     		$("#divOne").css("display","block");
//     	});
    	//名称匹配元素
    	$(function(){
    		/*  传统的js操作dom
    		var str=document.getElementsByTagName("span");//取到页面中所有的span标签
    		//var $arr=[];//建立数组
    		for(var i=0;i<str.length;i++){
    			str[i].style.display='block';
    		   $(str[i]).css('display','block');//直接将接收到元素显示出来   			
    		}
    		$arr.css('display','block');//不需要存入数组再操作
    		*/
    	   //$("span").css('display','block');	
    	});
    	//类匹配元素
//     	$(function(){
//     		$(".clsOne").css('display','block');   		
//     	});
    	//匹配所有的元素
//     	$(function(){
//     		$("*").css('display','block');
//     	});
    	//合并匹配元素
    	$(function(){
    	//	$("#divOne,.clsOne").css('display','block');// 并列关系
        	$('.clsFrame span').css('display','block')// 包含选择器
    	//	$('span').css('display','block');
    	});
    	
    });
</script>
</head>
<body>
  <div class="clsFrame">
    <div id="divOne">ID</div>
    <div class="clsOne">CLASS</div>
    <span>SPAN</span>
  </div>
  <span style="display:none;">111</span>
</body>
</html>