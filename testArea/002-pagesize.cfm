<!--- When creating a PDF Document the page size and margins are defined.
	This is done either implicitly as was done in 001-paragraph.cfm
	or can be defined explicitly, as below. com.itextPDF.text.Rectangle object
	Example similar to the book iText in Action second edition page 9
	---> 
	
<a href="./bacon-PageSize.pdf">View PDF</a>
<br>
<!--- Generate some content from the meatiest Lorem Ipsum Generator ever: http://baconipsum.com --->
<cfsavecontent variable="paragraph1">
Bacon ipsum dolor sit amet prosciutto pastrami strip steak, tongue ground round salami cow. Chicken capicola short loin, pork belly chuck turducken sirloin cow tail sausage rump beef ribs ribeye. Tri-tip cow spare ribs salami. Ground round ball tip salami, corned beef t-bone filet mignon ham jerky meatloaf beef ribs short loin capicola chicken. Sausage corned beef chicken sirloin jerky. Swine pork loin boudin meatloaf pastrami brisket, jowl leberkäse prosciutto short loin bacon. Ham hock filet mignon swine brisket, salami beef ribs short ribs pancetta.
</cfsavecontent>

<cfsavecontent variable="paragraph2">
Ham tail shoulder, pig sirloin t-bone pork belly capicola tri-tip bacon sausage ham hock spare ribs ground round. Pork chop brisket ham short loin, ball tip salami sirloin swine pig ham hock t-bone. Pork loin bacon frankfurter boudin, shank bresaola drumstick pancetta sirloin fatback beef ribs ribeye leberkäse ground round. Ham corned beef flank, meatball venison pork loin strip steak bresaola tail spare ribs. Cow spare ribs ham meatloaf. Prosciutto ball tip pork belly strip steak. Sirloin swine tri-tip bacon.
</cfsavecontent>

<!--- Set the path --->
<cfset fullPath = expandPath("./bacon-PageSize.pdf")>

<!--- Set up Rectangle. These Numbers are float values. Measurements in PDF documents are "User Space Units" 1/72 inch about the same
as a point. 1 in. = 25.4 mm = 72 user units approx 72pt --->
<cfset pageWidth = javacast("float",216)>
<cfset pageHeight = javacast("float",720)>
<cfset leftMargin = javaCast("float",36)>
<cfset rightMargin = javaCast("float", 72)>
<cfset topMargin = javaCast("float", 108)>
<cfset bottomMargin = javaCast("float", 180)>
<cfset pageSize = createObject("java", "com.itextpdf.text.Rectangle").init(pageWidth, pageHeight)>

<!--- Initialize a PDF Document Java Object --->
<cfset document = createObject("java", "com.itextpdf.text.Document").init(pageSize, leftMargin, rightMargin, topMargin, bottomMargin)>

<!--- Create a file stream to write to --->
<cfset outStream = createObject("java","java.io.FileOutputStream").init(fullPath)>

<!--- Get and instance of PDF to write to, passing in the document object and filestream we created earlier --->
<cfset writer = createObject("java", "com.itextpdf.text.pdf.PdfWriter").getInstance(document, outstream)>


<!--- Open the Document --->
<cfset document.open()>

<!--- Create an iText Paragraph object & Add it to the empty document --->
<cfset paragraph = createObject("java", "com.itextpdf.text.Paragraph").init(paragraph1)>
<cfset document.add(paragraph)>

<!--- Create another iText Paragraph object & append a new paragraph --->
<cfset paragraph = createObject("java", "com.itextpdf.text.Paragraph").init(paragraph2)>
<cfset document.add(paragraph)>

<!--- Close the PDF Document --->
<cfset document.close()>

<!--- Close the physical File --->
<cfset outstream.close()>
<br>
<a href="./bacon-PageSize.pdf">View PDF</a>
