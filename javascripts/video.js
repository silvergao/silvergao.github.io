var tagname = "tcvideo"
var data1 = '<div class="myvideo-fluid mywidescreen myyouku"><div><iframe class="video_iframe" style="z-index:1;" src="'
var data2 = '" allowfullscreen="" frameborder="0" width="100%" height="100%"></iframe></div></div>'
$(document).ready(function() {
	//滚动加载
	$(tagname).scrollLoading({
		callback: function() {
			var src = $(this).attr("src") + "&auto=0";
			var newHtml = data1 + src + data2;
			$(this).replaceWith(newHtml);
			console.log("success");
		}
	});
	
	//这种用法，tag必须按照html5规则：<tag></tag> 而不是 <tag />，否则下面的代码和预想的不一样！！
	// $(tagname).each(function(i,val){
		// var src = $(val).attr("src") + "&auto=0"
		// $(val).replaceWith(data1 + src + data2);
	// });
	
});
