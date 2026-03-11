WITH funnel AS (

SELECT
COUNT(DISTINCT CASE WHEN event_name='visit' THEN user_id END) AS visits,
COUNT(DISTINCT CASE WHEN event_name='signup' THEN user_id END) AS signups,
COUNT(DISTINCT CASE WHEN event_name='verify_email' THEN user_id END) AS verified,
COUNT(DISTINCT CASE WHEN event_name='purchase' THEN user_id END) AS purchases
FROM user_events

)

SELECT
visits,
signups,
verified,
purchases,
signups*1.0/visits AS signup_conversion_rate,
verified*1.0/signups AS verification_rate,
purchases*1.0/verified AS purchase_conversion_rate
FROM funnel;


/*
the output will show
visits
signups
verified
purchases
conversion rates
*/