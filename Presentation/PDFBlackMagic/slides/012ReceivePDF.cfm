<cfdump var="#form#" label="original form">
<!--- <cfdump var="#cgi#"> --->
<cfset bytes = GetHttpRequestData().content>


<cfif findNocase("application/vnd.fdf", cgi.content_type)>
	<!--- FDF Reader--->
	<cfset reader = createObject("java", "com.lowagie.text.pdf.FdfReader").init(bytes)>
	<cfset fields = reader.getFields()>
	<cfdump var="#fields#" label="getFields()">
	<cfloop collection="#fields#" item="key">
	 <cfset value = reader.getFieldValue(key)>
	 <cfif IsDefined("value")>
	  <cfset form[ key ] = trim(value) >
	 <cfelse>
	  <cfset form[ key ] = "" >
	 </cfif>
	</cfloop>
	<cfdump var="#form#" label="form struct">
</cfif>

<cfif findNocase("application/vnd.adobe.xfdf", cgi.content_type)>
	<cfset reader = createObject("java", "com.itextpdf.text.pdf.XfdfReader").init(bytes)>
	<cfdump var="#reader#">
	<cfset fields = reader.getFields()>
	<cfdump var="#fields#" label="getFields()">
</cfif>