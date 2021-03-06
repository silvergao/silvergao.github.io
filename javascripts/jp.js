var baseurl = "../../../../../../"
var rawurl = "https://github.com/silvergao/silvergao.github.io/raw/master/"
var tagname = "jplayer"
$(document).ready(function() { 
    $.ajax({
		   type: "GET",
		   url: baseurl + "javascripts/jp.html",
		   dataType: "html",
		   success: function(data){
               var objs = $(tagname);
               if (objs.size() <= 0)
                    return;
               for (var i in objs) {
                   $(objs.get(i)).append(data);
                   initPlayer($("#jquery_jplayer_1").get(i), objs.get(i));
		   initVideoSrc($("#video-src").get(i), objs.get(i));
               }
		   },
		   error: function(){
				alert("Origin null is not allowed by Access-Control-Allow-Origin.\n 浏览器安全等级不允许本地Ajax操作文件 \n 请使用Sogou兼容模式,FireFox 或 IE 9预览");
		   }
		});


    var initPlayer = function(obj, jp) {
        $(obj).jPlayer({
            ready: function () {
                $(this).jPlayer("setMedia", {
                    title: $(jp).attr("title"),
                    m4v: rawurl + $(jp).attr("url"),
                    poster: baseurl + $(jp).attr("poster")
                });
            },
            play: function() { // To avoid multiple jPlayers playing together.
                $(this).jPlayer("pauseOthers");
            },
            swfPath: baseurl + "javascripts/jplayer/dist/jplayer",
            supplied: "m4v",
            globalVolume: true,
            useStateClassSkin: true,
            autoBlur: false,
            smoothPlayBar: true,
	    keyEnabled: true,
	    size: {
		width: "100%",
		height: "360px",
		cssClass: "jp-video-360p"
	    },
            solution: "html, flash"
        });
    };

    var initVideoSrc = function(obj, jp) {
	$(obj).append("如果无法观看视频, 请点击<a href=\"" + baseurl + $(jp).attr("url") +"\">在线观看</a>" +
	"(或点击<a href=\"" + rawurl + $(jp).attr("url") +"\">下载</a>)");
    };

});
