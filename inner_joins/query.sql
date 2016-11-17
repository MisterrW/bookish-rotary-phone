-- SELECT * FROM lightsabers;
-- SELECT * FROM jedi;

-- SELECT l.blade_colour as lightsaber_colour FROM lightsabers l;

-- SELECT j.name as jedi_name FROM jedi j;

-- SELECT j.age as age_of_jedi FROM jedi j;

SELECT j.name as jedi_name, l.* FROM jedi j
LEFT OUTER JOIN lightsabers l
ON j.id = l.owner_id;