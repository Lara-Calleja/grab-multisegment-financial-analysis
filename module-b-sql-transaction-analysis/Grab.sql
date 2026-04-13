COPY paysim
FROM 'D:\DataAnalytics\Portfolio\Grab\ModuleB\archive(2)\PS_20174392719_1491204439457_log.csv'
WITH (FORMAT CSV, HEADER true);
SELECT * FROM paysim;
 --query 1
SELECT 
    type,
    COUNT(*) AS transaction_count,
    ROUND(SUM(amount)) AS total_volume,
    ROUND(AVG(amount)) AS avg_transaction
FROM paysim
GROUP BY type
ORDER BY transaction_count DESC;
--query 2
SELECT
    CASE 
        WHEN nameOrig LIKE 'C%' THEN 'Customer'
        WHEN nameOrig LIKE 'M%' THEN 'Merchant'
        ELSE 'Other'
    END AS sender_type,
    CASE 
        WHEN nameDest LIKE 'C%' THEN 'Customer'
        WHEN nameDest LIKE 'M%' THEN 'Merchant'
        ELSE 'Other'
    END AS receiver_type,
    COUNT(*) AS transaction_count,
    ROUND(AVG(amount)) AS avg_transaction_value
FROM paysim
GROUP BY sender_type, receiver_type
ORDER BY avg_transaction_value DESC;
--query 3
SELECT
    type,
    COUNT(*) AS total_transactions,
    SUM(isFraud) AS actual_fraud,
    SUM(isFlaggedFraud) AS system_flagged,
    ROUND(SUM(isFraud) * 100.0 / COUNT(*), 2) AS fraud_rate_pct
FROM paysim
GROUP BY type
ORDER BY fraud_rate_pct DESC;
--query 4
SELECT
	step % 24 AS hour_of_day, -- hour of the day is derived not native
	COUNT(*) AS transaction_frequency,
	ROUND(AVG(amount)) AS average_amount,
	ROUND(SUM(amount)) AS total_volume
FROM paysim
GROUP BY hour_of_day
ORDER BY transaction_frequency DESC
LIMIT 10; 
--query 5
WITH weekly_data AS(
SELECT
     step / 168 AS week_number,
     COUNT(*) AS total_transactions,
     ROUND(SUM(amount)) AS total_volume
FROM paysim
GROUP BY week_number)

SELECT week_number, total_transactions, total_volume,
	LAG(total_transactions) OVER (ORDER BY week_number) AS prev_week_transactions,
	ROUND (
		(total_transactions - LAG(total_transactions) OVER (ORDER BY week_number))*100 
		/LAG(total_transactions) OVER (ORDER BY week_number), 2)
	AS wow_growth_percentage
FROM weekly_data
ORDER BY week_number;