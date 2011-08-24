<!--- Low Level Manipulation of PDF
	Example similar to the book iText in Action second edition page 17
	---> 
	
<a href="./bacon-column.pdf">View PDF</a>
<br>
NOTE: Compare this in a text editor to example 007<br>
<!--- Generate some content from the meatiest Lorem Ipsum Generator ever: http://baconipsum.com --->
<cfsavecontent variable="paragraph1">
Bacon ipsum dolor sit amet prosciutto pastrami strip steak, tongue ground round salami cow. Chicken capicola short loin, pork belly chuck turducken sirloin cow tail sausage rump beef ribs ribeye. Tri-tip cow spare ribs salami. Ground round ball tip salami, corned beef t-bone filet mignon ham jerky meatloaf beef ribs short loin capicola chicken. Sausage corned beef chicken sirloin jerky. Swine pork loin boudin meatloaf pastrami brisket, jowl leberkäse prosciutto short loin bacon. Ham hock filet mignon swine brisket, salami beef ribs short ribs pancetta.
</cfsavecontent>


<!--- Set the path --->
<cfset fullPath = expandPath("./bacon-column.pdf")>
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



<!--- setting compression allows you to open the PDF in a text editor and look at the guts of PDF (gross) --->
<cfset writer.setCompressionLevel(0)>
<cfset phrase = createObject("java", "com.itextpdf.text.Phrase").init("Hello World")>
<cfset canvas = writer.getDirectContentUnder()>

<!--- Create a phrase object and add this to the direct content, named canvas,
using the stating method ColumnText.showTextAligned(). The phrase variable will be 
added left aligned at coordinates (36,788) with rotation 0.

TODO: Dumping the Canvas java object shows me a fields section.  That has 
	constants ALIGN_LEFT = 0 etc.. how do I reference this? 
--->
<cfset columnText = createObject("java", "com.itextpdf.text.pdf.ColumnText")> 
<cfset ALIGN_LEFT = javacast("int",0)>
<cfdump var="#columnText#">
<cfdump var="#canvas#">
<cfset columnText.showTextAligned(canvas,ALIGN_LEFT,phrase,36, 788,0)>

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

