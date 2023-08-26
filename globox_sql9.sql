*9.What is the average amount spent per user for the control and treatment groups, 
including users who did not convert?*/

WITH 
ctrl_grp_spent AS(
  SELECT users.id user_id
 ,COALESCE(SUM(act.spent),0) total_spent
    ,grp.group ctrl_gp

FROM users
LEFT JOIN activity act ON users.id=act.uid
LEFT JOIN groups grp ON users.id=grp.uid
WHERE grp.group='A'
GROUP BY users.id,grp.group
),

treat_grp_spent AS(
  SELECT users.id user_id
  ,COALESCE(SUM(act.spent),0) total_spent
   ,grp.group treat_gp

FROM users
LEFT JOIN activity act ON users.id=act.uid
LEFT JOIN groups grp ON users.id=grp.uid
WHERE grp.group='B'
GROUP BY users.id,grp.group
)

SELECT AVG(ctrl_grp_spent.total_spent) avg_control_grp_spent
,AVG(treat_grp_spent.total_spent) avg_treatment_grp_spent
FROM ctrl_grp_spent,treat_grp_spent
/* ANS:
avg_control_grp_spent	avg_treatment_grp_spent
3.3745184679288412	3.39036025901827704
*/ 

