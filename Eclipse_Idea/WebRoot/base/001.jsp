<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>div标签的使用</title>
<style type="text/css">
   	.divFrame{width:260px;broder:solid 1px #666; font-size:10pt}
   	.divTitle{background-color:#eee;padding:5px}
   	.divContent{padding:5px;display:none}
   	.divCurrentColor{background-color:red;}
</style>
<script type="text/javascript">
    jQuery(function(){//$符号和jQuery都是可以混用的，不过注意的是Q是大写
    	$(".divTitle").click(function(){//使用jQuery里面的类选择器
    		//选择到当前类divTitle,给其增加一个css样式,在选中下面一个类,修改里面的css样式
    		$(this).addClass("divCurrentColor").next(".divContent").css("display","block");
    	//选中一个类的写法是.类名，因为上面已经写了.divTitle,所以addClass里面直接添加divCurrentColor类就行了
    	});   	
    });
</script>
</head>
<body>
<div class="divFrame">
  <div class="divTitle">主题</div>
  <div class="divContent">
  <a href="http://www.baidu.com">href1</a>
  <a href="#">href2</a>
  <a href="#">href3</a>
  </div>
</div>
</body>
</html>