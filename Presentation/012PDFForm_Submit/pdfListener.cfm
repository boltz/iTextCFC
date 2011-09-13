<cfdump var="#form#">




<cfpdfform name="myForm" action="populate" source="./brew Notes Page 1.pdf" >
	<cfpdfformparam name="Date" value="#dateFormat(now(), "mm/dd/yyyy")#" >
	<cfloop list="#fieldNames#" index="field">
		<cfpdfformparam name="#field#" value="#form[field]#" >
	</cfloop>
</cfpdfform>

<cfpdf action="write" flatten="yes" destination="./temp.pdf" source="myForm" overwrite="yes">
<cfpdf action="read" source="./temp.pdf" name="myForm" >
<cfpdf action="merge" source="./temp.pdf,./brew Notes Page 2.pdf" name="myform">


<cfcontent  type="application/pdf" reset="true" variable="#ToBinary(myForm)#" />

