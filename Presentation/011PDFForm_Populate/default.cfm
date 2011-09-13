<cfpdfform action="read" source="./brewing_notes_form.pdf" result="pdfResult"/>
	
<cfdump var="#pdfResult#" abort="false" >



<cfpdfform name="myForm" action="populate" source="./brewing_notes_form.pdf" >
	<cfpdfformparam name="Grain1" value="Crystal" >
	<cfpdfformparam name="Grain2" value="Black Patent" >
	<cfpdfformparam name="Grain_lbs_1" value="1" >
	<cfpdfformparam name="Grain_lbs_2" value="2" >
	<cfpdfformparam name="Note" value="Boil over- lost 10%" >

</cfpdfform>

<cfcontent  type="application/pdf" reset="true" variable="#ToBinary(myForm)#" />








<!--

<cfpdfformparam name="Note" index=1 value="Note about this beer" >
<cfpdfformparam name="Note" index=2 value="hops give you moobs" >

-->






