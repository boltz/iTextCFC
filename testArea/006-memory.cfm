<!--- SetMarginMirroring 
	Example similar to the book iText in Action second edition page 12
	---> 
	
<a href="./bacon-memory.pdf">View PDF</a>
<br>
<!--- Generate some content from the meatiest Lorem Ipsum Generator ever: http://baconipsum.com --->
<cfsavecontent variable="paragraph1">
Bacon ipsum dolor sit amet prosciutto pastrami strip steak, tongue ground round salami cow. Chicken capicola short loin, pork belly chuck turducken sirloin cow tail sausage rump beef ribs ribeye. Tri-tip cow spare ribs salami. Ground round ball tip salami, corned beef t-bone filet mignon ham jerky meatloaf beef ribs short loin capicola chicken. Sausage corned beef chicken sirloin jerky. Swine pork loin boudin meatloaf pastrami brisket, jowl leberkäse prosciutto short loin bacon. Ham hock filet mignon swine brisket, salami beef ribs short ribs pancetta.
</cfsavecontent>


<!--- Set the path --->
<cfset fullPath = expandPath("./bacon-memory.pdf")>

<!--- Initialize a PDF Document Java Object --->
<cfset document = createObject("java", "com.itextpdf.text.Document").init()>

<!--- Create ByteArrayOutputStream --->
<cfset baos = createObject("java", "java.io.ByteArrayOutputStream").init()>

<!--- Get and instance of PDF to write to, passing in the document object and filestream we created earlier --->
<cfset writer = createObject("java", "com.itextpdf.text.pdf.PdfWriter").getInstance(document, baos)>


<!--- Open the Document --->
<cfset document.open()>

<!--- Create an iText Paragraph object & Add it to the empty document --->
<cfset paragraph = createObject("java", "com.itextpdf.text.Paragraph").init(paragraph1)>
<cfset document.add(paragraph)>

<!--- Close the PDF Document --->
<cfset document.close()>

<!--- Create a file stream to write to --->
<cfset fos = createObject("java","java.io.FileOutputStream").init(fullPath)>

<!--- Get Bytes and write them --->
<cfset fos.write(baos.toByteArray())>
<!--- Close the physical File --->
<cfset fos.close()>
<br>

