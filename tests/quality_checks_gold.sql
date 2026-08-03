/*===========================================================
    QUALITY CHECKS - GOLD LAYER
===========================================================*/

--===========================================================
-- GOLD DIM CUSTOMERS
--===========================================================

-- Check for duplicate customer keys
SELECT
    customer_key,
    COUNT(*) AS total_records
FROM gold_dim_customers
GROUP BY customer_key
HAVING COUNT(*) > 1;

-- Check for duplicate customer IDs
SELECT
    customer_id,
    COUNT(*) AS total_records
FROM gold_dim_customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Check for NULL customer IDs
SELECT *
FROM gold_dim_customers
WHERE customer_id IS NULL;

-- Check country values
SELECT DISTINCT country
FROM gold_dim_customers;

-- Check marital status values
SELECT DISTINCT marital_status
FROM gold_dim_customers;

-- Check gender values
SELECT DISTINCT gender
FROM gold_dim_customers;

--===========================================================
-- GOLD DIM PRODUCTS
--===========================================================

-- Check duplicate product keys
SELECT
    product_key,
    COUNT(*) AS total_records
FROM gold_dim_products
GROUP BY product_key
HAVING COUNT(*) > 1;

-- Check duplicate product IDs
SELECT
    product_id,
    COUNT(*) AS total_records
FROM gold_dim_products
GROUP BY product_id
HAVING COUNT(*) > 1;

-- Check NULL product IDs
SELECT *
FROM gold_dim_products
WHERE product_id IS NULL;

-- Check category values
SELECT DISTINCT category
FROM gold_dim_products;

-- Check subcategory values
SELECT DISTINCT subcategory
FROM gold_dim_products;

-- Check product line values
SELECT DISTINCT product_line
FROM gold_dim_products;

--===========================================================
-- GOLD FACT SALES
--===========================================================

-- Check for NULL product keys
SELECT *
FROM gold_fact_sales
WHERE product_key IS NULL;

-- Check for NULL customer keys
SELECT *
FROM gold_fact_sales
WHERE customer_key IS NULL;

-- Check sales amount
SELECT *
FROM gold_fact_sales
WHERE sales_amount <= 0;

-- Check quantity
SELECT *
FROM gold_fact_sales
WHERE quantity <= 0;

-- Check price
SELECT *
FROM gold_fact_sales
WHERE price <= 0;

-- Check duplicate order numbers
SELECT
    order_number,
    COUNT(*) AS total_records
FROM gold_fact_sales
GROUP BY order_number
HAVING COUNT(*) > 1;

--===========================================================
-- RECORD COUNTS
--===========================================================

SELECT COUNT(*) AS total_customers
FROM gold_dim_customers;

SELECT COUNT(*) AS total_products
FROM gold_dim_products;

SELECT COUNT(*) AS total_sales
FROM gold_fact_sales;
