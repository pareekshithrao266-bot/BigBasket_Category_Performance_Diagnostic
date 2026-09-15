# This is the README for the project

## Part 1  SQL Data Setup & Diagnostic

Created a deterministic BigBasket-style database and performed SQL-based category performance analysis. The monthly category revenue report generated here becomes the fixed input for Parts 2 and 3, while the raw exports are used in Part 4.

### Files:

- generate_data.py - Python script that creates the SQLite database and raw CSV exports.
- bigbasket_capstone.db - SQLite database containing products, customers, orders, and category targets.
- products.csv - Product details including category, supplier, and unit price.
- orders_raw.csv - Deliberately messy raw order export used for Part 4.
- verify.sql - SQL verification queries/results for validating the generated database.
- 01_foundations.sql - Fundamental SQL queries covering filtering, DISTINCT, sorting, aliases, IN, BETWEEN, and NULL handling.
- 02_aggregation_joins.sql  Aggregation, INNER JOIN, LEFT JOIN, GROUP BY, and HAVING queries.
- 03_reporting.sql  CASE-based tiering, monthly reporting, category targets, and variance calculations.
- monthly_category_revenue.csv  Clean monthly category revenue report exported from SQL and used as the fixed dataset for Parts 2 and 3.
- ai_log.md  Record of the AI-assisted SQL prompt and its verification.

## Part 2  Spreadsheet Cross-Check

Used the exact monthly_category_revenue.csv generated in Part 1 to independently rebuild category-level totals and compare them against the SQL results.

### Files:

Spreadsheet workbook (.xlsx)  Contains the imported monthly data, category targets, Pivot Table, category summary, formulas, target classifications, and SQL reconciliation results.

## Part 3  Tableau Dashboard & Data Story

Used the same monthly_category_revenue.csv to create an interactive Tableau Public dashboard showing monthly revenue trends, category performance, KPIs, and target performance.

### Outputs:

- Live Tableau Public dashboard  Interactive category performance dashboard.
- README.md / DATA_STORY.md  Written data story containing category performance findings and two business recommendations.
- README.md  Contains the live Tableau Public dashboard link and links to the project artifacts.

### Live Tableau Public dashboard
https://public.tableau.com/authoring/BigBasketCategoryPerformanceDiagnostic_17894793214340/BigBasketCategoryPerformanceDiagnostic#1

## Part 4  Python/Pandas Cleaning & Cross-Validation

Independently cleaned the deliberately messy orders_raw.csv using Pandas, handled duplicates, missing revenue, inconsistent values, and outliers, and analyzed category and supplier performance. The results were cross-validated against the findings from Part 1.

### Files:

- analysis.ipynb  Complete Pandas cleaning, analysis, visualizations, insights, and cross-validation.
- orders_raw.csv  Raw messy order data used as the starting point.
- products.csv  Product and supplier data used for the supplier analysis.
- ai_log.md  Contains the second AI-assisted Pandas prompt and its verification.