<cfsavecontent variable="myHTML" >
	<cfinclude template="aircraftApp.html" > 
</cfsavecontent>

<cfdocument format="PDF" localurl="true" marginbottom=".25" marginleft=".25" margintop=".25" pagetype="letter" scale="100" >
	<cfoutput>#myHTML#</cfoutput>
</cfdocument>