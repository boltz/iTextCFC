<cfset tab = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;">
<cfoutput>
<div class="slide">
	<h2>PDF Portfolios</h2>
	<p>
		<br>Think PDF Zip File
		<br><br>Embed multiple file types embed them in PDF Portfolio.
		<br><br>
		&lt;cfpdf action="merge" package="true" overwrite="yes" destination="./slides/PDFPortfolio/myPortfolio.pdf" ><br>
			 #tab#&lt;cfpdfparam source="./slides/PDFPortfolio/skands beer.docx"/><br>  
			   #tab#&lt;cfpdfparam source="./slides/PDFPortfolio/beer_bottle.jpg"/><br>
			   #tab#&lt;cfpdfparam source="./slides/PDFPortfolio/zen and the art of beer.pdf"/><br>
		&lt;/cfpdf><br>
		<br>
		<a href="./slides/008 run code.cfm">Run this code</a>
					      
			
	</p>
</div>
</cfoutput>