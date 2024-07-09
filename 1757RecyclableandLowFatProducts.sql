-- Select the product_id column from the Products table.
SELECT product_id
-- Filter the rows where low_fats is 'Y' (Yes).
FROM Products
WHERE low_fats = 'Y' 
  -- And recyclable is 'Y' (Yes).
  AND recyclable = 'Y';