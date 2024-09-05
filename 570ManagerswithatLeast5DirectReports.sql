-- Select the names of employees who are managers.
SELECT name
FROM Employee 
-- Filter to include only those employees whose ID is in the list of manager IDs with 5 or more direct reports.
WHERE id IN (
    SELECT managerId
    FROM Employee 
    -- Group by manager ID to count the number of direct reports.
    GROUP BY managerId 
    -- Include only those managers who have 5 or more direct reports.
    HAVING COUNT(*) >= 5
);