Create database Customer_Churn_Analytics;

use Customer_Churn_Analytics;

SELECT TOP 10 * FROM customer_data;

SELECT COUNT(*) AS Total_Customers FROM customer_data;

SELECT COUNT(CASE WHEN Churn = 1 THEN 1 END) * 100.0 / COUNT(*) AS Churn_Rate FROM customer_data;

SELECT 
Contract,
COUNT(*) AS Total_Customers,
SUM(CAST(Churn AS INT)) AS Churned_Customers,
SUM(CAST(Churn AS INT)) * 100.0 / COUNT(*) AS Churn_Rate
FROM customer_data
GROUP BY Contract
ORDER BY Churn_Rate DESC;

SELECT 
PaymentMethod,
COUNT(*) AS Total_Customers,
SUM(CAST(Churn AS INT)) AS Churned_Customers,
SUM(CAST(Churn AS INT))*100.0/COUNT(*) AS Churn_Rate
FROM customer_data
GROUP BY PaymentMethod
ORDER BY Churn_Rate DESC;

SELECT 
InternetService,
COUNT(*) AS Total_Customers,
SUM(CAST(Churn AS INT)) AS Churned_Customers,
SUM(CAST(Churn AS INT))*100.0/COUNT(*) AS Churn_Rate
FROM customer_data
GROUP BY InternetService
ORDER BY Churn_Rate DESC;

SELECT 
tenure_group,
COUNT(*) AS Total_Customers,
SUM(CAST(Churn AS INT)) AS Churned_Customers,
SUM(CAST(Churn AS INT))*100.0/COUNT(*) AS Churn_Rate
FROM customer_data
GROUP BY tenure_group
ORDER BY Churn_Rate DESC;

SELECT 
charges_category,
COUNT(*) AS Total_Customers,
SUM(CAST(Churn AS INT)) AS Churned_Customers,
SUM(CAST(Churn AS INT))*100.0/COUNT(*) AS Churn_Rate
FROM customer_data
GROUP BY charges_category
ORDER BY Churn_Rate DESC;

SELECT 
Churn,
AVG(MonthlyCharges) AS Avg_Monthly_Charges
FROM customer_data
GROUP BY Churn;

SELECT 
SUM(MonthlyCharges) AS Lost_Revenue
FROM customer_data
WHERE Churn = 1;

SELECT TOP 10
tenure,
MonthlyCharges,
TotalCharges
FROM customer_data
WHERE Churn = 1
ORDER BY TotalCharges DESC;