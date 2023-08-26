/*3.What SQL function can we use to fill in NULL values?*/

SELECT distinct(id),country,COALESCE(country,'ABC') FROM users

WHERE COUNTRY ISNULL;


/* ANS. COALESCE(col, 'filling value') function can be used to fill null values by passing parameters like 
column with null values and with filling values here 643 users have missing country */
