-- Select the customer ID and count the number of visits with no associated transactions.
SELECT Visits.customer_id, COUNT(Visits.visit_id) AS count_no_trans
FROM Visits
-- Perform a left join to include all visits and any corresponding transactions.
LEFT JOIN Transactions ON Visits.visit_id = Transactions.visit_id
-- Filter to include only visits with no corresponding transactions.
WHERE Transactions.transaction_id IS NULL
-- Group the results by customer ID to count visits per customer.
GROUP BY Visits.customer_id;