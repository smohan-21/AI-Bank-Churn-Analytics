# AI-Bank-Churn-Analytics

# AI-Driven Bank Churn Analytics (SQL + Python + Looker Studio)

## 📌 Project Overview
This project analyzes a bank customer churn dataset to identify churn patterns, high-risk customer segments, and actionable business insights.

The workflow is designed as an end-to-end analytics portfolio project using:
- **SQL** for churn KPI analysis and segmentation
- **Python (Google Colab)** for data cleaning, feature engineering, and EDA
- **Google Looker Studio** for an interactive dashboard

---

## 🎯 Project Objectives
- Measure churn rate and churn distribution
- Identify churn drivers by customer demographics and banking behavior
- Segment churn by geography, gender, age group, tenure, balance, and product usage
- Build an interactive dashboard for stakeholder reporting

---

## 🧰 Tools & Technologies
- **SQL** (MySQL / PostgreSQL / SQLite)
- **Python** (Pandas, NumPy)
- **Google Colab**
- **Google Looker Studio**
- **GitHub**

---

## 📊 Looker Studio Dashboard (Direct Link)
🔗 https://lookerstudio.google.com/reporting/26424e82-245f-414b-9414-f9a39a27a089

---

## 📂 Project Structure
```bash
ai-bank-churn-analytics/
│
├── data/
│   └── bank_churn.csv
│
├── notebooks/
│   └── bank_churn_analysis.ipynb
│
├── SQL/
│   ├── schema.sql
│   └── churn_analysis.sql
│
├── dashboard/
│   └── looker_studio_link.md
│
└── README.md
```

---

## 📊 Dataset
The dataset contains customer information such as:
- Geography
- Gender
- Age
- Tenure
- Balance
- Number of products
- Credit card ownership
- Active membership status
- Estimated salary
- Churn label (Exited)

---

## 🧹 Data Cleaning & Preparation (Python in Colab)
The dataset was cleaned and prepared using Python:
- Checked and handled missing values
- Removed duplicates (if any)
- Fixed column formatting and data types
- Created new derived columns for analysis, such as:
  - **Age Group**
  - **Tenure Group**
  - **Balance Category**
  - **Salary Category**

Notebook location:
- `notebooks/bank_churn_analysis.ipynb`

---

## 🧾 SQL Analysis
SQL scripts include:
- `SQL/schema.sql`  
  Creates the churn table structure

- `SQL/churn_analysis.sql`  
  Contains churn analysis queries such as:
  - Total customers
  - Churn count and churn rate
  - Churn rate by geography
  - Churn rate by gender
  - Churn rate by age group
  - Churn by product count
  - Churn by active member status
  - Balance vs churn

---

## 📈 Looker Studio Dashboard
The interactive dashboard includes:
- KPI Scorecards:
  - Total Customers
  - Churned Customers
  - Churn Rate
- Churn Rate by Geography
- Churn Rate by Age Group
- Churn by Active Member Status
- Churn by Product Count
- Balance vs Churn insights

---

## 🚀 How to Run This Project

### Option 1: Run Python Notebook (Recommended)
1. Open `notebooks/bank_churn_analysis.ipynb` in Google Colab
2. Upload the dataset `data/bank_churn.csv` to Colab
3. Run all notebook cells

### Option 2: Run SQL Queries
1. Run `SQL/schema.sql` in your SQL environment
2. Import `data/bank_churn.csv` into the created table
3. Run queries from `SQL/churn_analysis.sql`

---

## 📌 Key Insights (Example Summary)
- Churn is highest in specific geographies
- Inactive members churn significantly more than active members
- Customers with fewer products show higher churn
- Balance groups show different churn behavior patterns

---

## 👤 Author
**S Mohan**  
Data Analytics Portfolio Project  
(SQL • Python • Looker Studio)
