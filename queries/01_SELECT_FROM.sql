-- selecting the schema
USE fantasy;

-- retrieving some attributes from characters table

SELECT name, guild
FROM fantasy.characters;

-- aliasing

SELECT name, guild, level AS character_level
FROM fantasy.characters;

-- constants

SELECT name, guild, level AS character_level, 1 AS version
FROM fantasy.characters;

-- calculations

SELECT name, guild, level AS character_level, 1 AS version, experience / 100 + level
FROM fantasy.characters;

-- functions

SELECT name, guild, level AS character_level, 1 AS version, experience / 100 + level, SQRT(level)
FROM fantasy.characters;

SELECT name, guild, level AS character_level, 1 AS version, experience / 100 + level, SQRT(level), UPPER(guild)
FROM fantasy.characters;