# 📦 Amazon Sales Intelligence: From EDA to Business Solutions

## 🚀 Project Overview
This project focuses on performing an **Exploratory Data Analysis (EDA)** and solving critical business problems using a dataset of 50,000+ rows. By analyzing data from various interconnected tables, I aimed to uncover insights, detect anomalies, and provide actionable solutions to optimize business processes for Amazon's operations. 🛒

---

## 📊 Dashboard Access  
👉 **Explore the Dashboard**  
 Due to data source restrictions and Tableau Public’s limitations on publishing workbooks with extracted or non-supported live connections (e.g., PostgreSQL), the interactive dashboard cannot be published publicly. However, a high-quality PDF version is provided for review.:  
- [📄 View Dashboard (PDF)](https://github.com/SaipavanKatta28/Amazon_Sales_Analysis/blob/main/Amazon%20sales%20Analysis%20Dashboard.pdf)  


---

## 🛠️ Technologies Used
- **PostgreSQL**: Used for database querying and schema validation  
- **SQL**: Wrote advanced queries for exploration and solving business problems  
- **Power Query**: ETL (Extract, Transform, Load) used during Tableau preprocessing  
- **Tableau**: Designed an interactive multi-page dashboard to visualize insights

---

## 💡 What Makes This Project Unique?
- **Real-World Problems**: Tackles realistic challenges faced in large-scale e-commerce operations  
- **Scalable Dataset**: Demonstrates ability to handle large data volumes  
- **Actionable Insights**: Offers data-driven recommendations to enhance business processes  
- **Interactive Tableau Dashboard**: Clean, intuitive visuals that help stakeholders easily explore findings

---

## 📈 Dashboard Pages (in Tableau)
- **Overview**: Key KPIs like revenue, sales, profit, and trends  
- **Sales**: Trends over time, actual vs. target sales, and category contribution  
- **Customer**: Retention, behavior patterns, and segmentation  
- **Product**: Performance metrics, margins, and return rates  
- **Logistics**: Shipping delays, inventory updates, and delivery analysis  
- **Insights**: Consolidated metrics including inactive sellers, payment modes, and order statuses

---

## 🔑 Project Objectives

### 🎯 Primary Goals:
- Understand relationships across multiple tables  
- Conduct data quality checks for accuracy and consistency  
- Generate insights on revenue, sales, customer behavior, and profitability  
- Solve real business challenges using SQL-driven analysis

---

## 💼 Business Problems Solved

### 🔍 1. Data Overview & Quality Checks 🧹
- Explored structure and completeness of all tables  
- Checked for null values, duplicate keys, and FK mismatches  
- Ensured integrity in data relationships

### 📦 2. Inventory Management Automation 🚛
- Automated stock deduction post-sale  
- Synced inventory updates after product returns

### 💰 3. Revenue Forecasting 📈
- Calculated prior quarter’s average monthly revenue  
- Forecasted next quarter’s revenue using trend-based logic

### 🛒 4. Dynamic Pricing Adjustments 💸
- +10% price hike for products with >500 units sold  
- -5% price drop for products with <100 units sold

### 📊 5. Monthly Profit Analysis 💹
- Automated calculation of product-level monthly profits (Revenue - COGS)  
- Stored results in a dedicated `monthly_profit` table

### 📝 6. Seller Sales Reporting 📃
- Generated quarterly reports per seller, including:
  - Total Revenue  
  - Order Volume  
  - Top Performing Products

### 🚨 7. Anomaly Detection
- Identified pricing outliers and inconsistencies  
- Flagged missing shipping or payment data

### 📆 8. Sales Trends & Regional Analysis
- Detected monthly trends, customer patterns, and geographical sales shifts

### 👥 9. Customer Segmentation & Insights
- Labeled customers as Returning or New  
- Identified top spenders by state  
- Proposed cross-sell strategies (e.g., Product A buyers not buying Product B)

---

## 📊 Dataset Details
The dataset spans 50,000+ records across several interrelated tables:

| Table       | Description |
|-------------|-------------|
| `Category`  | Product category details |
| `Customers` | Customer names, locations, and addresses |
| `Sellers`   | Seller information and locations |
| `Products`  | Product specs, price, COGS, and category |
| `Orders`    | Order records with date and status |
| `Order_Items` | Line item details per order |
| `Payments`  | Payment method and status |
| `Shipping`  | Shipment provider and delivery outcomes |
| `Inventory` | Stock availability and warehouse mapping |

---

## ⚙️ EDA Workflow

### 🧠 Steps Followed:
- **Data Overview**: Profiled structure, types, and summary stats  
- **Quality Checks**: Validated keys, cleaned inconsistencies  
- **Descriptive Stats**: Average price, sales volume, profit margins  
- **Relationship Exploration**: Mapped foreign key links and usage  
- **Trend Analysis**: Monthly, quarterly, and category-wise trend tracking  
- **Outlier Detection**: Identified unusual values and missing attributes  
- **Visualization Prep**: Transformed summaries for Tableau analysis

---

## 🌟 Key Highlights
- ✅ Handled 50,000+ records across 9 relational tables  
- 🧠 Developed 40+ advanced SQL queries including window functions  
- 🔄 Automated inventory logic for real-time accuracy  
- 📊 Delivered a multi-layered Tableau dashboard  
- 🔍 Provided solutions for pricing, retention, and revenue strategy

---

## 🚀 Future Scope
- **Predictive Modeling**: Apply ML for sales forecasting and churn prediction  
- **Geographic Expansion**: Dive deeper into region-wise sales and logistics  
- **Web Integration**: Convert dashboard to a web app using Tableau Embedding or Python (Flask/Streamlit)

---

## 📬 Contact

**Your Name**  
📧 your.email@example.com  
🔗 [LinkedIn](https://linkedin.com/in/yourprofile)  
🌐 [Portfolio](https://yourportfolio.com)

---
