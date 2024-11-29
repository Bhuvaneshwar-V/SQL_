USE fantasy;

-- grouping by class with maximum level
SELECT class, MAX(level)
FROM fantasy.characters
GROUP BY class
ORDER BY class;


-- grouping by class with many aggregrate functions
SELECT class, 
	MAX(level) AS max_level,
    MIN(level) AS min_level,
    AVG(level) AS avg_level,
    COUNT(*) AS n_values
FROM fantasy.characters
GROUP BY class
ORDER BY class;


-- Grouping & Aggregation with string columns

SELECT class, 
	MAX(level) AS max_level,
    COUNT(*) AS n_values,
    AVG(LENGTH(name)) AS avg_name_length
FROM fantasy.characters
GROUP BY class
ORDER BY class;


-- Grouping by two columns

SELECT item_type, rarity, AVG(power)
FROM fantasy.items
GROUP BY item_type, rarity
ORDER BY item_type, rarity;

-- Having Clause

SELECT class, AVG(experience) AS avg_exp
FROM fantasy.characters
GROUP BY class
HAVING  AVG(experience) >= 7000;


-- Filtering by other columns not used in the aggregration

SELECT class, AVG(experience) AS avg_exp
FROM fantasy.characters
GROUP BY class
HAVING AVG(level) >= 20; 

