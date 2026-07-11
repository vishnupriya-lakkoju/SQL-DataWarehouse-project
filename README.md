# 🚀 SQL Data Warehouse & Analytics Project (MySQL)

## 📌 Project Overview

This project demonstrates the design and implementation of a modern Data Warehouse using **MySQL**. The objective is to extract data from multiple source systems, transform and clean it through ETL processes, and load it into a structured data warehouse for business reporting and analytics.

The project follows the **Medallion Architecture** (Bronze, Silver, and Gold) to organize data efficiently and build a scalable analytical solution.

---

# 🏗️ Data Architecture

The project is organized into three layers:

### 🥉 Bronze Layer

* Imports raw ERP and CRM datasets from CSV files.
* Stores source data without modification.
* Serves as the landing layer for all incoming data.

### 🥈 Silver Layer

* Cleans and validates the raw data.
* Removes duplicate records.
* Handles missing values.
* Standardizes data formats.
* Integrates data from different source systems.

### 🥇 Gold Layer

* Creates business-ready datasets.
* Implements a Star Schema with Fact and Dimension tables.
* Optimized for reporting and analytical queries.

---

# 🔄 ETL Pipeline

The ETL process consists of:

1. Extract data from ERP and CRM CSV files.
2. Load raw data into the Bronze layer.
3. Clean and transform the data in the Silver layer.
4. Create analytical models in the Gold layer.
5. Perform SQL-based analytics and reporting.

---

# 📊 Data Modeling

The warehouse is designed using a **Star Schema**.

### Dimension Tables

* DimCustomer
* DimProduct
* DimDate

### Fact Table

* FactSales

This structure improves query performance and simplifies business analysis.

---

# 📈 Analytics & Reporting

The warehouse supports business analysis such as:

* Customer Behavior Analysis
* Product Performance Analysis
* Sales Trend Analysis
* Revenue Analysis
* Monthly and Yearly Sales Reports
* Top Selling Products
* Top Customers
* Regional Sales Analysis

---

# 🛠️ Technologies Used

* MySQL
* MySQL Workbench
* SQL
* ETL
* Data Warehousing
* Star Schema
* Draw.io
* Git
* GitHub

---

# 📂 Project Structure

```text
data-warehouse-project/
│
├── datasets/
│
├── docs/
│   ├── data_architecture.drawio
│   ├── data_flow.drawio
│   ├── data_models.drawio
│   ├── data_catalog.md
│
├── scripts/
│   ├── bronze/
│   ├── silver/
│   ├── gold/
│
├── tests/
│
├── README.md
├── LICENSE
└── .gitignore
```

---

# 💡 Skills Demonstrated

* SQL Development
* MySQL Database Design
* Data Warehousing
* ETL Pipeline Development
* Data Cleaning
* Data Transformation
* Data Modeling
* Star Schema Design
* Analytical SQL Queries
* Database Management

---

# 🎯 Project Objectives

* Build a modern Data Warehouse using MySQL.
* Design a Medallion Architecture.
* Develop ETL pipelines.
* Create Fact and Dimension tables.
* Generate analytical reports using SQL.
* Apply Data Warehousing best practices.

---

# 📊 Sample Business Questions

This project helps answer questions such as:

* Which products generate the highest revenue?
* Who are the top customers?
* What are the monthly sales trends?
* Which product categories perform best?
* Which regions contribute the most sales?
* How has the business performed over time?

---

# 📖 Learning Outcomes

Through this project, I gained practical experience in:

* Designing Data Warehouse architectures
* Building ETL pipelines
* Cleaning and transforming raw datasets
* Implementing Star Schema models
* Writing advanced SQL queries
* Performing business analytics using MySQL
* Applying Data Engineering concepts

---

# 👨‍💻 About Me

I am currently pursuing a Master of Computer Applications (MCA) and continuously improving my skills in SQL, MySQL, Python, Data Engineering, Database Management Systems, and Software Development.

This project is part of my portfolio to demonstrate practical experience in building Data Warehouse solutions and performing business analytics using MySQL.

Thank you for visiting my project. Feedback and suggestions are always welcome.

