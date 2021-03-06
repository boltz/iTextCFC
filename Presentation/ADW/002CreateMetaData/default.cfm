﻿
<!--- SAMPLE 1--->
<!-- Create a PDF with CFDocument -->
<cfdocument format="PDF" name="faxcover">	
	<!DOCTYPE  html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/><meta name="author" content="Kevin Savetz"/><title>Microsoft Word - sensitive.doc</title><style type="text/css"><!-- .s1 { font-family: sans-serif; font-weight: normal; font-size: 48pt; }
	 .s2 { font-family: sans-serif; font-weight: normal; font-size: 24pt; }
	 p { font-family: sans-serif; font-weight: normal; font-size: 12pt; }
	  -->
	</style></head><body><p class="s1">FACSIMILE</p><p class="s2">SENSITIVE</p><p>DATE: <u>                                                     </u><br/><span><IMG width="236" height="1" src="sensitive/Image_001.png"/></span><br/><span><IMG width="219" height="1" src="sensitive/Image_002.png"/></span><br/>TO:     <u>                                                    </u> FROM:    <u>                                                 </u> FAX:                                                          PAGES:<br/><span><IMG width="599" height="1" src="sensitive/Image_003.png"/></span><br/>RE:<br/><span><IMG width="577" height="1" src="sensitive/Image_004.png"/></span><br/>CONFIDENTIALITY NOTICE: This facsimile message is for the sole use of the intended recipient(s) and may contain sensitive and privileged information or otherwise be protected by law. Any unauthorized review, use, disclosure or distribution is prohibited. If you are not the intended recipient, please contact the<br/>sender and destroy all copies of the original message.<br/></p>
	</body></html>	
</cfdocument>
<cfpdf action="write" source="faxCover" overwrite="yes" destination="C:/inetpub/wwwroot/Presentations/ColdFusionPDF/faxCover.pdf" >
<cfoutput><BR>Sample 1 Done 
<br><a href="faxCover.pdf">View PDF</a>
</cfoutput>

<cfset meta = structnew()>
<cfset meta.Author = "Tim Cunningham">
<cfset meta.Title = "Fax Cover Sheet">
<cfset meta.keywords = "Fax, Cover, Who still faxes?">

<cfpdf action="setinfo" info="#meta#" source="C:/inetpub/wwwroot/Presentations/ColdFusionPDF/faxCover.pdf">

<cfpdf action="getInfo" name="info" source="C:/inetpub/wwwroot/Presentations/ColdFusionPDF/faxCover.pdf">

<cfdump var="#info#">