-- SELECT u.name AS "Character",
-- l.name AS "Place",
-- v.review AS "Review"
-- FROM users u WHERE name = "Gollum"
-- INNER JOIN visits v
-- ON u.id = v.user_id
-- INNER JOIN locations l
-- ON l.id = v.location_id;


-- SELECT l.*, v.*, u.name from locations l
-- INNER JOIN visits v
-- ON l.id = v.location_id
-- INNER JOIN users u
-- ON u.id = v.user_id;


SELECT l.* FROM locations l
INNER JOIN visits v
ON l.id = v.location_id
WHERE v.user_id = 35;