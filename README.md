# 📊 Amazon Sales Intelligence: From EDA to Business Solutions

🚀 **Project Overview**  
This project demonstrates how Exploratory Data Analysis (EDA) and SQL-driven insights can solve real-world business problems for a large-scale e-commerce platform like Amazon. With over 50,000 rows of transactional data across multiple tables, this analysis highlights performance trends, customer behavior, logistics issues, and strategic opportunities using **PostgreSQL** and **Tableau**.

---

## 🔍 Dashboard Preview

> 📌 *Due to Tableau Public publishing limitations, the interactive dashboard is shared in downloadable formats below.*

📄 [**PDF Version of the Dashboard**](#)  


These documents include 6 dynamic dashboard pages covering:
- Revenue & Profit Trends
- Customer Behavior & Segmentation
- Product Performance
- Inventory & Logistics Insights
- Strategic KPIs (e.g., Churn Rate, Inactive Sellers, Return Time)

---

## 🛠️ Technologies Used
| Tool         | Purpose                                       |
|--------------|-----------------------------------------------|
| PostgreSQL   | Data querying and integrity validation        |
| SQL          | Complex joins, aggregations, window functions |
| Tableau / Power BI | Visualization, KPI tracking, dashboard creation |
| Power Query  | ETL operations and calculated columns         |

---

## 💡 What Makes This Project Stand Out?
- **Real-World Business Cases**: Tackles practical e-commerce challenges like customer retention, inventory delays, churn, pricing optimization, and anomaly detection.
- **Multi-Table Relationships**: Efficient joins across normalized schemas including `orders`, `products`, `payments`, `shipping`, etc.
- **KPI-Driven Analysis**: Measures success through dynamic KPIs like average delivery time, churn rate, and customer segmentation.
- **Recruiter-Ready Visuals**: Professionally designed dashboard, with rich color-coding, KPI cards, line/bar/donut charts, filters, and tile controls.
- **Scalable Design**: Handles large datasets with reusable logic and optimized calculations.

---

## 💼 Business Problems Solved

### 1️⃣ Data Quality & Structure Validation
- Checked for nulls, duplicate keys, and mismatched foreign keys
- Ensured relational integrity across `orders`, `order_items`, `products`, `customers`, etc.

### 2️⃣ Inventory Management Automation
- Real-time stock deduction after sales
- Inventory auto-updates after product returns

### 3️⃣ Revenue Forecasting
- Predicted future revenue using prior-quarter monthly averages

### 4️⃣ Dynamic Pricing Strategy
- Boosted prices of high-demand products (>500 units sold)
- Discounted slow-moving inventory (<100 units sold)

### 5️⃣ Profitability & Sales Insights
- Calculated monthly profit by product: `Revenue - COGS`
- Built a `monthly_profit` fact table

### 6️⃣ Customer Segmentation
- Tagged customers as **Returning** or **New** based on return history
- Ranked top customers by spending and frequency

### 7️⃣ Churn & Anomaly Detection
- Identified churned products and inactive sellers
- Flagged unusual prices or missing payment/shipping info

### 8️⃣ Logistics & Shipping KPIs
- Average delivery time
- Average return time
- Pending shipment percentage
- Shipping delays by days

### 9️⃣ Executive KPIs & Metrics
- Successful orders %
- Payment success rate
- Customer Lifetime Value (CLTV)
- Profit margin by product/category

---

## 📊 Dataset Overview

| Table         | Description |
|---------------|-------------|
| `Category`    | Product category metadata |
| `Customers`   | Customer demographics and region |
| `Sellers`     | Seller ID, state, and origin |
| `Products`    | SKU info, price, COGS, category |
| `Orders`      | Customer orders and status |
| `Order_items` | Quantity, total sales, discounts |
| `Payments`    | Payment status and methods |
| `Shipping`    | Shipment status, dates, returns |
| `Inventory`   | Product availability and stock |

---

## 📈 Highlights

- 💾 50,000+ rows analyzed
- 🧮 40+ complex SQL queries written
- 📈 25+ calculated fields in Power BI/Tableau
- ⚙️ 6-page professional dashboard with slicers, filters, cards, and tooltips
- 🎯 KPIs covering sales, customers, sellers, logistics, and more

---

## 🧭 Future Scope

- ✅ Add ML models for demand forecasting
- ✅ Enhance churn prediction using classification techniques
- ✅ Expand to multi-region or seasonal analysis
- ✅ Build embedded analytics using Python Streamlit or Flask

---




