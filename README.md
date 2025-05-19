# 📊 Project Overview: Superstore Sales Analysis
This project presents an end-to-end data analysis of Superstore sales data using Excel, Python, SQL, and Tableau. The goal was to uncover actionable insights that can help improve business decision-making around product performance, customer trends, regional sales, and profitability.

The analysis was divided into four main stages:

🔹 Python for deeper data exploration, segmentation, and visualization using libraries like Pandas and Matplotlib.

🔹 SQL for structured querying of cleaned datasets to uncover insights like  customer behavior, and revenue trends , RFM segmentation.

🔹 Tableau for creating a dynamic and interactive dashboard to present KPIs and regional performance in a visually appealing format.

🔹 Excel for initial data cleaning, trend analysis, and dashboarding using PivotTables.

Each module focuses on different layers of the data and complements the others to provide a comprehensive business analysis.

---

## 📂 Dataset
Source: Kaggle – Superstore Dataset

Records: ~10,000

Fields: Order Date, Ship Mode, Customer Segment, Product Category, Sales, Profit, Discount, Region, etc

---

## 🛠️ Tools Used
Python (Pandas, Matplotlib, Seaborn for EDA)

MySQL (Data Extraction, Aggregation, Customer Analysis)

Tableau (Interactive Dashboards)

Excel (Data Cleaning, Pivot Tables, Dashboards)

--- 
## FOLDER STRUCTURE 
Sales_Customer_Analysis_Project/
│
├── README.md                            # Main project README
│MODULE_READMES/                      #  Folder for module-wise READMEs
├   ├── Sales Dashboard in Excel.md
├   ├── Sales Analysis using Python.md
├   ├── Sales Analysis using SQL.md
├   └── Sales Dashboard in Tableau.md
├── DATA/                                # Raw & cleaned datasets
│   └── Sample - Superstore.csv
│
├── NOTEBOOKS/                           # Python analysis notebook
│   └── Analysis.ipynb
│
├── SQL/                                 # SQL scripts and cleaned data
│   ├── Superstore_Clean_Data.xlsx
│   ├── Table-Creation And Insertion.sql
│   └── Analysis_queries.sql
│
├── Tableau/                             # Tableau workbook & visuals
│   ├── Final_Tableau Dashboard Analysis.twb
│   └── Superstore Sales Dashboard.png
│
├── Excel/                               # Excel dashboard & data
│   ├── Superstore Sales Dashboard.png
│   └── Superstore_Cleaned.xlsx
│
--- 

## How to Run / View Each Part

### 1. Python Analysis
- Navigate to: `NOTEBOOKS/Analysis.ipynb`
- Tool Required: Jupyter Notebook / VS Code with Python support
- Dataset Used: `Sample - Superstore.csv`
- Analysis Includes:
  - Data cleaning, KPI analysis, customer segmentation
  - Visualizations using Matplotlib & Seaborn

---

### 2. SQL Analysis
- Navigate to: `SQL/`
  - Run `Table-Creation And Insertion.sql` to create and populate tables
  - Run `Analysis_queries.sql` to perform customer/sales analysis
- Tool Required: MySQL / PostgreSQL / DB Fiddle (MySQL 9 used)
- Dataset Used: `Superstore_Clean_Data.xlsx` (cleaned format)

---

### 3. Excel Dashboard
- Navigate to: `Excel/Superstore_Cleaned.xlsx`
- Tool Required: Microsoft Excel
- Dashboard Screenshot: `Superstore Sales Dashboard.png`
- Dashboard Includes:
  - KPIs, Bar , Line and Pie Charts

---

### 4. Tableau Dashboard
- Navigate to: `Tableau/Final_Tableau Dashboard Analysis.twb`
- Tool Required: Tableau Desktop / Tableau Public
- Dataset: Same as Excel (Superstore_Cleaned)
- Dashboard Screenshot: `Superstore Sales Dashboard.png`
- Dashboard Includes:
  - Monthly Revenue, Category-wise Profit, Region Filters, KPIs

---

### 5. Project Documentation
- Navigate to: `MODULE_READMES/`
  - Each `.md` file provides deep-dive documentation for the specific module
  - Includes: Business goal, steps involved, key queries or visuals, insights


