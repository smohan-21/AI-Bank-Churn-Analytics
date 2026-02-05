-- ========================================
USE bank_analytics;
-- ========================================

-- ========================================
-- Q1. Total number of customers
-- ========================================

SELECT COUNT(*) AS total_customers
FROM bank_churn;

-- ========================================
-- Q2. Check NULL values in important columns
-- ========================================

SELECT
    SUM(customerid IS NULL) AS customerid_nulls,
    SUM(creditscore IS NULL) AS creditscore_nulls,
    SUM(age IS NULL) AS age_nulls,
    SUM(balance IS NULL) AS balance_nulls,
    SUM(exited IS NULL) AS exited_nulls
FROM bank_churn;

-- ========================================
-- Q3. Identify duplicate customer records
-- ========================================

SELECT customerid, COUNT(*) AS duplicate_count
FROM bank_churn
GROUP BY customerid
HAVING COUNT(*) > 1;

-- ========================================
-- Q4. Overall churn count
-- ========================================

SELECT
    exited,
    COUNT(*) AS customers
FROM bank_churn
GROUP BY exited;

-- ========================================
-- Q5. Overall churn rate (%)
-- ========================================

SELECT
    ROUND(SUM(exited) / COUNT(*) * 100, 2) AS churn_rate_percentage
FROM bank_churn;

-- ========================================
-- Q6. Churn rate by geography
-- ========================================

SELECT
    geography,
    COUNT(*) AS total_customers,
    SUM(exited) AS churned_customers,
    ROUND(SUM(exited) / COUNT(*) * 100, 2) AS churn_rate
FROM bank_churn
GROUP BY geography
ORDER BY churn_rate DESC;

-- ========================================
-- Q7. Churn rate by gender
-- ========================================

SELECT
    gender,
    COUNT(*) AS total_customers,
    ROUND(AVG(exited) * 100, 2) AS churn_rate
FROM bank_churn
GROUP BY gender;

-- ========================================
-- Q8. Average balance by churn status
-- ========================================

SELECT
    exited,
    ROUND(AVG(balance), 2) AS avg_balance
FROM bank_churn
GROUP BY exited;

-- ========================================
-- Q9. Average age by churn status
-- ========================================

SELECT
    exited,
    ROUND(AVG(age), 1) AS avg_age
FROM bank_churn
GROUP BY exited;

-- ========================================
-- Q10. Churn rate by age group
-- ========================================

SELECT
    CASE
        WHEN age < 30 THEN '<30'
        WHEN age BETWEEN 30 AND 39 THEN '30-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        WHEN age BETWEEN 50 AND 59 THEN '50-59'
        ELSE '60+'
    END AS age_group,
    COUNT(*) AS total_customers,
    ROUND(AVG(exited) * 100, 2) AS churn_rate
FROM bank_churn
GROUP BY age_group
ORDER BY churn_rate DESC;

-- ========================================
-- Q11. High-balance customers who churned
-- ========================================

SELECT
    customerid,
    geography,
    age,
    balance
FROM bank_churn
WHERE balance > 100000
  AND exited = 1
ORDER BY balance DESC;

-- ========================================
-- Q12. Top 10 churned customers by balance
-- ========================================

SELECT
    customerid,
    surname,
    balance
FROM bank_churn
WHERE exited = 1
ORDER BY balance DESC
LIMIT 10;

-- ========================================
-- Q13. Churn rate by number of products
-- ========================================

SELECT
    numofproducts,
    COUNT(*) AS total_customers,
    ROUND(AVG(exited) * 100, 2) AS churn_rate
FROM bank_churn
GROUP BY numofproducts
ORDER BY churn_rate DESC;

-- ========================================
-- Q14. Churn comparison: active vs inactive customers
-- ========================================

SELECT
    isactivemember,
    COUNT(*) AS total_customers,
    ROUND(AVG(exited) * 100, 2) AS churn_rate
FROM bank_churn
GROUP BY isactivemember;

-- ========================================
-- Q15. Geography-level churn risk profile
-- ========================================

SELECT
    geography,
    ROUND(AVG(balance), 2) AS avg_balance,
    ROUND(AVG(age), 1) AS avg_age,
    ROUND(AVG(exited) * 100, 2) AS churn_rate
FROM bank_churn
GROUP BY geography
ORDER BY churn_rate DESC;
