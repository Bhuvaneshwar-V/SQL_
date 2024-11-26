USE fantasy;

-- Numerical functions

SELECT SUM(level), AVG(level), MAX(level), MIN(level), COUNT(level)
FROM fantasy.characters;

-- String functions

SELECT COUNT(class), MIN(class), MAX(class), GROUP_CONCAT(class)
FROM fantasy.characters;

-- Total number of rows

SELECT COUNT(*)
FROM fantasy.characters;
