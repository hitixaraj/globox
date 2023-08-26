/*SQL query that returns: the user ID, the user’s country, the user’s gender, the user’s device type, the user’s test group,
whether or not they converted (spent > $0), and how much they spent in total ($0+). */

SELECT
  distinct u.id AS user_id,
  u.country,
  u.gender,
  g.group AS test_group,
  g.device,
 
 SUM(COALESCE(a.spent, 0)) AS total_spent

 FROM users u 
 LEFT JOIN groups g ON u.id = g.uid
 LEFT JOIN activity a ON u.id = a.uid
 
 GROUP BY u.id, u.country, u.gender, g.group,g.device ;
 
 /*
 | user_id | country | gender | test_group | device | total_spent |
| ------- | ------- | ------ | ---------- | ------ | ----------- |
| 1025507 | GBR     | M      | B          | I      | 0           |
| 1049407 | USA     |        | B          | I      | 0           |
| 1033321 | BRA     | F      | A          | I      | 0           |
| 1033494 | BRA     | F      | A          | A      | 0           |
| 1013857 | MEX     |        | B          | A      | 0           |
| 1046010 | GBR     | M      | B          | A      | 0           |
| 1040652 | MEX     | F      | A          | I      | 196.7       |
| 1046852 | USA     | M      | A          | A      | 0           |
| 1046234 | GBR     | O      | A          | A      | 0           |
| 1005483 | DEU     | M      | A          | I      | 0           |
*/