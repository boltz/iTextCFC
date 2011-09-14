<cfpdf action="merge" package="true" overwrite="yes" 
			   destination="./PDFPortfolio/myPortfolio.pdf" >
			   <cfpdfparam source="./PDFPortfolio/skands beer.docx"/>  
			   <cfpdfparam source="./PDFPortfolio/beer_bottle.jpg"/>
			   <cfpdfparam source="./PDFPortfolio/zen and the art of beer.pdf"/>
		</cfpdf>

<cflocation url="../index.cfm##9">