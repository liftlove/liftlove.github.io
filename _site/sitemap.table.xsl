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
    <link rel="canonical" href="http://localhost:4000/sitemap.table.xsl">
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
						<table class="ui selectable collapsing striped table">
	<thead>
		<th>
			<div>連結</div>
		</th>
		<th align="right">
			<div>最近更新</div>
		</th>
		<th align="right">
			<div>更新頻率</div>
		</th>
	</thead>
	<tbody>
		<xsl:variable name="lower" select="'abcdefghijklmnopqrstuvwxyz'" />
		<xsl:variable name="upper" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
		<xsl:for-each select="sitemap:urlset/sitemap:url">
		<tr>
			<xsl:if test="position() mod 2 != 0">
				<xsl:attribute name="class">row-odd</xsl:attribute>
			</xsl:if>
			<xsl:if test="position() mod 2 != 1">
				<xsl:attribute name="class">row-even</xsl:attribute>
			</xsl:if>
			<xsl:variable name="item_url">
				<xsl:value-of select="sitemap:loc" />
			</xsl:variable>
			<td align="center">
				<div class="ui action input">
					<input type="text" value="{$item_url}" readonly="readonly" />
					<a class="ui blue icon button" href="{$item_url}" title="{$item_url}" target="_blank">
						<i class="content icon"></i>
					</a>
				</div>
			</td>
			<td align="right">
				<div>
					<xsl:value-of select="concat(substring(sitemap:lastmod,0,11),concat(' ', substring(sitemap:lastmod,12,5)))" />
				</div>
			</td>
			<td align="right">
				<div>
					<xsl:value-of select="concat(translate(substring(sitemap:changefreq, 1, 1),concat($lower, $upper),concat($upper, $lower)),substring(sitemap:changefreq, 2))" />
				</div>
			</td>
		</tr>
		</xsl:for-each>
	</tbody>
</table>

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
