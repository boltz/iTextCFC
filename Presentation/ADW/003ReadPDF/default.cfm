<!--- Load Physical PDF into memory as the variable Doc --->
<cfpdf action="read" name="doc" source="./Zen And Beer/zen and the art of beer_page03.pdf" >


<cfdump var="#doc#">


<!--- more below 


<cfcontent  type="application/pdf" reset="true" variable="#ToBinary(doc)#" />--->























<!---
<cfcontent  type="application/pdf" reset="true" variable="#ToBinary(doc)#" />
--->