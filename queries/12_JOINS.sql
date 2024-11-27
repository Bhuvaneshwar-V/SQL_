USE fantasy;

-- Basic join

SELECT *
FROM fantasy.characters AS c
JOIN fantasy.inventory AS i
ON c.id = i.character_id;

-- selecting specific columns and ordering based on some column

SELECT c.id, c.name, i.item_id, i.quantity
FROM fantasy.characters AS c
JOIN fantasy.inventory AS i
ON c.id = i.character_id
ORDER BY name, item_id;

-- adding where condition with the joins

SELECT c.id, c.name, i.item_id, i.quantity
FROM fantasy.characters AS c
JOIN fantasy.inventory AS i
ON c.id = i.character_id
WHERE i.quantity >= 2
ORDER BY name, item_id;

-- joining multiple tables

SELECT 
	c.id, c.name, i.item_id, i.quantity, it.name AS item_name, it.power
FROM fantasy.characters AS c
JOIN fantasy.inventory AS i
ON c.id = i.character_id
JOIN fantasy.items AS it
ON i.item_id = it.id
ORDER BY name, item_id;

-- self join

SELECT chars.name , mentor.name AS mentor_name
FROM fantasy.characters chars
JOIN fantasy.characters mentor
ON chars.mentor_id = mentor.id;

-- joining tables based on boolean condition

-- a charcter can use any item for which the power level
-- is equal or less than the character's experience 
-- divided by 100

SELECT c.name, c.experience / 100, i.name, i.power
FROM fantasy.characters c
JOIN fantasy.items i
ON i.power <= c.experience / 100
ORDER BY c.name;

-- LEFT JOIN

SELECT c.id, c.name, i.item_id, i.quantity
FROM fantasy.characters AS c
LEFT JOIN fantasy.inventory AS i
ON c.id = i.character_id;

-- another example

SELECT chars.name , mentor.name AS mentor_name
FROM fantasy.characters chars
LEFT JOIN fantasy.characters mentor
ON chars.mentor_id = mentor.id;

-- Right Join

SELECT c.id, c.name, i.item_id, i.quantity
FROM fantasy.characters AS c
RIGHT JOIN fantasy.inventory AS i
ON c.id = i.character_id;


