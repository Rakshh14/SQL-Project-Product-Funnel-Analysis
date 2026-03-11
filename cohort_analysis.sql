SELECT
DATE(event_time) AS event_date,
event_name,
COUNT(DISTINCT user_id) AS users
FROM user_events
GROUP BY event_date, event_name
ORDER BY event_date;

/*
Query returns:
Which day had more signups

Which day had more purchases
*/