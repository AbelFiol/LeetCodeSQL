-- Selecting distinct author_id as id from the Views table.
SELECT DISTINCT author_id AS id
-- Filtering rows where author_id equals viewer_id.
FROM Views
WHERE author_id = viewer_id
-- Ordering the results by id in ascending order.
ORDER BY id;