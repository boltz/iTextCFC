<!--- Example similar to the book iText in Action second edition page 18 --->

<a href="./bacon-zip.zip">View Zip File</a>
<br>
<!--- Generate some content from the meatiest Lorem Ipsum Generator ever: http://baconipsum.com --->
<cfsavecontent variable="paragraph1">
Bacon ipsum dolor sit amet prosciutto pastrami strip steak, tongue ground round salami cow. Chicken capicola short loin, pork belly chuck turducken sirloin cow tail sausage rump beef ribs ribeye. Tri-tip cow spare ribs salami. Ground round ball tip salami, corned beef t-bone filet mignon ham jerky meatloaf beef ribs short loin capicola chicken. Sausage corned beef chicken sirloin jerky. Swine pork loin boudin meatloaf pastrami brisket, jowl leberkäse prosciutto short loin bacon. Ham hock filet mignon swine brisket, salami beef ribs short ribs pancetta.
</cfsavecontent>


<!--- Set the path --->
<cfset fullPath = expandPath("./bacon-zip.zip")>

<!--- Create a file stream to write to --->
<cfset outStream = createObject("java","java.io.FileOutputStream").init(fullPath)>

<cfset zip = createObject("java","java.util.zip.ZipOutputStream").init(outStream)>
<cfset i = 1>
<cfloop condition="i LTE 3">
	<cfset tempName = "hello_" & i & ".pdf">
	<cfset entry = createObject("java","java.util.zip.ZipEntry").init(tempName)>
	<cfset zip.putNextEntry(entry)>
	<cfset document = createObject("java", "com.itextpdf.text.Document").init()>
	<cfset writer = createObject("java", "com.itextpdf.text.pdf.PdfWriter").getInstance(document, zip)>
	
	<!--- Stop iText from closing the stream --->
	<cfset writer.setCloseStream(false)>
	<cfset document.open()>
	<cfset paragraph = createObject("java", "com.itextpdf.text.Paragraph").init(paragraph1)>
	<cfset document.add(paragraph)>
	<cfset document.close()>
	<cfset zip.CloseEntry()>
	<cfset i++>
</cfloop>
<cfset zip.close()>
<br>
