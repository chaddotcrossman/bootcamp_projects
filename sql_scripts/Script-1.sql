CREATE TABLE Orders
(
Order_id Varchar (255) PRIMARY KEY,
company_name varchar(255) NOT NULL,
address text,
city text, 
phone text, 
order_date date
);

SELECT*FROM orders


INSERT INTO orders Values( '1','Acme', '14 Hollywood Blvd', 'Los Angeles', '616-555-1234', '1/14/15')
INSERT INTO orders Values( '2','Amazon', '28010 S Western Ave', 'Chicago', '234-345-5151', '5/2/15')
INSERT INTO orders Values( '3','Netflix', '888 Broadway', 'New York', '642-612-6123', '6/7/15')


SELECT company_name, address ||', '||city AS full_address
FROM orders
WHERE city = 'Chicago'


SELECT *
FROM orders
WHERE company_name LIKE 'A%'


SELECT g.Name, count(t.Name) AS tracks_per_genre
FROM Genre g 
JOIN Track t  ON g.GenreId = t.GenreId 
GROUP BY g.Name 
ORDER BY tracks_per_genre DESC 

SELECT a2.Name AS Artist, t.Name AS track_title, a.Title AS album_title
FROM Track t 
JOIN Album a ON t.AlbumId =a.AlbumId 
JOIN Artist a2 ON a2.ArtistId = a.ArtistId
WHERE Artist ='Jamiroquai'

SELECT BillingCountry, sum(total) AS country_total
FROM Invoice i 
GROUP BY BillingCountry 
ORDER BY country_total DESC 
LIMIT 5 


SELECT sum(total) AS regional_sales,
CASE 
				WHEN BillingCountry IN ('India', 'Australia')
				THEN 'Asia Pacific'
				WHEN BillingCountry IN ('Canada', 'USA')
				THEN 'North America'
				WHEN BillingCountry IN ('Chile','Brazil','Argentina')
				THEN 'South America'
				ELSE 'Europe'
				END AS Regions
FROM Invoice i 
GROUP BY regions
ORDER BY regional_sales DESC

SELECT a.Name AS artist, count(a2.AlbumId) AS album_count 
FROM Artist a 
JOIN Album a2 ON a.ArtistId =a2.ArtistId 
GROUP BY artist
HAVING album_count < 1




