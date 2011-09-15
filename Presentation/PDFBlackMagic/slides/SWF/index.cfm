<!-- Example similar to FestivalCalendar2.java the book iText in Action second edition chapter 16
 See:https://itext.svn.sourceforge.net/svnroot/itext/book/src/part4/chapter16/MovieAnnotation.java
 -->


<cfset resource = expandPath("./base.swf")>
<cfset x1 = javacast("float",0)>
<cfset y1 = javacast("float",100)>
<cfset x2 = javaCast("float",500)>
<cfset y2 = javaCast("float", 500)>


<a href="./bacon.pdf">View PDF</a>
<br>
<!-- Generate some content from the meatiest Lorem Ipsum Generator ever: http://baconipsum.com -->
<cfsavecontent variable="paragraph1">

Note: You must choose options and trust this host. Then refresh the page (if viewing in a browser) to view the embedded swf video. Please enjoy the 1991 "Zero Wing" goodness! 
</cfsavecontent>

<cfsavecontent variable="paragraph2">
Ham tail shoulder, pig sirloin t-bone pork belly capicola tri-tip bacon sausage ham hock spare ribs ground round. Pork chop brisket ham short loin, ball tip salami sirloin swine pig ham hock t-bone. Pork loin bacon frankfurter boudin, shank bresaola drumstick pancetta sirloin fatback beef ribs ribeye leberkäse ground round. Ham corned beef flank, meatball venison pork loin strip steak bresaola tail spare ribs. Cow spare ribs ham meatloaf. Prosciutto ball tip pork belly strip steak. Sirloin swine tri-tip bacon.
</cfsavecontent>

<cfsavecontent variable="paragraph3">
If you are using Adobe Reader you will need to trust this host and then click the area below to start the SWF	
</cfsavecontent>

<!-- Set the path -->
<cfset fullPath = expandPath("./bacon.pdf")>

<!-- Initialize a PDF Document Java Object -->
<cfset document = createObject("java", "com.itextpdf.text.Document").init()>
<cfdump var="#document#">

<!-- Create a file stream to write to -->
<cfset outStream = createObject("java","java.io.FileOutputStream").init(fullPath)>
<cfdump var="#outStream#">
<!-- Get and instance of PDF to write to, passing in the document object and filestream we created earlier -->
<cfset writer = createObject("java", "com.itextpdf.text.pdf.PdfWriter").getInstance(document, outstream)>
<cfdump var="#writer#">

<!-- Open the Document -->
<cfset document.open()>

<!-- Create an iText Paragraph object & Add it to the empty document -->
<cfset paragraph = createObject("java", "com.itextpdf.text.Paragraph").init(paragraph1)>
<cfdump var="#paragraph#">
<cfset document.add(paragraph)>

<!-- Create another iText Paragraph object & append a new paragraph -->
<cfset paragraph = createObject("java", "com.itextpdf.text.Paragraph").init(paragraph2)>
<cfset document.add(paragraph)>

<cfset paragraph = createObject("java", "com.itextpdf.text.Paragraph").init(paragraph3)>
<cfset document.add(paragraph)>


<!-- SWF Goodness starts here  code was patterned after the java example from here: https://itext.svn.sourceforge.net/svnroot/itext/book/src/part4/chapter16/MovieAnnotation.java -->
<cfset fs = createObject("java", "com.itextpdf.text.pdf.PdfFileSpecification").init()>
<cfset fs = fs.fileEmbedded(writer, resource, "base.swf", javacast("null", ""))>

<cfset PdfAnnotation =createObject("java", "com.itextpdf.text.pdf.PdfAnnotation")>
<cfset rectangle = createObject("java", "com.itextpdf.text.Rectangle").init(x1,y1,x2,y2)>
<cfset annotation = PdfAnnotation.createScreen(writer, rectangle, "All Your Bases", fs, "application/x-shockwave-flash", true)>
<cfset writer.addAnnotation(annotation)>
<cfdump var="#PdfAnnotation#">
 


<!-- Close the PDF Document -->
<cfset document.close()>

<!-- Close the physical File -->
<cfset outstream.close()>
<br>
<a href="./bacon.pdf">View PDF</a>
