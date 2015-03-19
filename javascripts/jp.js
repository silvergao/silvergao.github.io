var baseurl = "../../../../../../"
var rawurl = "https://github.com/silvergao/silvergao.github.io/raw/master/"
var tagname = "jplayer"
//var initInstance = false;
$(document).ready(function() { 
    //if (initInstance) return;
    //initInstance = true;
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
                   initPlayer($("#jquery_jplayer_1").get(i));
               }
		   },
		   error: function(){
				alert("Origin null is not allowed by Access-Control-Allow-Origin.\n 浏览器安全等级不允许本地Ajax操作文件 \n 请使用Sogou兼容模式,FireFox 或 IE 9预览");
		   }
		});


    var initPlayer = function(obj) {
        $(obj).jPlayer({
            ready: function () {
                $(this).jPlayer("setMedia", {
                    title: $(tagname).attr("title"),
                    mp4: rawurl + $(tagname).attr("url"),
                    m4v: rawurl + $(tagname).attr("url"),
                    poster: baseurl + $(tagname).attr("poster")
                });
            },
            play: function() { // To avoid multiple jPlayers playing together.
                $(this).jPlayer("pauseOthers");
            },
            swfPath: baseurl + "javascripts/jplayer/dist/jplayer",
            supplied: "mp4, m4v",
            globalVolume: true,
            useStateClassSkin: true,
            autoBlur: false,
            smoothPlayBar: true,
            keyEnabled: true,
            solution: "html, flash"
        });
	$(obj).jPlayer({
            ready: function () {
                $(this).jPlayer("setMedia", {
                    title: $(tagname).attr("title"),
                    mp4: baseurl + $(tagname).attr("url"),
                    poster: baseurl + $(tagname).attr("poster")
                });
            },
            play: function() { // To avoid multiple jPlayers playing together.
                $(this).jPlayer("pauseOthers");
            },
            swfPath: baseurl + "javascripts/jplayer/dist/jplayer",
            supplied: "mp4",
            globalVolume: true,
            useStateClassSkin: true,
            autoBlur: false,
            smoothPlayBar: true,
            keyEnabled: true,
            solution: "html, flash"
        });
    };

});
