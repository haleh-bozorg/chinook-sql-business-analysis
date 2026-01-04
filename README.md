# Chinook Sales Analytics  
**SQL Portfolio Project (PostgreSQL + Power BI)**

![Chinook Sales Dashboard](assets/chinook_dashboard.png)

## Overview

This project analyzes **sales performance and customer behavior** using the **Chinook** sample database in **PostgreSQL**. The objective is to demonstrate business-focused **SQL analytics skills on a relational schema**, including multi-table joins, CTE-based aggregations, and customer-level revenue analysis commonly used in sales and finance reporting.

The analysis focuses on translating transactional data into **clear KPIs and actionable insights**, with results presented in an executive-style **Power BI dashboard**.

---

## Business Questions Addressed

- How has **monthly revenue** changed over time?
- Which customers contribute the most to total revenue?
- What percentage of revenue comes from **top customers**?
- Which countries generate the highest revenue?
- What is the **average invoice value**?
- How frequently do customers purchase (repeat vs low-frequency behavior)?

---

## Primary Business KPIs

This analysis focuses on a core set of sales KPIs commonly used in business and finance reporting:

- **Total Revenue**
- **Monthly Revenue Trend**
- **Average Invoice Value**
- **Top Customer Revenue Share**
- **Revenue by Country**

Additional queries support deeper customer segmentation and exploratory analysis.

---

## Tools & Technologies

- **PostgreSQL** (pgAdmin)
- **SQL** (CTEs, joins, aggregations, filtering)
- **Power BI** (KPI cards, trends, geographic visuals)
- **GitHub**

---

## Dataset Notes

The Chinook database is a **sample dataset**.  
Some observed patterns (e.g., customer purchasing behavior) reflect dataset design rather than real-world commercial dynamics.

> The focus of this project is **analytical structure, clarity, and business logic**, not domain realism.

---

## Data Model & Core Tables

- **Customer**: customer details and geographic information  
- **Invoice**: sales transactions at the invoice level  
- **InvoiceLine**: line-level purchase details  
- **Track**: individual products sold  
- **Album & Artist**: product hierarchy  
- **Genre**: product category classification  

### Key Relationships
- Customer → Invoice → InvoiceLine → Track → Album → Artist  
- Track → Genre

---


## KPIs & SQL Implementation
“Each KPI is derived directly from transactional data using SQL joins between Customer, Invoice, and InvoiceLine tables.”

Each KPI is implemented as a standalone SQL script:

- **KPI 1 – Overall Sales Performance**  
  [`sql/01_overall_kpis.sql`](sql/01_overall_kpis.sql)

- **KPI 2 – Monthly Revenue Trend**  
  [`sql/02_monthly_revenue_trend.sql`](sql/02_monthly_revenue_trend.sql)

- **KPI 3 – Top Customers by Revenue**  
  [`sql/03_top_customers.sql`](sql/03_top_customers.sql)

- **KPI 4 – Revenue Concentration (Top 10 Share %)**  
  [`sql/04_revenue_concentration_top10.sql`](sql/04_revenue_concentration_top10.sql)

- **KPI 5 – Revenue by Country**  
  [`sql/05_revenue_by_country.sql`](sql/05_revenue_by_country.sql)

- **KPI 6 – Customer Purchase Frequency Segmentation**  
  [`sql/06_customer_frequency.sql`](sql/06_customer_frequency.sql)
  
---

## Dashboard Overview (Power BI)

The dashboard provides an executive-level snapshot of sales performance, combining SQL-derived KPIs with trend and geographic analysis.

It includes:
- KPI cards (Revenue, Invoices, Customers, Average Invoice Value)
- Monthly revenue trend
- Revenue by country
- Customer revenue concentration insight

---

## Key Insights

- Monthly aggregation provides a clear view of revenue movement over time, supporting trend monitoring.
- The **top 10 customers contribute approximately 19%** of total revenue, indicating **moderate revenue concentration** and low dependency on a small customer segment.
- Revenue is geographically concentrated, with a limited number of countries driving most sales—useful for prioritizing reporting and market focus.

Analytical choices such as revenue concentration metrics and customer-level aggregation are used to capture distribution behavior and reduce sensitivity to long-tail effects without unnecessary predictive modeling.

---

## Production Readiness & Practical Use

While this project was not deployed in a live production environment, the analysis and SQL queries are designed to be production-ready:

- SQL logic is modular, reusable, and separated by KPI
- Queries operate directly on transactional tables using standard relational joins
- KPI definitions align with common sales and finance reporting practices
- The dashboard structure supports refresh with new data without changes to logic

## How to Run

1. Load the Chinook PostgreSQL SQL script into a database (e.g., `chinook`) using pgAdmin.
2. Execute any SQL file under the `/sql` directory to reproduce individual KPIs.
3. Use the query outputs as inputs for visualization in Power BI.

---

## Possible Extensions

- Customer Lifetime Value (CLV) estimation using historical invoice data
- Revenue-based customer segmentation (low / medium / high value customers)
- Genre-level revenue contribution analysis to identify top-performing categories

