# Chinook Sales Analytics (SQL Portfolio Project)

## Overview
This project analyzes sales performance and customer behavior using the **Chinook** sample database in **PostgreSQL**.
The goal is to demonstrate strong **business-focused SQL analytics** skills: KPI definition, aggregation, joins, CTEs, and clear interpretation.

## Tools
- PostgreSQL (pgAdmin)
- SQL

## Dataset Notes
Chinook is a sample database. Some patterns (e.g., customer repeat behavior) reflect dataset design rather than real-world transactions.

## KPIs & SQL Files
- **KPI 1 – Overall Sales Performance**  
  `sql/01_overall_kpis.sql`
- **KPI 2 – Monthly Revenue Trend**  
  `sql/02_monthly_revenue_trend.sql`
- **KPI 3 – Top Customers by Revenue**  
  `sql/03_top_customers.sql`
- **KPI 4 – Revenue Concentration (Top 10 Share %)**  
  `sql/04_revenue_concentration_top10.sql`
- **KPI 5 – Revenue by Country**  
  `sql/05_revenue_by_country.sql`
- **KPI 6 – Customer Purchase Frequency**  
  `sql/06_customer_frequency.sql`

## Key Insights (Summary)
- Revenue and invoice volume can be tracked monthly to identify trends.
- Top customers can be identified and used to measure revenue concentration.
- Country-level performance helps highlight top markets and supports BI mapping.
- Customer frequency segmentation demonstrates retention-style analysis and highlights dataset limitations.

## How to Run
1. Load the Chinook PostgreSQL script into a database (e.g., `chinook`) using pgAdmin.
2. Open any SQL file under `/sql` and run the queries.

## Next Improvements
- Add a Power BI dashboard based on these KPIs
- Add customer lifetime value (CLV) and cohort analysis
