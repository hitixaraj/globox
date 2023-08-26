/*4.What are the start and end dates of the experiment?*/

SELECT MIN(join_dt) AS Start_date,MAX(join_dt) AS End_date
 FROM groups

/*ANS: Start Date:2023-01-25, END Date:2023-02-06*/
