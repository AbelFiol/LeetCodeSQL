-- Select the column 'tweet_id' from the 'Tweets' table.
SELECT tweet_id
-- Only include rows where the length of the 'content' column is greater than 15 characters.
FROM Tweets
WHERE LENGTH(content) > 15;