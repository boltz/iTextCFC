<a href="./bacon.pdf">View PDF</a>
<br>
<!--- Generate some content from the meatiest Lorem Ipsum Generator ever: http://baconipsum.com --->
<cfsavecontent variable="paragraph1">
Bacon ipsum dolor sit amet prosciutto pastrami strip steak, tongue ground round salami cow. Chicken capicola short loin, pork belly chuck turducken sirloin cow tail sausage rump beef ribs ribeye. Tri-tip cow spare ribs salami. Ground round ball tip salami, corned beef t-bone filet mignon ham jerky meatloaf beef ribs short loin capicola chicken. Sausage corned beef chicken sirloin jerky. Swine pork loin boudin meatloaf pastrami brisket, jowl leberkäse prosciutto short loin bacon. Ham hock filet mignon swine brisket, salami beef ribs short ribs pancetta.
</cfsavecontent>

<cfsavecontent variable="paragraph2">
Ham tail shoulder, pig sirloin t-bone pork belly capicola tri-tip bacon sausage ham hock spare ribs ground round. Pork chop brisket ham short loin, ball tip salami sirloin swine pig ham hock t-bone. Pork loin bacon frankfurter boudin, shank bresaola drumstick pancetta sirloin fatback beef ribs ribeye leberkäse ground round. Ham corned beef flank, meatball venison pork loin strip steak bresaola tail spare ribs. Cow spare ribs ham meatloaf. Prosciutto ball tip pork belly strip steak. Sirloin swine tri-tip bacon.
</cfsavecontent>

<!--- Set the path --->
<cfset fullPath = expandPath("./bacon.pdf")>

<!--- Initialize a PDF Document Java Object --->
<cfset document = createObject("java", "com.itextpdf.text.Document").init()>
<cfdump var="#document#">

<!--- Create a file stream to write to --->
<cfset outStream = createObject("java","java.io.FileOutputStream").init(fullPath)>
<cfdump var="#outStream#">
<!--- Get and instance of PDF to write to, passing in the document object and filestream we created earlier --->
<cfset writer = createObject("java", "com.itextpdf.text.pdf.PdfWriter").getInstance(document, outstream)>
<cfdump var="#writer#">

<!--- Open the Document --->
<cfset document.open()>

<!--- Create an iText Paragraph object & Add it to the empty document --->
<cfset paragraph = createObject("java", "com.itextpdf.text.Paragraph").init(paragraph1)>
<cfdump var="#paragraph#">
<cfset document.add(paragraph)>

<!--- Create another iText Paragraph object & append a new paragraph --->
<cfset paragraph = createObject("java", "com.itextpdf.text.Paragraph").init(paragraph2)>
<cfset document.add(paragraph)>

<!--- Close the PDF Document --->
<cfset document.close()>

<!--- Close the physical File --->
<cfset outstream.close()>
<br>
<a href="./bacon.pdf">View PDF</a>
