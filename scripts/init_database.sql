/*
=============================================================
Create Data Warehouse Database
=============================================================
Purpose:
    - Create a dedicated database for the Data Warehouse project.
    - Store Bronze, Silver, and Gold layer tables.
    - Use this database for all ETL and analytics operations.

Author : Vishnu
Database : datawarehouse
=============================================================
*/

-- Create the database if it does not already exist
CREATE DATABASE IF NOT EXISTS datawarehouse;

-- Select the database
USE datawarehouse;
