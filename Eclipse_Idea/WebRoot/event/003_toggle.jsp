<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<title>jqeury toggle事件</title>
<script type="text/javascript">
  $(function(){
	  $("#photo").toggle(function(){
	      $("#photo").attr("src","WebRoot/event/photo/001.gif");
	    },
	    function(){
	    	$("#photo").attr("src","WebRoot/event/photo/002.gif");
	    },
	    function(){
	    	$("#photo").attr("src","WebRoot/event/photo/003.gif");
	  });
  });
</script>
</head>
<body>
  <div id="d1" style="width:200px;height:100px;border:solid 1px #eee"> 
      <img id="photo"></img>
  </div>
</body>
</html>