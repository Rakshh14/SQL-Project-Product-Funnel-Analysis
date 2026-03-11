SELECT
event_name,
COUNT(DISTINCT user_id) AS users
FROM user_events
GROUP BY event_name
ORDER BY users DESC;


/*
Expected Output: 
visit = 4
signup = 3
verify_email = 2
purchase = 1


Drop-offs:
Visit → Signup drop = 1 user
Signup → Verify drop = 1 user
Verify → Purchase drop = 1 user

#This shows the largest friction may occur during email verification or checkout.
*/

