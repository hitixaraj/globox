/*8.What is the user conversion rate for the control and treatment groups?*/

SELECT grp.group, COUNT(DISTINCT CASE WHEN act.spent > 0 THEN act.uid END) AS converted_users,
COUNT(DISTINCT grp.uid) AS total_users,
COUNT(DISTINCT CASE WHEN act.spent > 0 THEN act.uid END) * 100.0 / COUNT(DISTINCT grp.uid) AS conversion_rate
FROM groups grp
LEFT JOIN activity act ON grp.uid = act.uid
GROUP BY grp.group;


/*group	converted_users	total_users	conversion_rate
A	955	24343	3.9230990428459927
B	1139	24600	4.6300813008130081
*/

