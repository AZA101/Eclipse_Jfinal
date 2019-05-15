<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>jquery插入内部节点或者外部节点</title>
</head>
<script type="text/javascript">
  $(function(){
	  //内部插入  append追加内容到其中
	//  $("#d1").append(retHtml);//在jquery中追加的是一个函数，那么该函数必须要有返回值
     //appendTo被追加到其中
    // $("<span> Span</span>").appendTo("#d1");
	//$("#d1").before(retHtml); //在标签内容值前面增加内容  
	// $("#d1").after(retHtml);
	  $(retHtml()).insertBefore("#p1");//只能传递字符串，不能传递函数
	  $(retHtml()).insertAfter("#p1");//只能传递字符串，不能传递函数
  });
  function retHtml(){
	  var str="<p>Write less Do More</p>";
	  return str;
  }
</script>
<body>
  <p id="p1">ppp</p>
  <div id="d1" style="border: solid 1px #666">jquery</div>
</body>
</html>