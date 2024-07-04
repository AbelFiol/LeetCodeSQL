# This code work for MySQL and PostgreSQL.
SELECT name
FROM Customer
WHERE referee_id <> 2 OR referee_id IS NULL;