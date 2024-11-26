USE fantasy;

-- creating alive table

CREATE TABLE IF NOT EXISTS fantasy.characters_alive 
AS(
SELECT * FROM fantasy.characters
WHERE is_alive = "TRUE"
);


CREATE TABLE IF NOT EXISTS fantasy.characters_dead
AS(
SELECT * FROM fantasy.characters
WHERE is_alive = "FALSE"
);

