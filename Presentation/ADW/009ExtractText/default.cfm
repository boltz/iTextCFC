<cfpdf action="extracttext" source="EHCache.pdf"  name="myText">

<cfheader name="Content-Type" value="text/xml">
<cfoutput>#mytext#</cfoutput>




















