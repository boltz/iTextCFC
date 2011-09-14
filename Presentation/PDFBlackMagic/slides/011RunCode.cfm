<!--- Use this to determine your XML Structure --->
<cfpdfform action="read" source="./PDFForm/brewNotes.pdf" xmldata="beerXML"/>
<cfcontent type="text/xml">
<cfoutput>#toString(beerXML)#</cfoutput>

<cfabort>

<cfpdfform action="populate" source="./PDFForm/brewNotes.pdf" xmldata="./PDFForm/beer.xml"/>
	
