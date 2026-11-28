-- 1. FIND: identify Order_IDs that appear more than once
-- Expected: 5 rows (ORD-5003, ORD-5009, ORD-5015, ORD-5026, ORD-5041), each with row_count = 2
SELECT Order_ID,COUNT(*) AS Row_Count FROM beauty_churn.raw_transaction GROUP BY ORDER_ID HAVING COUNT (*)>1;

-- 2. REMOVE: drop fully identical rows and save the result as a new table
CREATE OR REPLACE TABLE beauty_churn.transaction_step1 AS
SELECT DISTINCT *
FROM beauty_churn.raw_transaction;

-- 3. RESULT: validate the cleaned table
-- Expected: total_rows = 983 and unique_orders = 983
SELECT COUNT(*) AS row_count, COUNT(DISTINCT Order_ID) AS unique_order
FROM beauty_churn.transaction_step1;
