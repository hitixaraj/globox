/*6.How many users were in the control and treatment groups?*/


SELECT exp_grp.group,COUNT(exp_grp.uid)
FROM groups AS exp_grp
GROUP BY  exp_grp.group 
/*ANS. users in Contol group: 24343
users in Treatment group:24600*/
