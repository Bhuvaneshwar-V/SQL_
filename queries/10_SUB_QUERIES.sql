USE fantasy;

-- uncorrelated subquery
-- find characters whose experience is between min and max
-- more experience than the least experienced character, less than the most experienced character

SELECT *
FROM fantasy.characters
WHERE experience BETWEEN 
(SELECT MIN(experience) FROM fantasy.characters) AND
(SELECT MAX(experience) FROM fantasy.characters);

-- correlated subquery
-- find the difference between a character's experience and their mentor'savepoint

SELECT id AS mentee_id, mentor_id, 
(SELECT experience FROM fantasy.characters AS mentor_table
WHERE id = mentee_table.mentor_id) - experience AS experience_difference
FROM fantasy.characters AS mentee_table
WHERE mentor_id != 0;

-- nested queries



