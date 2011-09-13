<!--- instructions Go into your ColdFusion Administrator
Create a new datasource named Movies
Driver: Apache Derby Embedded
Path: path to the testArea/db (example C:/inetpub/wwwroot/iTextCFC/testArea/db  NOTE use / NOT \ )

Uncomment this code below and run this page

<cfquery  datasource="Movies">
	CREATE TABLE film_movietitle
    (id INT NOT NULL, title VARCHAR(100), original_title VARCHAR(100), 
    imdb VARCHAR(100), "year" INT, duration decimal(5,2),
    PRIMARY KEY (id))
</cfquery>

<cfquery  datasource="Movies">
	CREATE TABLE film_director
    (id INT NOT NULL, name VARCHAR(100), given_name VARCHAR(100),
    PRIMARY KEY (id))
</cfquery>

<cfquery  datasource="Movies">
	CREATE TABLE film_movie_director
    (film_id INT, director_id INT)
</cfquery>

<cfquery  datasource="Movies">
	CREATE TABLE film_movie_country
   (film_id INT, country_id INT)
</cfquery>

<cfquery  datasource="Movies">
	CREATE TABLE film_country
    (id INT NOT NULL, country varchar(50), PRIMARY KEY (id) )
</cfquery>


<cfquery  datasource="Movies">
	INSERT INTO film_country (id, country) VALUES (10, 'USA')
</cfquery>

<cfset countryList = "Argentina,Australia,Austria,Canada,Greece">
<cfset i = 11>
<cfloop list="#countryList#" index="country">
	<cfquery  datasource="Movies">
		INSERT INTO film_country (id, country) VALUES (#i#, '#country#')
	</cfquery>
	<cfset i++>
</cfloop>


<cfset name = "David Lynch,Martin Scorsese,Joel Coen,Steven Soderbergh,Terrence Malick,Quentin Tarantino,Spike Jones,Ang Lee">
<cfset givenName = "David Lynch,Martin Scorsese,Joel Coen,Steven Soderbergh,Terrence Malick,Quentin Tarantino,Spike Jones,Ang Lee">
<cfset i = 1>
<cfloop list="#name#" index="name">
	<cfquery  datasource="Movies">
		INSERT INTO film_director (id, name, given_name) VALUES (#i#,'#name#', '#listGetAt(givenName,i)#')
	</cfquery>
	<cfset i++>
</cfloop>

--->





<cfquery  name="countries" datasource="Movies">
	SELECT * FROM  film_director
</cfquery>

<cfdump var="#countries#">






