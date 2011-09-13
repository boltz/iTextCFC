
<a href="./director-Phrases.pdf">View PDF</a>
<br>
<cfset baseColor = createObject("java", "com.itextpdf.text.BaseColor")> 
<cfset baseFont = createObject("java", "com.itextpdf.text.pdf.BaseFont")> 
<cfset x = javacast("float",12 )>
<cfset Bold_UnderLined = createObject("java", "com.itextpdf.text.Font").init()> 
<cfset Bold_UnderLined.setSize(x)>
<cfset Bold_UnderLined.setColor(baseColor.orange)>
<cfset Bold_UnderLined.setFamily(baseFont.TIMES_ROMAN)>
<cfset Bold_UnderLined.setStyle(Bold_UnderLined.Bold)>
<cfset Bold_UnderLined.setStyle(Bold_UnderLined.UnderLine)>

<cfset Normal = createObject("java", "com.itextpdf.text.Font").init()> 
<cfset Normal.setSize(x)>
<cfset Normal.setFamily(baseFont.TIMES_ROMAN)>

<!--- Set the path --->
<cfset fullPath = expandPath("./director-Phrases.pdf")>
<cfset document = createObject("java", "com.itextpdf.text.Document").init()>
<cfset outStream = createObject("java","java.io.FileOutputStream").init(fullPath)>
<cfset writer = createObject("java", "com.itextpdf.text.pdf.PdfWriter").getInstance(document, outstream)>
<cfset document.open()>
<cfset canvas = writer.getDirectContentUnder()>
<cfset phrase = createObject("java", "com.itextpdf.text.phrase").init("Hello World")>
<cfset document.add(phrase)>



<!--- Close the PDF Document --->
<cfset document.close()>

<!--- Close the physical File --->
<cfset outstream.close()>
<br>


