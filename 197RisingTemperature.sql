-- Select the id from the Weather table.
SELECT Weather.id
FROM Weather
-- Join the Weather table with itself, aliasing the joined table as weather_previous.
JOIN Weather weather_previous 
-- Match each record's date with the previous day's date.
    ON weather_previous.recordDate = DATE_SUB(Weather.recordDate, INTERVAL 1 DAY)
    -- Filter records where the temperature is higher than the previous day's temperature.
WHERE Weather.temperature > weather_previous.temperature;