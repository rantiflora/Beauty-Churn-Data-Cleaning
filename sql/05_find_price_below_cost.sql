-- 08_find_price_below_cost
-- Purpose: find products priced below their unit cost
-- Result: 1 row, PROD-13 (cost 14, price 9) 
SELECT Product_ID,Product_Name,Unit_Cost_USD,Retail_Price_USD FROM beauty_churn.dim_product_step3 WHERE Retail_Price_USD < Unit_COST_USD;
