-- Select the name, population, and area columns from the World table.
SELECT name, population, area
-- Filter rows where area is greater than or equal to 3,000,000 square units or population is greater than or equal to 25,000,000.
FROM World
WHERE area >= 3000000 OR population >= 25000000;