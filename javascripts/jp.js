$(document).ready(function() {
    $.ajax({
		   type: "GET",
		   url: "../../../../../../javascripts/jp.html",
		   dataType: "html",
		   success: function(data){
               var objs = $("jplayer");
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
                    title: "Big Buck Bunny Trailer",
                    mp4: "./video/tt.mp4",
                    flv: "https://github.com/kzjkaila/kzjkaila.github.io/raw/master/jplayer/video/tt.mp4",
                    poster: "http://www.jplayer.org/video/poster/Big_Buck_Bunny_Trailer_480x270.png"
                });
            },
            play: function() { // To avoid multiple jPlayers playing together.
                $(this).jPlayer("pauseOthers");
            },
            swfPath: "./dist/jplayer",
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
