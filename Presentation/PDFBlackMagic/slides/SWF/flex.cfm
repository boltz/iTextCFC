<!---Example similar to FestivalCalendar2.java the book iText in Action second edition chapter 16
 See: https://itext.svn.sourceforge.net/svnroot/itext/book/src/part4/chapter16/FestivalCalendar2.java
 
 IMPORTANT!!! YOU NEED itext-xtra.jar in your Coldfusion Class path for the richmedia stuff to work!!!
 download here: http://mvnrepository.com/artifact/com.itextpdf/itext-xtra/5.1.0
--->
<cfset pdfDeveloperExtension = createObject("java", "com.itextpdf.text.pdf.PdfDeveloperExtension")>
<cfset activation  = createObject("java", "com.itextpdf.text.pdf.richmedia.RichMediaActivation")>
<cfset PdfFileSpecification  = createObject("java", "com.itextpdf.text.pdf.PdfFileSpecification")>
<cfset PdfIndirectReference  = createObject("java", "com.itextpdf.text.pdf.PdfIndirectReference")>
<cfset RichMediaConfiguration  = createObject("java", "com.itextpdf.text.pdf.richmedia.RichMediaConfiguration")>
<cfset PdfBorderDictionary  = createObject("java", "com.itextpdf.text.pdf.PdfBorderDictionary")>
<cfset PdfAnnotation  = createObject("java", "com.itextpdf.text.pdf.PdfAnnotation")>
<cfset pdfName = createObject("java", "com.itextpdf.text.pdf.PdfName")>


<cfset resource = expandPath("./FestivalCalendar2.swf")>
<cfset js = expandPath("./show_date.js")>
<cffile action="read" file="#js#" variable="js" >  <!-- Don't need the utilities class just use cffile --->
<cfset x1 = javacast("float",36)>
<cfset y1 = javacast("float",560)>
<cfset x2 = javaCast("float",561)>
<cfset y2 = javaCast("float", 760)>


<a href="./FestivalCalendar2.pdf">View FestivalCalendar2 PDF</a>
<br>

<!---Set the path--->
<cfset fullPath = expandPath("./FestivalCalendar2.pdf")>

<!---Initialize a PDF Document Java Object--->
<cfset document = createObject("java", "com.itextpdf.text.Document").init()>
<!---Create a file stream to write to--->
<cfset outStream = createObject("java","java.io.FileOutputStream").init(fullPath)>
<!---Get and instance of PDF to write to, passing in the document object and filestream we created earlier--->
<cfset writer = createObject("java", "com.itextpdf.text.pdf.PdfWriter").getInstance(document, outstream)>
<!--- Set PDF Version & add utilities --->
<cfset writer.setPDFVersion(writer.PDF_VERSION_1_7)>
<cfset writer.addDeveloperExtension(PdfDeveloperExtension.ADOBE_1_7_EXTENSIONLEVEL3)>

<!---Open the Document--->
<cfset document.open()>

<!--- Add our Javascript to the open document --->
<cfset writer.addJavaScript(js)>
<cfset rectangle = createObject("java", "com.itextpdf.text.Rectangle").init(x1,y1,x2,y2)>
<cfset richMedia = createObject("java", "com.itextpdf.text.pdf.richmedia.RichMediaAnnotation").init(writer, rectangle)>


<cfset fs = createObject("java", "com.itextpdf.text.pdf.PdfFileSpecification").init()>

<!--- We embed the swf file --->
<cfset fs = PdfFileSpecification.fileEmbedded(writer, RESOURCE, "FestivalCalendar2.swf", javacast("null", ""))>

<!--- we declare the swf file as an asset --->
<cfset asset = richMedia.addAsset("FestivalCalendar2.swf", fs)>

<!--- we create a configuration --->
<cfset configuration  = createObject("java", "com.itextpdf.text.pdf.richmedia.RichMediaConfiguration").init(PdfName.FLASH)>
<cfset instance = createObject("java", "com.itextpdf.text.pdf.richmedia.RichMediaInstance").init(PdfName.FLASH)>
<cfset instance.setAsset(asset)>
<cfset configuration.addInstance(instance)>

<!--- we add the configuration to the annotation --->
<cfset configurationRef = richMedia.addConfiguration(configuration)>

<!--- activation of the rich media --->
<cfset activation = createObject("java", "com.itextpdf.text.pdf.richmedia.RichMediaActivation")>
<cfset activation.setConfiguration(configurationRef)>
<cfset richMedia.setActivation(activation)>

<!--- we add the annotation --->
<cfset richMediaAnnotation = richMedia.createAnnotation()>
<cfset richMediaAnnotation.setFlags(PdfAnnotation.FLAGS_PRINT)>
<cfset writer.addAnnotation(richMediaAnnotation)>
<cfset GrayColor = createObject("java", "com.itextpdf.text.pdf.GrayColor").init(javacast("float", 0.75))>

<cfset days=["2011-10-12","2011-10-13","2011-10-14","2011-10-15","2011-10-16","2011-10-17","2011-10-18","2011-10-19"]>
<cfloop from=1 to="#arraylen(days)#" index="i">
	<cfset x1 = javacast("float",36 + (65 * i))>
	<cfset y1 = javacast("float",765)>
	<cfset x2 = javaCast("float",00 + (65 * i))>
	<cfset y2 = javaCast("float", 780)>
	<cfset rect = createObject("java", "com.itextpdf.text.Rectangle").init(x1,y1,x2,y2)>
	<cfset button = createObject("java", "com.itextpdf.text.pdf.PushbuttonField").init(writer, rect, "button" & i)>
	<cfset button.setBackgroundColor(GrayColor)>
	<cfset button.setBorderStyle(PdfBorderDictionary.STYLE_BEVELED)>
	<cfset button.setFontSize(6)>
	<cfset button.setText(days[i])>
	<cfscript>
		button.setLayout(button.LAYOUT_ICON_LEFT_LABEL_RIGHT);
		button.setScaleIcon(button.SCALE_ICON_ALWAYS);
		button.setProportionalIcon(true);
		button.setIconHorizontalAdjustment(0);
		field = button.getField();
	</cfscript>
	<cfset pdfString = createObject("java", "com.itextpdf.text.pdf.PdfString").init("getDateInfo")>
	<cfset command = createObject("java", "com.itextpdf.text.pdf.richmedia.RichMediaCommand").init(pdfString)>
	<cfset pdfString = createObject("java", "com.itextpdf.text.pdf.PdfString").init("#days[i]#")>
	<cfset command.setArguments(pdfString)>
	<cfset action =  createObject("java", "com.itextpdf.text.pdf.richmedia.RichMediaExecuteAction").init(richMediaAnnotation.getIndirectReference(), command)>
	<cfset field.setAction(action)>
	<cfset writer.addAnnotation(field)>
</cfloop>

<cfset x1 = javacast("float",36)>
<cfset y1 = javacast("float",785)>
<cfset x2 = javaCast("float",559)>
<cfset y2 = javaCast("float", 806)>
<cfset rectangle = createObject("java", "com.itextpdf.text.Rectangle").init(x1,y1,x2,y2)>
<cfset text =  createObject("java", "com.itextpdf.text.pdf.TextField").init(writer, rectangle, "date")>
<cfset text.setOptions(text.READ_ONLY)>


<!---Close the PDF Document--->
<cfset document.close()>

<!---Close the physical File--->
<cfset outstream.close()>
<br>
<a href="./FestivalCalendar2.pdf">View FestivalCalendar2 PDF</a>
