/*===========================================================
    QUALITY CHECKS - SILVER LAYER
===========================================================*/

--===========================================================
-- CRM CUSTOMER
--===========================================================

-- Check for duplicate customer IDs
SELECT
    cst_id,
    COUNT(*) AS total_records
FROM silver_crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1;

-- Check for NULL customer IDs
SELECT *
FROM silver_crm_cust_info
WHERE cst_id IS NULL;

-- Check for unwanted spaces
SELECT *
FROM silver_crm_cust_info
WHERE cst_firstname <> TRIM(cst_firstname);

SELECT *
FROM silver_crm_cust_info
WHERE cst_lastname <> TRIM(cst_lastname);

-- Check marital status values
SELECT DISTINCT cst_material_status
FROM silver_crm_cust_info;

-- Check gender values
SELECT DISTINCT cst_gndr
FROM silver_crm_cust_info;

--===========================================================
-- CRM PRODUCT
--===========================================================

-- Check for NULL product IDs
SELECT *
FROM silver_crm_prd_info
WHERE prd_id IS NULL;

-- Check duplicate product IDs
SELECT
    prd_id,
    COUNT(*)
FROM silver_crm_prd_info
GROUP BY prd_id
HAVING COUNT(*) > 1;

-- Check product cost
SELECT *
FROM silver_crm_prd_info
WHERE prd_cost < 0;

-- Check product line values
SELECT DISTINCT prd_line
FROM silver_crm_prd_info;

--===========================================================
-- CRM SALES
--===========================================================

-- Invalid order dates
SELECT *
FROM silver_crm_sales_details
WHERE sls_order_dt IS NULL;

-- Invalid ship dates
SELECT *
FROM silver_crm_sales_details
WHERE sls_ship_dt IS NULL;

-- Invalid due dates
SELECT *
FROM silver_crm_sales_details
WHERE sls_due_dt IS NULL;

-- Sales mismatch
SELECT *
FROM silver_crm_sales_details
WHERE sls_sales <> sls_quantity * ABS(sls_price);

-- Negative quantity
SELECT *
FROM silver_crm_sales_details
WHERE sls_quantity <= 0;

--===========================================================
-- ERP CUSTOMER
--===========================================================

-- Invalid birth dates
SELECT *
FROM silver_erp_cust_az12
WHERE bdate > CURRENT_DATE();

-- Gender values
SELECT DISTINCT gen
FROM silver_erp_cust_az12;

--===========================================================
-- ERP LOCATION
--===========================================================

-- Country values
SELECT DISTINCT cntry
FROM silver_erp_loc_a101;

--===========================================================
-- ERP CATEGORY
--===========================================================

-- Check NULL category IDs
SELECT *
FROM silver_erp_px_cat_g1v2
WHERE id IS NULL;

-- Check duplicate category IDs
SELECT
    id,
    COUNT(*)
FROM silver_erp_px_cat_g1v2
GROUP BY id
HAVING COUNT(*) > 1;
