/*1.Can a user show up more than once in the activity table? Yes or no, and why?*/

SELECT uid,COUNT(uid)  FROM activity
GROUP BY uid
HAVING (count (uid))>1

;
 /* ANS:YES there are 139 users can show up more than once on different days */
