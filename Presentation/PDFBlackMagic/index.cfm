<cfoutput>
<!DOCTYPE html>
<html class="no-js">
  <head>
    <title>PDF BlackMagic</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <script type="text/javascript">(function(H){H.className=H.className.replace(/\bno-js\b/,'js')})(document.documentElement)</script> 
    <link href="stylesheets/screen.css" type="text/css" rel="stylesheet" media="Screen,projection" />
  </head>
  <body>
    <div id="header">
      <div class="container">
        <h1>PDF BlackMagic</h1>
      </div>
    </div>
    
    <div id="content">
      <div id="slides">
		<cfinclude template="./Slides/000splash.cfm">
       	<cfinclude template="./Slides/002.cfm">
		<cfinclude template="./Slides/003.cfm">
		<cfinclude template="./Slides/004.cfm">
		<cfinclude template="./Slides/005.cfm">
		<cfinclude template="./Slides/006.cfm">
		<cfinclude template="./Slides/007.cfm">
		<cfinclude template="./Slides/008.cfm">
		<cfinclude template="./Slides/viewPortfolio.cfm">
		<cfinclude template="./Slides/010.cfm">
		<cfinclude template="./Slides/011.cfm">
		<cfinclude template="./Slides/012.cfm">
		<cfinclude template="./Slides/013.cfm">
		<cfinclude template="./Slides/014.cfm">
		<cfinclude template="./Slides/015.cfm">
		<cfinclude template="./Slides/016.cfm">
      </div>
    </div>
    
    <div id="footer">
      <div class="container">
        &copy; #datePart("yyyy", now())# Timothy J Cunningham
      </div>
    </div>
    <script type="text/javascript" src="scripts/jquery.js"></script>
    <script type="text/javascript" src="scripts/jquery.presentation.js"></script>
    <script type="text/javascript" src="scripts/global.js"></script>
  </body>
</html>
</cfoutput>