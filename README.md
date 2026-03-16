# 📊 Telecom Customer Churn Analysis

## 🔍 Project Overview
An end-to-end data analytics project analyzing customer churn 
behavior in the telecom industry. The goal was to identify key 
churn drivers and provide actionable business recommendations 
to improve customer retention.

---

## 🛠️ Tools & Technologies
| Tool | Purpose |
|------|---------|
| Python | Data cleaning & preprocessing |
| SQL (MS SQL Server) | Data querying & analysis |
| Power BI | Dashboard & visualization |

---

## 📁 Project Structure
```
telecom-customer-churn-analysis/
│
├── data/
│   ├── WA_Fn-UseC_-Telco-Customer-Churn.csv   # Raw dataset
│   └── clean_telco_churn_data.csv              # Cleaned dataset
│
├── notebooks/
│   └── Customer_Churn_Analytics_Project.ipynb  # Python notebook
│
├── sql/
│   └── Customer_Churn_Analytics.sql            # SQL queries
│
├── dashboard/
│   ├── DATA_ANALYTICS.pbix                     # Power BI file
│   └── Dashboards.pdf                          # Dashboard screenshots
│
├── report/
│   └── Telecom_Customer_Churn_Analysis_Report.pdf
```

---

## 📊 Dataset
- **Source:** [Kaggle - Telco Customer Churn](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)
- **Records:** 7,043 customers
- **Features:** Demographics, services, contract info, payment methods, charges

---

## 🔄 Project Workflow

### 1. Data Cleaning (Python)
- Handled missing values in TotalCharges column
- Corrected data types
- Engineered new features:
  - **Tenure Groups** (0-1yr, 1-2yr, 2-4yr, 4-5yr, 5-6yr)
  - **Total Services** count per customer

### 2. Data Analysis (SQL)
- Calculated overall churn rate → **26.49%**
- Analyzed churn by contract type, payment method, internet service, tenure group, and charges category
- Calculated monthly revenue lost from churned customers

### 3. Data Visualization (Power BI)
Three-page interactive dashboard:
- **Page 1:** Customer Churn Risk Story
- **Page 2:** Customer Behavior Insights
- **Page 3:** Customer Risk Segmentation

---

## 📈 Key Findings

| Factor | Finding |
|--------|---------|
| Churn Rate | 26.49% overall |
| Highest Risk | Month-to-month contract customers |
| Internet Service | Fiber optic users churn more despite premium pricing |
| Payment Method | Electronic check users show highest churn |
| Tenure | 0-1 year customers are most likely to churn |
| Services | Customers with 4+ services churn significantly less |

---

## 💡 Business Recommendations
1. Launch early retention program for 0–12 month customers
2. Incentivize month-to-month customers to switch to annual contracts
3. Investigate fiber optic service quality issues
4. Drive auto-pay adoption to reduce churn passively
5. Promote service bundling strategy
6. Build a real-time churn prediction system

---

## 📸 Dashboard Preview
![Customer Churn Risk Story](dashboard/Dashboards.pdf)

---

## 🚀 How to Run

### Python Notebook
```bash
pip install pandas numpy matplotlib seaborn
jupyter notebook notebooks/Customer_Churn_Analytics_Project.ipynb
```

### SQL
- Open SQL Server Management Studio (SSMS)
- Run `sql/Customer_Churn_Analytics.sql`

### Power BI
- Open `dashboard/DATA_ANALYTICS.pbix` in Power BI Desktop

---

## 👤 Author
**Abdullah Khan**
www.linkedin.com/in/abdullah-khan-246b46234 
