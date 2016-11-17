-- SELECT v.* FROM victims v;
-- SELECT z.* FROM zombies z;

-- SELECT b.* FROM bitings b;


-- SELECT v.*, b.* FROM victims v
-- INNER JOIN bitings b
-- ON v.id = b.victim_id;

-- SELECT v.name FROM victims v
-- AND z.name FROM zombies z
-- INNER JOIN bitings b
-- ON v.id = b.victim_id, z.id = b.zombie_id;

SELECT v.name AS "Dinner", 
z.name AS "Diner", 
b.infected_on AS "Din-din-date" 
FROM victims v
INNER JOIN bitings b
ON v.id = b.victim_id
INNER JOIN zombies z
ON z.id = b.zombie_id;
