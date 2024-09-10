-- Select all columns from the Cinema table.
SELECT *
FROM Cinema
-- Filter rows where the ID is an odd number and the description is not 'boring'.
WHERE id % 2 <> 0
  AND description <> 'boring'
-- Order the results by rating in descending order.
ORDER BY rating DESC;