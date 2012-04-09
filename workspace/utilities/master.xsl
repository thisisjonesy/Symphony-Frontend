<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="page-title.xsl"/>
<xsl:import href="navigation.xsl"/>
<xsl:import href="date-time.xsl"/>

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:variable name="is-logged-in" select="/data/events/login-info/@logged-in"/>

<xsl:template match="/">

	<xsl:comment><![CDATA[[if lt IE 7]><html lang="en" class="no-js ie6"><![endif]]]></xsl:comment>
	<xsl:comment><![CDATA[[if IE 7]><html lang="en" class="no-js ie7"><![endif]]]></xsl:comment>
	<xsl:comment><![CDATA[[if IE 8]><html lang="en" class="no-js ie8"><![endif]]]></xsl:comment>
	<xsl:comment><![CDATA[[if IE 9]><html lang="en" class="no-js ie9"><![endif]]]></xsl:comment>
	<xsl:comment><![CDATA[[if IE]><![if (gt IE 9)|!(IE)]><![endif]]]></xsl:comment><html lang="en" class="no-js">
	<xsl:comment><![CDATA[[if IE]><![endif]><![endif]]]></xsl:comment>
	<head>
		<title>
			<xsl:call-template name="page-title"/>
		</title>
		
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		
		<link rel="icon" type="images/png" href="{$workspace}/images/icons/bookmark.png" />
		<link rel="stylesheet" type="text/css" media="screen" href="{$workspace}/css/base.css?v=1" />
		<link rel="stylesheet" type="text/css" media="screen" href="{$workspace}/css/styles.css?v=1" />
		<link rel="alternate" type="application/rss+xml" href="{$root}/rss/" />
		
		<meta name="robots" content="NOODP" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<meta name="author" content="@thisisjonesyy" />
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<script src="{$workspace}/js/libs/modernizr-2.5.3.min.js"></script>
	</head>
	<body>
		<div id="masthead">
			<h1>
				<a href="{$root}"><xsl:value-of select="$website-name"/></a>
			</h1>
			<xsl:apply-templates select="data/navigation"/>
		</div>
		<div id="package">
			<p class="date">
				<xsl:call-template name="format-date">
					<xsl:with-param name="date" select="$today"/>
					<xsl:with-param name="format" select="'d'"/>
				</xsl:call-template>
				<span>
					<xsl:call-template name="format-date">
						<xsl:with-param name="date" select="$today"/>
						<xsl:with-param name="format" select="'m'"/>
					</xsl:call-template>
				</span>
			</p>
			<div id="content">
				<xsl:apply-templates/>
			</div>
		</div>
		<ul id="footer">
			<li>Orchestrated by <a class="symphony" href="http://symphony-cms.com/">Symphony</a></li>
			<li>Broadcasted via <a class="rss" href="{$root}/rss/">XML Feed</a></li>
		</ul>


		
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
		<script><![CDATA[!window.jQuery && document.write(unescape('%3Cscript src="/workspace/js/libs/jquery-1.4.2.js"%3E%3C/script%3E'))]]></script>		
		<script>
			<![CDATA[var _gaq = [['_setAccount', 'UA-XXXXX-X'], ['_trackPageview']];
				(function(d, t) {
				var g = d.createElement(t),
				s = d.getElementsByTagName(t)[0];
				g.async = true;
				g.src = ('https:' == location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				s.parentNode.insertBefore(g, s);
			})(document, 'script');]]>
		</script>
		
	</body>
</html>

</xsl:template>

</xsl:stylesheet>
