-- 06_find_negative_cost
-- Purpose: find products with a negative unit cost
-- Result: 1 row, PROD-07 with Unit_Cost_USD = -8
SELECT Product_ID,Product_Name,Unit_Cost_USD,Retail_Price_USD FROM beauty_churn.dim_product_step2 WHERE Unit_Cost_USD <0;

-- 07_fix_negative_cost
-- Purpose: convert negative unit cost to its absolute value
-- Result: PROD-07 Unit_Cost_USD changes from -8 to 8
CREATE OR REPLACE TABLE beauty_churn.dim_product_step3 AS SELECT * REPLACE (ABS(Unit_Cost_USD) AS Unit_Cost_USD FROM beauty_churn.dim_product_step2;
