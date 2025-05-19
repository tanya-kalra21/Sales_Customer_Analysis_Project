# 📊 Superstore Sales Analysis using Python

## 🎯 Business Goal
To analyze and uncover sales performance, customer behavior, and shipping efficiency using the Superstore dataset, enabling data-driven decisions for revenue growth and operational optimization.

---

## ❓ Key Questions 

What are the overall sales, profit, quantity, and order metrics?

How have monthly sales and profits trended over time?

Which product categories and sub-categories are performing well or underperforming?

How are different regions and states contributing to sales and profit?

Who are our top customers, and how can we segment them?

How effective is our shipping strategy in terms of delivery time and cost?


---

## 🛠️ Steps Involved

1. Data Cleaning & Exploration using Pandas

Loaded the Superstore dataset using Pandas.

Inspected data types, checked for missing/null values, and reviewed summary statistics.

Cleaned date columns and ensured numerical data types were consistent.

2. Trend & KPI Analysis

Calculated key business metrics:

✅ Total Sales, Total Profit, Total Orders, Total Quantity, and Profit Margin.

Created a monthly trend analysis using Matplotlib:

Plotted monthly Sales and Profit to understand seasonality and performance over time.

3. Category & Sub-category Performance

Analyzed sales and profit across different product categories and sub-categories.

Identified best- and worst-performing product segments.

4. Region-wise Performance

Grouped data by Region to evaluate regional trends in sales and profitability.

Compared performance of Central, East, West, and South regions.

5. Top & Bottom State Analysis

Ranked states by total Profit to identify:

🌟 High-performing states (Top 5)

🚩 Underperforming states (Bottom 5)

6. Customer Insights

Identified Top Customers by sales contribution.

Segmented customers based on RFM Analysis (Recency, Frequency, Monetary value):

Grouped customers into Gold, Silver, Bronze tiers.

7. Shipping Performance Analysis

Evaluated performance by Ship Mode in terms of Sales and Profit.

Analyzed Delivery Time by calculating shipping duration.

Identified any delays or inefficiencies in logistics.


---

## 🔍 Key Insights

📈 Total Sales exceeded ₹22.9 Lakhs, with over 1,800 orders placed and a profit margin of ~12.5%.

📅 November and December showed peak performance in both Sales and Profit — indicating seasonality in shopping behavior.

🖥️ Technology was the most profitable category, while Tables in Furniture showed high sales but poor profit margins.

🌍 West Region outperformed other regions in both Sales and Profit — suggesting regional dominance.

📉 Texas and Ohio contributed to significant losses, pointing to poor-performing geographies.

👤 Top 5% of customers contributed to nearly 30% of revenue — highlighting the importance of high-value clients.

🟢 Standard Class shipping was the most used, but Same Day deliveries had better profit margins.

⏱️ Average delivery time was 3–4 days, but some delays were observed in specific ship modes and states.

---

## 🧰 Tools & Skills Used

- Python (Pandas, Matplotlib)
- Data Cleaning and Exploration
- KPI Generation
- GroupBy and Aggregations
- Trend Analysis