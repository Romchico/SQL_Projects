/*Firstly I downloaded the csv file from this link: https://github.com/aaryanrr/RailwayMGMT/tree/master/Assets
Then I created a database.*/


/* Then I created a table into this database: */
CREATE TABLE traindetails(
train_no VARCHAR(100),
station_code VARCHAR(100),
station_name VARCHAR(100),
departure_time VARCHAR(100),
arrival_time VARCHAR(100),
distance VARCHAR(100),
source_station VARCHAR(100),
source_station_name VARCHAR(100),
destination_station VARCHAR(100),
destination_station_name VARCHAR(100)
)             
/* I didn't really set column constraints and data types
because I was not familiar with data set and there are
lots of null values for every rows */


SELECT * FROM traindetails /*CHECKING */

/* OOPS! I confused the arrival time column with the departure time column. Let me correct it! */
ALTER TABLE traindetails RENAME COLUMN arrival_time TO x
ALTER TABLE traindetails RENAME COLUMN departure_time TO arrival_time
ALTER TABLE traindetails RENAME COLUMN x TO departure_time

/* Now I want to extract top 10 the most frequent train services: */
SELECT station_name,destination_station_name,COUNT(station_name) FROM traindetails 
GROUP BY station_name,destination_station_name
ORDER BY COUNT(station_name) DESC LIMIT 10



/* I choose to travel from DADAR to CST-MUMBAI. I choose the departure time between 9 to 11 AM. */
SELECT departure_time,arrival_time FROM traindetails
WHERE station_name = 'DADAR' AND destination_station_name = 'CST-MUMBAI'
AND departure_time IN ('09:00:00','10:00:00','11:00:00')
ORDER BY departure_time ASC



