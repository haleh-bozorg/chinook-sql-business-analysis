# Chinook Sales Analytics  
(SQL Portfolio Project – PostgreSQL)

## Overview
This project analyzes sales performance and customer behavior using the **Chinook sample database** in **PostgreSQL**.

The objective is to demonstrate **business-focused SQL analytics skills**, including:
- KPI definition
- Aggregations and joins
- CTEs and window-style analysis
- Translating raw transaction data into **actionable insights**

## Business Questions Addressed
- How has monthly revenue changed over time?
- Which customers contribute the most to total revenue?
- What percentage of revenue comes from top customers?
- Which countries generate the highest revenue?
- What is the average invoice value?
- How frequently do customers purchase (repeat vs low-frequency)?

## Tools & Technologies
- **PostgreSQL** (pgAdmin)
- **SQL** (CTEs, aggregations, grouping, filtering)

## Dataset Notes
The Chinook database is a **sample dataset**.
Some observed patterns (e.g., high customer repeat frequency) reflect dataset design
rather than real-world commercial behavior.
This project focuses on **analytical method and structure**, not domain realism.

## KPIs & SQL Implementation
Each KPI is implemented as a standalone, well-documented SQL script:

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
- **KPI 6 – Customer Purchase Frequency Segmentation**  
  `sql/06_customer_frequency.sql`

## Key Insights
- Revenue trends are more interpretable after monthly aggregation.
- The top 10 customers contribute approximately **19% of total revenue**, indicating
  moderate revenue concentration and low dependency on a small customer segment.
- Country-level analysis highlights geographic revenue distribution.
- Purchase frequency segmentation demonstrates retention-style analysis logic.

## How to Run
1. Load the Chinook PostgreSQL SQL script into a database (e.g., `chinook`) using pgAdmin.
2. Open any file under `/sql` and execute the queries in order or independently.

## Visualization
Core KPIs and trends were visualized using **Power BI** to support executive-style reporting
(e.g., KPI cards, monthly trends, country breakdown).

## Possible Extensions
- Customer Lifetime Value (CLV)
- Cohort-based retention analysis
- Genre-level profitability analysis
