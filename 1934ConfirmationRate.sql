SELECT 
    a.user_id,  -- Select the user_id.
    ROUND(AVG(IF(b.action = 'confirmed', 1, 0)), 2) AS confirmation_rate  -- Calculate and round the confirmation rate. (MySQL-specific function IF() is used.)
FROM 
    Signups AS a  -- From the Signups table.
LEFT JOIN 
    Confirmations AS b  -- Left join with the Confirmations table.
ON 
    a.user_id = b.user_id  -- Join on user_id.
GROUP BY 
    a.user_id;  -- Group by user_id.

SELECT 
    s.user_id,  -- Select the user_id.
    ROUND(AVG(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END), 2) AS confirmation_rate  -- Calculate and round the confirmation rate. (PostgreSQL-specific CASE statement is used.)
FROM 
    Signups s  -- From the Signups table.
LEFT JOIN 
    Confirmations c ON s.user_id = c.user_id  -- Left join with the Confirmations table on user_id.
GROUP BY 
    s.user_id;  -- Group by user_id.