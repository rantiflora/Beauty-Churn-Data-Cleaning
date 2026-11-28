-- 11_find_inconsistent_categories
-- Purpose: show only products whose category is written inconsistently
-- Result: 2 rows, PROD-02 ('serum ') and PROD-05 ('TONER')
SELECT
  Product_ID,
  Product_Name,
  Product_Category,
  LENGTH(Product_Category) AS text_length,
  Product_Category != TRIM(Product_Category) AS has_extra_space,
  TRIM(Product_Category) != REPLACE(INITCAP(TRIM(Product_Category)), 'Spf', 'SPF') AS has_wrong_case
FROM beauty_churn.dim_product_step4
WHERE Product_Category != REPLACE(INITCAP(TRIM(Product_Category)), 'Spf', 'SPF');

-- 12_fix_inconsistent_categories
-- Purpose: trim spaces and standardize category capitalization
-- Result: 4 clean categories (Cleanser, Moisturizer & SPF, Serum, Toner)
CREATE OR REPLACE TABLE beauty_churn.dim_product_step4 AS
SELECT * REPLACE (
  REPLACE(INITCAP(TRIM(Product_Category)), 'Spf', 'SPF') AS Product_Category
)
FROM beauty_churn.dim_product_step3;
