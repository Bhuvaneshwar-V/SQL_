USE fantasy;

-- CASE STATEMENT

-- level column
-- up to 15: low
-- between 15 and 25: mid
-- above 25: super

SELECT name, level, 
CASE
	WHEN level < 15 THEN "low"
    WHEN level < 25 THEN "mid"
    ELSE "super"
END AS level_bucket
FROM fantasy.characters
WHERE is_alive="TRUE";

-- integer bucketing

SELECT name, level, 
CASE
	WHEN level < 15 THEN 1
    WHEN level < 25 THEN 2
    ELSE 3
END AS level_bucket
FROM fantasy.characters
WHERE is_alive="TRUE";
