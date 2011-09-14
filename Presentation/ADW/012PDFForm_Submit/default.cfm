<cfpdfform action="read" source="./brew Notes Page 1.pdf" result="pdfResult"/>
	
<cfdump var="#pdfResult#" abort="false" >



<cfpdfform name="myForm" action="populate" source="../brew Notes Page 1.pdf" >
	<cfpdfformparam name="Date" value="#dateFormat(now(), "mm/dd/yyyy")#" >
</cfpdfform>

<cfcontent  type="application/pdf" reset="true" variable="#ToBinary(myForm)#" />








<!--

<cfpdfformparam name="Note" index=1 value="Note about this beer" >
<cfpdfformparam name="Note" index=2 value="hops give you moobs" >

-->






