---
layout: blog

pageClass: page-type-post
---

<div class="trace">/ <a href="/blog/">{{ site.blog.name }}</a> / {{ page.title }}</div>

<article>
	<h1><a href="{{ page.url }}">{{ page.title }}</a></h1>
	{% assign post = page %}
	<!-- 删除这里，以便禁用预览导致滚动加载的内容往回滚时丢失问题！include meta.tpl -->
	{{ content }}
	{% capture permaurl %}http://{{site.host}}{{ page.url }}{% endcapture %}
	<!--<p class="permalink">永久链接：<a href="{{ permaurl }}">{{ permaurl }}</a></p>-->
</article>

<div class="youyan">
{% include youyan.html %}
</div>

<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-7231324007393765"
     data-ad-slot="7629180734"
     data-ad-format="auto"></ins>
	 
<script src="/javascripts/jquery.min.js"></script>
<script src="/javascripts/jquery.scrollLoading.js"></script>
<script src="/javascripts/video.js"></script>
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>