<!--- Merge with Comma delimited source attribute --->
<cfpdf action="merge" overwrite="yes" 
	   source="./Zen And Beer/zen and the art of beer_page01.pdf,
	   ./Zen And Beer/zen and the art of beer_page02.pdf,
	   ./Zen And Beer/zen and the art of beer_page03.pdf,
	   ./Zen And Beer/zen and the art of beer_page04.pdf,
	   ./Zen And Beer/zen and the art of beer_page05.pdf" name="doc">

<!--- Display to screen --->
<cfcontent  type="application/pdf" reset="true" variable="#ToBinary(doc)#" />
