<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="author" content="{{ site.meta.author.name }}" />
<meta name="keywords" content="{{ page.tags | join: ',' }}" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="ujianVerification" content="dca37b388c57273ed3f279334ef41c72" /> <!--有言-->

<title>{{ site.blog.name }}{% if page.title %} / {{ page.title }}{% endif %}</title>
<link rel="icon" href="/favicon.png" type="image/x-icon" />
<link rel="shortcut icon" href="/favicon.png" type="image/x-icon" />
<link href="http://{{ site.host }}/blog/feed.xml" rel="alternate" title="{{ site.blog.name }}" type="application/atom+xml" />
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="/assets/css/blog.css" />
<link rel="stylesheet" type="text/css" href="/assets/css/code/sunburst.css" />
{% for style in page.styles %}<link rel="stylesheet" type="text/css" href="{{ style }}" />
{% endfor %}

<style type="text/css">
/*make video frame scale by screen */
.myvideo-fluid{
	position: relative;
	border: 1px solid black;
	background:#000;
}
.myvideo-fluid embed,.myvideo-fluid div{
	position: absolute;
	width:100%;
	height: 100%;
	left:0;
	top:0;
}
.mywidescreen{
	padding-bottom: 56.25%;
}
.mynarrowscreen{
	padding-bottom:75%;
}
.myyouku{
	padding-top: 40px;
}
</style>
</head>

<body class="{{ layout.pageClass }}">

<div class="main">
	{{ content }}

	<footer>
		<p>&copy; Since 2015 <a href="http://www.cuicui.info/">cuicui.info</a></p>
	</footer>
</div>

<aside>
	<h2><a href="/"><i class="fa fa-home"></i></a> / <a href="/blog/">{{ site.blog.name }}</a><a href="/blog/feed.xml" class="feed-link" title="Subscribe"><i class="fa fa-rss-square"></i></a></h2>
	<nav class="block">
		<ul>
		{% for category in site.custom.categories %}<li class="{{ category.name }}"><a href="/blog/category/{{ category.name }}/">{{ category.title }}</a></li>
		{% endfor %}
		</ul>
	</nav>
	
	<form action="/search/" class="block block-search">
		<h3>搜索</h3>
		<p><input type="search" name="q" placeholder="输入关键词按回车搜索" /></p>
	</form>
	
	<div class="block block-about">
		<h3>关于我</h3>
		<figure>
			<img src="/images/portrait.png" width="42" height="55"/>
			<figcaption><strong>{{ site.meta.author.name }}</strong></figcaption>
		</figure>
		<p>2015年毕业于华南农业大学，热爱影视策划、视频编辑</p>
	</div>
	
	<div class="block block-license">
		<h3>版权申明</h3>
		<p><a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/2.5/cn/" target="_blank" class="hide-target-icon" title="Thanks yanjunyi"><img alt="知识共享许可协议" src="http://i.creativecommons.org/l/by-nc-nd/2.5/cn/88x31.png" /></a></p>
	</div>
	
	<div class="block block-thank">
		<h3>Powered by</h3>
		<p>
			<a href="http://disqus.com/" target="_blank" title="云评论服务">Disqus</a>,
			<a href="http://elfjs.com/" target="_blank">elf+js</a>,
			<a href="https://github.com/" target="_blank">GitHub</a>,
			<a href="http://www.google.com/cse/" target="_blank" title="自定义站内搜索">Google Custom Search</a>,
			<a href="http://en.gravatar.com/" target="_blank" title="统一头像标识服务">Gravatar</a>,
			<a href="http://softwaremaniacs.org/soft/highlight/en/">HighlightJS</a>,
			<a href="https://github.com/mojombo/jekyll" target="_blank">jekyll</a>,
			<a href="https://github.com/mytharcher/SimpleGray" target="_blank">SimpleGray</a>
		</p>
	</div>
</aside>

<script type="text/javascript" src="http://elfjs.qiniudn.com/code/elf-0.5.0.min.js"></script>
<script src="http://yandex.st/highlightjs/7.3/highlight.min.js"></script>
<script src="/assets/js/site.js"></script>
{% for script in page.scripts %}<script src="{{ script }}"></script>
{% endfor %}
<script src="/javascripts/jquery.min.js"></script>
<script src="/javascripts/jquery.scrollLoading.js"></script>
<script src="/javascripts/video.js"></script>
<script>
site.URL_GOOGLE_API = '{{site.meta.gapi}}';
site.URL_DISCUS_COMMENT = '{{ site.meta.author.disqus }}' ? 'http://{{ site.meta.author.disqus }}.{{ site.meta.disqus }}' : '';

site.VAR_SITE_NAME = '{{ site.blog.name }}';
site.VAR_GOOGLE_CUSTOM_SEARCH_ID = '{{ site.meta.author.gcse }}';
site.TPL_SEARCH_TITLE = '#{0} / 搜索：#{1}';
site.VAR_AUTO_LOAD_ON_SCROLL = {{ site.custom.scrollingLoadCount }};
</script>
{% include baidu-stats.tpl %}
</body>
</html>
