var tagname = "tcvideo"
var data1 = '<div class="myvideo-fluid mywidescreen myyouku"><div><iframe class="video_iframe" style="z-index:1;" src="'
var data2 = '" allowfullscreen="" frameborder="0" width="100%" height="100%"></iframe></div></div>'
$(document).ready(function() {

	$(tagname).each(function(i,val){
		console.log(i);
		console.log(val);
		var src = $(val).attr("src") + "&auto=0"
		$(val).replaceWith(data1 + src + data2);   
	});
	
    var initVideoSrc = function(obj, jp) {
	$(obj).append("如果无法观看视频, 请点击<a href=\"" + baseurl + $(jp).attr("url") +"\">在线观看</a>" +
	"(或点击<a href=\"" + rawurl + $(jp).attr("url") +"\">下载</a>)");
    };

});
