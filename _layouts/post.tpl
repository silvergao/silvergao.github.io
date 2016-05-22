---
layout: blog

pageClass: page-type-post
---

<div class="trace">/ <a href="/blog/">{{ site.blog.name }}</a> / {{ page.title }}</div>

<article>
	<h1><a href="{{ page.url }}">{{ page.title }}</a></h1>
	{% assign post = page %}
	{{ content }}
	{% capture permaurl %}http://{{site.host}}{{ page.url }}{% endcapture %}
	<!--<p class="permalink">永久链接：<a href="{{ permaurl }}">{{ permaurl }}</a></p>-->
</article>

<div id="disqus_thread" class="comments"></div>

<!--include was failed，so embed it here-->
{% include youyan.tpl %}
<!-- UJian Button BEGIN -->
<div class="ujian-hook"></div>
<script type="text/javascript">var ujian_config = {num:8,picSize:32,textHeight:45};</script>
<script type="text/javascript" src="http://v1.ujian.cc/code/ujian.js?uid=2010749"></script>
<a href="http://www.ujian.cc" style="border:0;"><img src="http://img.ujian.cc/pixel.png" alt="友荐云推荐" style="border:0;padding:0;margin:0;" /></a>
<!-- UJian Button END -->

<!-- JIATHIS -->
<!-- JiaThis Button BEGIN -->
<div class="jiathis_style_24x24">
    <a class="jiathis_button_qzone"></a>
    <a class="jiathis_button_tsina"></a>
    <a class="jiathis_button_tqq"></a>
    <a class="jiathis_button_weixin"></a>
    <a class="jiathis_button_renren"></a>
    <a href="http://www.jiathis.com/share?uid=2010749" class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"></a>
    <a class="jiathis_counter_style"></a>
</div>
<script type="text/javascript">
    var jiathis_config = {data_track_clickback:'true'};
</script>
<script type="text/javascript" src="http://v3.jiathis.com/code/jia.js?uid=1393947171046282" charset="utf-8"></script>
<!-- JiaThis Button END -->
<!-- JIATHIS -->

<!-- UY BEGIN -->
<div id="uyan_frame"></div>
<script type="text/javascript" src="http://v2.uyan.cc/code/uyan.js?uid=2010749"></script>
<!-- UY END -->


<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-7231324007393765"
     data-ad-slot="7629180734"
     data-ad-format="auto"></ins>

<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>