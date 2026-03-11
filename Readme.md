SQL Product Funnel Analysis Project
====================================================


Project Overview

This project demonstrates how SQL can be used to analyze a product user funnel, identify conversion rates, detect drop-off points, and perform a simple cohort analysis.

Understanding user behavior across funnel stages helps product teams identify where users abandon the journey and where improvements can increase conversion.


The funnel analyzed in this project is:

Visit → Signup → Email Verification → Purchase
Dataset

====================================================

The dataset simulates user activity events in a digital product.

Table: user_events

Table: user_events

| user_id | event_name   | event_time  |
|--------|--------------|-------------|
| 1      | visit        | 2025-01-01  |
| 1      | signup       | 2025-01-01  |
| 1      | verify_email | 2025-01-01  |
| 1      | purchase     | 2025-01-01  |
| 2      | visit        | 2025-01-01  |
| 2      | signup       | 2025-01-01  |
| 3      | visit        | 2025-01-02  |
| 4      | visit        | 2025-01-02  |
| 4      | signup       | 2025-01-02  |
| 4      | verify_email | 2025-01-02  |

Each row represents a user event in the product journey.



Analysis Performed
====================================================

The project includes three major analyses.

1. Funnel Conversion Analysis

Measures how many users complete each stage of the funnel.

Metrics calculated:

1.Total visits

2.Total signups

3.Email verifications

4.Purchases

5.Signup conversion rate

6.Email verification rate

7.Purchase conversion rate

Example funnel:

Visit            4 users
↓
Signup           3 users
↓
Verify Email     2 users
↓
Purchase         1 user

Conversion rates:

Signup Conversion Rate = 75%
Purchase Conversion Rate = 50%



2. Funnel Drop-off Analysis

This analysis identifies where users abandon the product journey.

Example drop-offs:

Step	Users
Visit → Signup	1 user lost
Signup → Verification	1 user lost
Verification → Purchase	1 user lost


Understanding drop-off points helps teams identify product friction areas.

Possible reasons:

Email verification complexity

Onboarding friction

Payment trust issues

Poor UX during checkout


3. Cohort Analysis

Cohort analysis groups users based on event date to analyze engagement over time.

Example analysis:

Date	        Event	  Users
2025-01-01  	visit	    2
2025-01-01  	signup	  2
2025-01-02	  visit	    2
2025-01-02	  signup	  1

This helps answer questions such as:

a. Which day had the most user activity?

b. Which cohort converts better?

c. Are newer users behaving differently?


SQL Concepts Used
====================================================

This project demonstrates several important SQL skills used by Data Analysts and Product Analysts.

CASE WHEN for conditional aggregation

COUNT DISTINCT for unique user tracking

GROUP BY for aggregation analysis

CTE (Common Table Expressions)

Conversion rate calculations

Funnel analysis logic

Cohort grouping by date

Business Insights


Based on the analysis:
====================================================

1. Signup conversion is relatively strong, indicating effective initial engagement.

2. A noticeable drop occurs between signup and email verification, suggesting friction in the verification process.

3. Purchase conversion is lower, which may indicate:
a. Lack of user trust during payment
b. Pricing concerns
c. Poor onboarding experience
d. Product Recommendations


Possible improvements based on the analysis:
====================================================
1. Simplify email verification process

2. Offer social login options

3. Improve onboarding flow

4. Add trust signals before checkout

5. Provide incentives for first purchase

====================================================

Project Structure
sql-funnel-analysis<br/>
 │<br/>
├── dataset.sql<br/>
├── funnel_analysis.sql<br/>
├── dropoff_analysis.sql<br/>
├── cohort_analysis.sql<br/>
└── README.md


Tools Used:
====================================================

SQL

GitHub

Simulated product event dataset

* Why This Project Matters *

Funnel analysis is one of the most common tasks performed by Product Analysts and Data Analysts.

This project demonstrates how SQL can be used not only to query data but also to extract actionable product insights.



Author

~ Nishant Lokhande

Aspiring Data Analyst / Product Analyst


Focus areas:
====================================================

1. SQL

2. Product analytics

3. Funnel analysis

5. Data-driven decision making








