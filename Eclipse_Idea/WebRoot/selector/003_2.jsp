<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>内容过滤选择器</title>
<style type="text/css">
  body{fonts-size:12px;text-align:center;}
  div{width:100px;height:100px;border:solid 1px #666;display:none}
  span{border:solid 1px #eee; width:100px;height:100px}
</style>
<script type="text/javascript">
  $(function(){
	  //$("div:contains('A')").css("display","block");//显示包含字母A的内容的元素
	  //$("div:empty").css("display","block");//显示不包含子元素和内容
	 // $("div:has(span)").css("display","block");//包含span的div显示
	  $("div:parent").css("display","block");//显示含有子元素或文本内容的元素
	  
  });
</script>
</head>
<body>
 <div>ABCD</div>
 <div><span title="aaa">AAAA</span></div>
 <div>EFaH</div>
 <div style="background-color:blue;"></div>
</body>
</html>