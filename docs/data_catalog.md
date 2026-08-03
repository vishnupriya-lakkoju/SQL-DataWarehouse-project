# Data Catalog for Gold Layer

## Overview
The Gold Layer represents the final business-ready data model in the data warehouse. It is designed using a Star Schema consisting of **dimension views** and **fact views** that support reporting, dashboards, and business analytics.

---

## 1. gold_dim_customers

**Purpose:**  
Stores customer information enriched with demographic and geographic details by combining CRM and ERP data.

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| customer_key | INT | Surrogate key generated for each customer record. |
| customer_id | INT | Unique customer identifier from the CRM system. |
| customer_number | VARCHAR(50) | Business identifier used to identify the customer. |
| first_name | VARCHAR(50) | Customer's first name. |
| last_name | VARCHAR(50) | Customer's last name. |
| country | VARCHAR(50) | Customer's country of residence. |
| marital_status | VARCHAR(50) | Customer's marital status (Single, Married, or n/a). |
| gender | VARCHAR(50) | Customer's gender obtained from CRM or ERP data. |
| birthdate | DATE | Customer's date of birth. |
| create_date | DATE | Date when the customer record was created. |

---

## 2. gold_dim_products

**Purpose:**  
Stores product information along with category details to support product-based business analysis.

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| product_key | INT | Surrogate key generated for each product. |
| product_id | INT | Unique product identifier. |
| product_number | VARCHAR(50) | Product business key. |
| product_name | VARCHAR(50) | Name of the product. |
| category_id | VARCHAR(50) | Product category identifier. |
| category | VARCHAR(50) | Product category name. |
| subcategory | VARCHAR(50) | Product subcategory name. |
| maintenance | VARCHAR(50) | Indicates whether the product requires maintenance. |
| cost | INT | Product cost. |
| product_line | VARCHAR(50) | Product line such as Mountain, Road, Touring, or Other Sales. |
| start_date | DATETIME | Date and time when the product became active. |

---

## 3. gold_fact_sales

**Purpose:**  
Stores sales transaction data by linking customers and products through surrogate keys.

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| order_number | VARCHAR(50) | Unique sales order number. |
| product_key | INT | Foreign key referencing the product dimension. |
| customer_key | INT | Foreign key referencing the customer dimension. |
| order_date | DATE | Date when the order was placed. |
| shipping_date | DATE | Date when the order was shipped. |
| due_date | DATE | Payment due date for the order. |
| sales_amount | DECIMAL(10,2) | Total sales amount for the order line. |
| quantity | INT | Number of products sold. |
| price | DECIMAL(10,2) | Price per unit of the product. |
