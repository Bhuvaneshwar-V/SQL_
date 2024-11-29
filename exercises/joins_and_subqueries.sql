-- Retrieve the start times of members' bookings
-- How can you produce a list of the start times for bookings by members named 'David Farrell'?

-- using subquery
SELECT starttime
FROM cd.bookings
WHERE memid IN (SELECT memid
FROM cd.members
WHERE CONCAT(firstname, ' ', surname) = 'David Farrell');


-- using joins
SELECT B.starttime
FROM cd.bookings AS B
JOIN cd.members AS M
ON B.memid = M.memid
WHERE CONCAT(firstname, ' ', surname) = 'David Farrell';


-- Work out the start times of bookings for tennis courts
-- How can you produce a list of the start times for bookings for tennis courts, for the date '2012-09-21'? 
-- Return a list of start time and facility name pairings, ordered by the time.

SELECT B.starttime AS start, F.name AS name
FROM cd.bookings B
INNER JOIN cd.facilities F
ON B.facid = F.facid
WHERE F.name LIKE 'Tennis Court%' AND DATE(B.starttime) = '2012-09-21'
ORDER BY B.starttime;


-- Produce a list of all members who have recommended another member
-- How can you output a list of all members who have recommended another member?
-- Ensure that there are no duplicates in the list, and that results are ordered by (surname, firstname)

SELECT DISTINCT recom.firstname, recom.surname
FROM cd.members mem
JOIN cd.members recom
ON mem.recommendedby = recom.memid
ORDER BY recom.surname, recom.firstname;


-- Produce a list of all members, along with their recommender
-- How can you output a list of all members, including the individual who recommended them (if any)? 
-- Ensure that results are ordered by (surname, firstname)

SELECT mem.firstname AS memfname, mem.surname AS memsname, 
	recom.firstname AS recfname, recom.surname AS recsname
FROM cd.members mem
LEFT JOIN cd.members recom
ON mem.recommendedby = recom.memid
ORDER BY memsname, memfname


-- Produce a list of all members who have used a tennis court
-- How can you produce a list of all members who have used a tennis court? 
-- Include in your output the name of the court, and the name of the member formatted as a single column. 
-- Ensure no duplicate data, and order by the member name followed by the facility name.




-- Produce a list of costly bookings


-- Produce a list of all members, along with their recommender, using no joins.


-- Produce a list of costly bookings, using a subquery