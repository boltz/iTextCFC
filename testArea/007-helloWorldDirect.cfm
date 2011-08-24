<!--- Low Level Manipulation of PDF
	Example similar to the book iText in Action second edition page 15-16
	---> 
	
<a href="./bacon-direct.pdf">View PDF</a>
<br>
NOTE: You should also open the PDF with a text editor to learn more about
how PDFs are made (SFW)<br>
<!--- Generate some content from the meatiest Lorem Ipsum Generator ever: http://baconipsum.com --->
<cfsavecontent variable="paragraph1">
Bacon ipsum dolor sit amet prosciutto pastrami strip steak, tongue ground round salami cow. Chicken capicola short loin, pork belly chuck turducken sirloin cow tail sausage rump beef ribs ribeye. Tri-tip cow spare ribs salami. Ground round ball tip salami, corned beef t-bone filet mignon ham jerky meatloaf beef ribs short loin capicola chicken. Sausage corned beef chicken sirloin jerky. Swine pork loin boudin meatloaf pastrami brisket, jowl leberkäse prosciutto short loin bacon. Ham hock filet mignon swine brisket, salami beef ribs short ribs pancetta.
</cfsavecontent>


<!--- Set the path --->
<cfset fullPath = expandPath("./bacon-direct.pdf")>
<!--- Initialize a PDF Document Java Object --->
<cfset document = createObject("java", "com.itextpdf.text.Document").init()>
<!--- Create ByteArrayOutputStream --->
<cfset baos = createObject("java", "java.io.ByteArrayOutputStream").init()>
<!--- Get and instance of PDF to write to, passing in the document object and filestream we created earlier --->
<cfset writer = createObject("java", "com.itextpdf.text.pdf.PdfWriter").getInstance(document, baos)>
<!--- Open the Document --->
<cfset document.open()>

<!--- /////////////////////////////// --->
<!--- /// NEW LEARNING STUFF HERE /// --->
<!--- /////////////////////////////// --->

<cfset canvas = writer.getDirectContentUnder()>
<cfset baseFont = createObject("java", "com.itextpdf.text.pdf.BaseFont")>  <!--- Had to google the class name of this --->

<!--- setting compression allows you to open the PDF in a text editor and look at the guts of PDF (gross) --->
<cfset writer.setCompressionLevel(0)>
<cfset canvas.saveState()>
<cfset canvas.beginText()>
<cfset canvas.moveText(36,788)> <!--- Note: Low Level methods like these do not respect margins and they don't wrap at the end of lines --->
<cfset canvas.setFontAndSize(BaseFont.createFont(),12)>
<cfset canvas.showText("Hello World")>
<cfset canvas.endText()>
<cfset canvas.restoreState()>


<!--- /////////////////////////////// --->
<!--- /////////////////////////////// --->






<!--- Close the PDF Document --->
<cfset document.close()>
<!--- Create a file stream to write to --->
<cfset fos = createObject("java","java.io.FileOutputStream").init(fullPath)>
<!--- Get Bytes and write them --->
<cfset fos.write(baos.toByteArray())>
<!--- Close the physical File --->
<cfset fos.close()>
<br>

