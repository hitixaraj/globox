/*7.What was the conversion rate of all users?*/

/*HINT:The conversion rate is the number of successful conversions (users who purchased) divided by 
the total number of users. */
WITH 
convert_gp AS (
SELECT users.id,SUM(act.spent),
			CASE WHEN SUM(act.spent)>0 THEN 1
      ELSE 0 END AS CONVERT

FROM users
LEFT JOIN activity act ON users.id=act.uid

GROUP BY users.id
)
SELECT ROUND(AVG(convert_gp.convert)*100,3 )AS conversion_rate
FROM convert_gp
/*ANS: users conversion rate=4.278*/



