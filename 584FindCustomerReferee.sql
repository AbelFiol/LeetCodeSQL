-- Select the name column from the Customer table.
SELECT name
-- Filter rows where referee_id is not equal to 2 or referee_id is NULL.
FROM Customer
WHERE referee_id <> 2 OR referee_id IS NULL;