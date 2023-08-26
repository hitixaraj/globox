/*2.What type of join should we use to join the users table to the activity table?*/

SELECT * FROM users 
LEFT JOIN activity ON users.id= activity.uid

/* ANS.LEFT JOIN will help us to see all users activity along with NULL values.
if we use Inner Join so user with null activity data can avoided.*/
