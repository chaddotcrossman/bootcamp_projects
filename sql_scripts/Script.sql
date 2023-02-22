SELECT  name 
FROM Olympic_Athlete_Bio oab 
WHERE name LIKE '%Stevenson'



SELECT *
FROM Olympic_Athlete_Event_Results oaer 
JOIN Olympic_Athlete_Bio oab ON oaer.athlete_id =oab.athlete_id 
JOIN Olympics_Games og ON oaer.edition_id =og.edition_id 
WHERE athlete = 'Teófilo Stevenson'

SELECT edition,country_noc, count(athlete) AS number_athletes
FROM Olympic_Athlete_Event_Results oaer 
WHERE edition_id = 18 AND sport ='Boxing'
GROUP BY country_noc 
ORDER BY number_athletes DESC
LIMIT 10


SELECT country_noc, count(athlete) AS number_athletes
FROM Olympic_Athlete_Event_Results oaer 
WHERE edition_id =19 AND sport ='Boxing'
GROUP BY country_noc 
ORDER BY number_athletes DESC

SELECT country_noc, edition,count(athlete) AS number_athletes
FROM Olympic_Athlete_Event_Results oaer 
WHERE sport ='Boxing' AND country_noc ='CUB'
GROUP BY edition, country_noc 
ORDER BY edition ASC 

SELECT edition, sport,athlete, country_noc, count(medal) 
FROM Olympic_Athlete_Event_Results oaer 
WHERE sport='Boxing' AND medal='Gold' AND country_noc = 'USA'
GROUP BY  country_noc 
