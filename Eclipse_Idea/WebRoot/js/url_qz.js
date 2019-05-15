var userid = getQueryString("userid");


function getQueryString(name){//获取url上的参数
	var reg=new RegExp('(^|&)'+name+'=([^&]*(&|$))','i');
	var re=window.location.search.substr(1).match(reg);
	if(re!=null){
		return unescape(re[2]);
	}else{
		return null;
	}
}