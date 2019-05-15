$(function(){
	$("#form1").form("submit", {
		    type: 'post',
		    url: 'addFinancing',
		    onSubmit: function (param) {
			param.bdatajson = bdatajson
		    },
		    success: function (data) {}
		});
	
});