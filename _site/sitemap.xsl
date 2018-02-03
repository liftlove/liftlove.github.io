<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:html="http://www.w3.org/TR/REC-html40"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Sitemap - </title>
    <meta name="description" content="">

    <link href='https://fonts.googleapis.com/css?family=Roboto+Mono|Roboto:300,400,900,400italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="/css/main.css">
    <link rel="canonical" href="http://localhost:4000/sitemap.xsl">
    <link rel="alternate" type="application/rss+xml" title="" href="http://localhost:4000/feed.xml">
</head>


</head>
<body>

<div class="ui bottom sidebar vertical inverted sticky menu fixed">

	<div class="item"><a href="javascript:;" class="nav-btn menu-btn"><i class="angle double down icon"></i>Close</a></div>
	

	<div class="item"><a href="/sitemap.xml" class="nav-btn" title="Sitemap"><i class="sitemap icon"></i>Sitemap</a></div>

	<div class="item"><a href="" class="nav-btn" target="_blank" title="GitHub"><i class="github icon" title="Theme GitHub"></i>Theme GitHub</a></div>

	
</div>


<div class="pusher">

<header class="c-page__header">
    <h1><code></code></h1>

    
    <p>
        <a href="/">Lift Love Life</a>
    </p>
</header>


<main>
	<div class="container">

		<div class="ui stackable grid container">

			<div class="three wide column">

			</div>

			<div class="ten wide column">

				<article class="page">

				
					<header class="page-header">
						<h1 class="page-title">Sitemap</h1>
					</header>
				

					<div class="page-content">
						<div class="ui segments">

<xsl:variable name="lower" select="'abcdefghijklmnopqrstuvwxyz'" />
<xsl:variable name="upper" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
<xsl:for-each select="sitemap:urlset/sitemap:url">

	<xsl:variable name="item_url">
		<xsl:value-of select="sitemap:loc" />
	</xsl:variable>

	<div class="ui piled raised segment" >

		<div class="ui red ribbon label">
			<xsl:if test="position() mod 5 = 0">
				<xsl:attribute name="class">ui red ribbon label</xsl:attribute>
			</xsl:if>
			<xsl:if test="position() mod 5 = 1">
				<xsl:attribute name="class">ui green ribbon label</xsl:attribute>
			</xsl:if>
			<xsl:if test="position() mod 5 = 2">
				<xsl:attribute name="class">ui blue ribbon label</xsl:attribute>
			</xsl:if>
			<xsl:if test="position() mod 5 = 3">
				<xsl:attribute name="class">ui purple ribbon label</xsl:attribute>
			</xsl:if>
			<xsl:if test="position() mod 5 = 4">
				<xsl:attribute name="class">ui orange ribbon label</xsl:attribute>
			</xsl:if>
			<xsl:value-of select="concat(substring(sitemap:lastmod,0,11),concat(' ', substring(sitemap:lastmod,12,5)))" />
		</div>

		<div>
			<xsl:value-of select="concat(translate(substring(sitemap:changefreq, 1, 1),concat($lower, $upper),concat($upper, $lower)),substring(sitemap:changefreq, 2))" />
		</div>

		<div class="ui action input">
			<input type="text" value="{$item_url}" readonly="readonly" />
			<a class="ui blue icon button" href="{$item_url}" title="{$item_url}" target="_blank">
				<i class="external icon"></i>
			</a>
		</div>

	</div>
</xsl:for-each>

</div>

					</div>

				</article>

			</div>

		</div>


	</div>
</main>

<footer class="c-page__footer">
    <p>&copy;  2018</p>
    <p></p>
</footer>






</div>

</body>
</html>

</xsl:template>
</xsl:stylesheet>
