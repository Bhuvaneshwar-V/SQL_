USE fantasy;

-- order by name column in the descending

SELECT * 
FROM fantasy.characters
ORDER BY name DESC;

-- order by level column

SELECT * 
FROM fantasy.characters
ORDER BY level;

-- order by level column in the descending

SELECT * 
FROM fantasy.characters
ORDER BY level DESC;

-- order by class and level column

SELECT * 
FROM fantasy.characters
ORDER BY class, level;

-- order by class descending and level column

SELECT * 
FROM fantasy.characters
ORDER BY class DESC, level;

-- order by class and level column descending

SELECT * 
FROM fantasy.characters
ORDER BY class , level DESC;

-- selecting the name, class column and ordering them based on the level column

SELECT name, class
FROM fantasy.characters
ORDER BY level;

-- ordering by the calculation

SELECT name, class, level / experience * 2
FROM fantasy.characters
ORDER BY level / experience * 2;

-- ordering by column position in the SELECT statement

SELECT name, class, level / experience * 2
FROM fantasy.characters
ORDER BY 2, 1;