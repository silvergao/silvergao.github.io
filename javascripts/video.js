var tagname = "tcvideo"
var data1 = '<div class="myvideo-fluid mywidescreen myyouku"><div><iframe class="video_iframe" style="z-index:1;" src="'
var data2 = '" allowfullscreen="" frameborder="0" width="100%" height="100%"></iframe></div></div>'
$(document).ready(function() {
	//这种用法，tag必须按照html5规则：<tag></tag> 而不是 <tag />，否则下面的代码和预想的不一样！！
	$(tagname).each(function(i,val){
		console.log(i);
		console.log(val);
		var src = $(val).attr("src") + "&auto=0"
		console.log(src);
		$(val).replaceWith(data1 + src + data2);
		console.log($(val));
	});
	
    var initVideoSrc = function(obj, jp) {
	$(obj).append("如果无法观看视频, 请点击<a href=\"" + baseurl + $(jp).attr("url") +"\">在线观看</a>" +
	"(或点击<a href=\"" + rawurl + $(jp).attr("url") +"\">下载</a>)");
    };

});
