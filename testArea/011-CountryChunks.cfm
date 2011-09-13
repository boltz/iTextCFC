
<!--- Example similar to the book iText in Action second edition page 23 Listing 2.2 the
		loverly named CountryChunks.java (Is this what happens when a country drinks too much?
		I am looking at you Germany!) --->
		
<a href="./Director-phrases.pdf">View PDF</a>
<br>

<!--- Set the path --->
<cfset fullPath = expandPath("./director-phrases.pdf")>
<cfset document = createObject("java", "com.itextpdf.text.Document").init()>
<cfset baos = createObject("java", "java.io.ByteArrayOutputStream").init()>
<cfset baseFont = createObject("java", "com.itextpdf.text.pdf.BaseFont")> 
<cfset baseColor = createObject("java", "com.itextpdf.text.BaseColor")> 
<cfset white = basecolor.white>
<cfset x = javacast("float",12 )>

<cfset font = createObject("java", "com.itextpdf.text.Font").init()> 
<cfset font.setSize(x)>
<cfset font.setColor(baseColor.orange)>
<cfset font.setFamily(baseFont.TIMES_ROMAN)>
<cfset font.setStyle(font.Bold)>

<cfdump var="#baseFont#">
<cfdump var="#font#">
<cfdump var="#baseColor.white#" abort=false>

<!--- NOTE: We are setting the initial Leading --->
<cfset writer = createObject("java", "com.itextpdf.text.pdf.PdfWriter").getInstance(document, baos).setInitialLeading(16)>
<cfset document.open()>

<!--- You must have set up the datasource as noted in 010-createDerbyDB.cfm --->
<cfquery name="rs" datasource="Movies" >
	SELECT country, id
	FROM film_country 
	ORDER BY country
</cfquery>
<cfset x1 = javacast("float",1)>
<cfset x2 = javacast("float",0.5)>
<cfset x3 = javacast("float",1)>
<cfset x4 = javacast("float",1.5)>
<cfdump var="#baseColor.WHITE#">
<cfloop query="rs">
	<cfset thisFont = createObject("java", "com.itextpdf.text.Font").init()> 
	<cfset thisFont.setSize(x)>
	<cfset thisFont.setColor(baseColor.BLUE)>
	<cfset thisFont.setFamily(baseFont.TIMES_ROMAN)>
	<cfset thisFont.setStyle(font.Bold)>
	<cfset chunk = createObject("java", "com.itextpdf.text.Chunk").init("#rs.country#", thisFont)>
	<cfset document.add(chunk)>
	<cfset chunk = createObject("java", "com.itextpdf.text.Chunk").init(" ")>
	<cfset document.add(chunk)>
	
	<!--- FIXME: I think the baseColor.WHITE is jacking this up --->
	<cfset thisFont = createObject("java", "com.itextpdf.text.Font").init()> 
	<cfset thisFont.setSize(x)>
	<cfset thisFont.setColor(baseColor.WHITE)>
	<cfset thisFont.setFamily(baseFont.TIMES_ROMAN)>
	<cfset thisFont.setStyle(font.Bold)>
	<cfset chunk = createObject("java", "com.itextpdf.text.Chunk").init("#rs.id#", thisFont)>
	<cfset chunk.setBackground(baseColor.black, x1, x2,x3,x4)>
	<cfset chunk.setTextrise(6)>
	<cfset document.add(chunk)>
	<cfset document.add(Chunk.NEWLINE)>
</cfloop>
<!--- Close the PDF Document --->
<cfset document.close()>

<!--- Create a file stream to write to --->
<cfset fos = createObject("java","java.io.FileOutputStream").init(fullPath)>

<!--- Get Bytes and write them --->
<cfset fos.write(baos.toByteArray())>
<!--- Close the physical File --->
<cfset fos.close()>
<br>

