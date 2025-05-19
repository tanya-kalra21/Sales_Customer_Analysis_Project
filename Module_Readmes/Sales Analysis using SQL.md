# 📊 Superstore Sales Analysis using SQL

## 🎯 Business Goal

The objective of this project is to analyze Superstore's performance using SQL by identifying sales patterns, customer behavior, product trends, and profitability across different regions and categories. This insight aims to help stakeholders make strategic decisions regarding marketing, inventory, and customer engagement.

---

## ❓ Key Questions Answered

- What are the total sales, profit, quantity sold, and total orders?
- Which are the top-performing products by revenue?
- How do different categories and sub-categories perform in terms of sales and profit?
- What are the sales trends over time?
- Who are the most valuable customers?
- How can customers be segmented based on Recency, Frequency, and Monetary (RFM) value?
- Are there any underperforming areas or profit leakages?

---

## 🛠️ Steps Involved

### 1. Data Preparation & Cleaning
- Created a temporary staging table to load raw Superstore data.
- Cleaned columns for consistency (dates, strings, nulls).

### 2. Data Modeling
- Created 4 normalized SQL tables:
  - `customers`
  - `orders`
  - `products`
  - `order_items`
- Established foreign key relationships between these tables.

### 3. Initial Exploration
- Counted total rows in each table to verify data.
- Checked for missing values (NULLs) in all critical fields.

### 4. KPI Calculation
- Total Sales, Total Profit, Quantity Sold, Total Orders.
- Calculated overall Profit Margin = Profit / Sales.

### 5. Product Performance
- Identified top 10 selling products using JOINs and aggregation.
- Ranked by sales revenue.

### 6. Category & Sub-Category Analysis
- Aggregated sales and profit by Category and Sub-Category.
- Calculated Profit Margins to identify high and low performers.

### 7. Monthly Sales Trend
- Used `YEAR()` and `MONTH()` functions to group order dates.
- Tracked monthly revenue changes to identify seasonal trends.

### 8. Customer Segmentation
- Segmented customers based on total spend and order volume.
- Identified top revenue-generating customers.

### 9. RFM Analysis
- **Recency**: Days since last purchase
- **Frequency**: Total number of orders
- **Monetary**: Total spend
- Assigned scores and created customer tiers (e.g., Loyal, At Risk, New).

---

## 🔍 Key Insights

- 💡 **Top Products**: A small set of products contribute to a major portion of sales—ideal for upselling and bundling.
- 📦 **Category Trends**: Technology products deliver high profits, while Office Supplies need better cost control due to lower margins.
- 📅 **Monthly Trends**: Noticeable spikes in sales mid-year suggest seasonal patterns worth aligning promotions with.
- 🌐 **Customer Base**: A few high-value customers contribute disproportionately to revenue—worth targeting through personalized campaigns.
- 📉 **Profit Leaks**: Some products and states show high sales but poor profits—possibly due to discounts, returns, or high delivery costs.
- 🧠 **RFM Segmentation**: Enabled targeted marketing strategies by identifying loyal, at-risk, and high-spend customers.

---

## 🧰 Tools & Skills Used

- SQL (MySQL)
- Relational Database Design
- Data Cleaning and Transformation
- Aggregation, Joins, Window Functions
- RFM Segmentation