-- =====================================================
-- KPI 2: Monthly Revenue Trend
-- Description:
--   Aggregates revenue and invoice volume by month.
-- =====================================================

SELECT
  DATE_TRUNC('month', invoice_date)::date AS month,
  ROUND(SUM(total), 2)                    AS monthly_revenue,
  COUNT(invoice_id)                       AS total_invoices
FROM invoice
GROUP BY 1
ORDER BY 1;
