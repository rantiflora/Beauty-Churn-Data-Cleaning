-- 06_find_negative_cost
-- Purpose: find products with a negative unit cost
-- Result: 1 row, PROD-07 with Unit_Cost_USD = -8
SELECT Product_ID,Product_Name,Unit_Cost_USD,Retail_Price_USD FROM beauty_churn.dim_product_step2 WHERE Unit_Cost_USD <0;
