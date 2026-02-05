-- ========================================
-- Create database
-- ========================================

CREATE DATABASE IF NOT EXISTS bank_analytics;
USE bank_analytics;

-- ========================================
-- Create main churn table
-- ========================================

CREATE TABLE IF NOT EXISTS bank_churn (
    Customerid INT PRIMARY KEY,
    Surname VARCHAR(50),
    CreditScore INT,
    Geography VARCHAR(30),
    Gender VARCHAR(10),
    Age INT,
    Tenure INT,
    Balance DECIMAL(15,2),
    NumofProducts INT,
    Hascrcard TINYINT,
    Isactivemember TINYINT,
    Estimatedsalary DECIMAL(15,2),
    Exited TINYINT
);
