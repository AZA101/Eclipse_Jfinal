<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>表单过滤选择器</title>
<style type="text/css">
  body{font-size:12px;text-align:center;}
  div{border:solid 1px #ccc;background-color:#eee;padding:5px}
  textarea,select,button,input,span{display:none;}
  .red{color:red;}
</style>
<script type="text/javascript">
//表单过滤选择器就是根据type类型去过滤表单中的一些元素

  $(function(){
	  //$("#divShow").html("表单共找出input类型元素"+$("#form1 :input").length+"个");
	  //先要取到一个大的标签对象
	  
	  $("#form1 select").show(1000);   // :input过滤条件是包含所有的input textarea和select的
 	  $("#form1 textarea").show(1000);  //在过滤选择器中是不能单个的过滤select和textarea的


   //下面的这几种是表单过滤选择器中提供的过滤条件
	  $("#form1 :text").show(1000);
	  $("#form1 :password").show(1000);
	  $("#form1 :radio").show(1000);
	  $("#form1 :checkbox").show(1000);
	  $("#form1 :submit").show(1000);
	  $("#form1 :image").show(1000);
	  $("#form1 :reset").show(1000);
	  $("#form1 :file").show(1000);	 
	 
  });
</script>
</head>
<body>
   <form action="" id="form1" style="width:241px">
     <textarea rows="" cols="">TextArea</textarea>
     <select><option value="0">Item 0</option></select>
     <input type="text"value="text"/>
     <input type="password"value="1234"/>
     <input type="radio"value="1"/>
     <input type="checkbox"value="1"/>
     <input type="submit"value="提交"/>
     <input type="reset"value="重置"/>
     <input type="image"title="image"/>
     <input type="button"value="按钮"/>
     <input type="file"value="文件域"/>
     <span id="sp">span</span>
     <div id="divShow"></div>
   </form>
</body>
</html>