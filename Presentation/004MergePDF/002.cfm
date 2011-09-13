<!--- Merge with Comma delimited source attribute --->
<cfpdf action="merge" overwrite="yes" name="doc">
	<!--- This method you can use the password and pages attributes --->
	<cfpdfparam source="./Zen And Beer/zen and the art of beer_page06.pdf" password="secret" pages=1/>
	<cfpdfparam source="./Zen And Beer/zen and the art of beer_page07.pdf" pages="1"/>
	<cfpdfparam source="./Zen And Beer/zen and the art of beer_page08.pdf"/>
	<cfpdfparam source="./Zen And Beer/zen and the art of beer_page09.pdf"/>
	<cfpdfparam source="./Zen And Beer/zen and the art of beer_page10.pdf"/>	
	<!--- The order listed above determine merge order --->
</cfpdf>

<!--- Display to screen --->
<cfcontent  type="application/pdf" reset="true" variable="#ToBinary(doc)#" />
