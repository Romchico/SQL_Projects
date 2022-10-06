/* Now I want to extract top 10 the most frequent train services: */
SELECT station_name,destination_station_name,COUNT(station_name) FROM traindetails 
GROUP BY station_name,destination_station_name
ORDER BY COUNT(station_name) DESC LIMIT 10



/* I choose to travel from DADAR to CST-MUMBAI. I choose the departure time between 9 to 11 AM. */
SELECT departure_time,arrival_time FROM traindetails
WHERE station_name = 'DADAR' AND destination_station_name = 'CST-MUMBAI'
AND departure_time IN ('09:00:00','10:00:00','11:00:00')
ORDER BY departure_time ASC
