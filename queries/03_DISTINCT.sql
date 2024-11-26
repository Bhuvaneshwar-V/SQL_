USE fantasy;

-- unique values in the "class"

SELECT DISTINCT class 
FROM fantasy.characters;

-- unique combinations of "class" and "guild"

SELECT DISTINCT class, guild
FROM fantasy.characters
ORDER BY class, guild;
