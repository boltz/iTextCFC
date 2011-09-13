<cfpdf action="read" name="myPDf" source="C:\inetpub\wwwroot\Presentations\ColdFusionPDF\EHCache.pdf" > 

<cfpdf action="extractimage" source="C:\inetpub\wwwroot\Presentations\ColdFusionPDF\EHCache.pdf" destination="./images"   
	   overwrite="true" >
	      
<cfoutput>Done! #now()#</cfoutput>