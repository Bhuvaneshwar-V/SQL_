USE fantasy;

-- only is_alive is true

SELECT * FROM fantasy.characters
WHERE is_alive = "TRUE";

-- health greater than 50

SELECT * FROM fantasy.characters
WHERE health > 50;

-- both is_alive is true and health > 50

SELECT * FROM fantasy.characters
WHERE is_alive = "TRUE" AND health > 50;


