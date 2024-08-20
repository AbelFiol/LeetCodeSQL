-- Select the machine_id and the average processing time for each machine.
SELECT 
    a.machine_id,
    -- Calculate the average processing time by rounding it to 3 decimal places.
    ROUND(AVG(CASE WHEN a.activity_type = 'end' THEN a.timestamp - b.timestamp END), 3) AS processing_time
FROM 
    -- Use the Activity table aliased as 'a'.
    Activity AS a
JOIN 
    -- Join the Activity table aliased as 'b' on machine_id and process_id.
    Activity AS b ON a.machine_id = b.machine_id AND a.process_id = b.process_id
WHERE 
    -- Filter for activities where 'a' is the end of the process and 'b' is the start.
    a.activity_type = 'end' AND b.activity_type = 'start'
GROUP BY 
    -- Group results by machine_id.
    a.machine_id;