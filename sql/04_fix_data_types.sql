-- 04_fix_data_types
-- Purpose: convert numeric columns from STRING to numeric types
-- Result: Expected_Refill_Days is INTEGER, cost and price columns are FLOAT
CREATE  OR REPLACE TABLE beauty_churn.dim_product_step2 AS SELECT * REPLACE (SAFE_CAST(Expected_Refill_Days AS INT64) AS Expected_Refill_Days,SAFE_CAST(Unit_Cost_USD AS FLOAT64) AS Unit_Cost_USD,SAFE_CAST(Retail_Price_USD AS FLOAT64) AS Retail_Price_USD) FROM beauty_churn.dim_product_step1;
