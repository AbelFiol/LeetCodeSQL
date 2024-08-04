-- Select the product name from the Product table, and the year and price from the Sales table.
SELECT Product.product_name, Sales.year, Sales.price
-- Specify the main table for the query.
FROM Sales
-- Perform an inner join to combine rows from the Sales and Product tables where product_id matches.
JOIN Product ON Sales.product_id = Product.product_id;