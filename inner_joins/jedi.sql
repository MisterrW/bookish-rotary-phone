DROP TABLE lightsabers;
DROP TABLE jedi;

CREATE TABLE jedi (
  id SERIAL8 primary key,
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT
);

CREATE TABLE lightsabers (
  id SERIAL8 primary key,
  blade_colour VARCHAR(255) not null,
  owner_id INT8 references jedi(id),
  hilt_metal VARCHAR(255) not null
);

INSERT INTO jedi (name, darkside, age) VALUES ('luke', false, 21);
INSERT INTO jedi (name, darkside, age) VALUES ('obiwan', false, 33);
INSERT INTO jedi (name, darkside, age) VALUES ('moz', false, 10); 

INSERT INTO lightsabers (blade_colour, owner_id, hilt_metal) VALUES ('green', 1, 'palladium');
INSERT INTO lightsabers (blade_colour, owner_id, hilt_metal) VALUES ('green', 2, 'gold');
INSERT INTO lightsabers (blade_colour, owner_id, hilt_metal) VALUES ('red', 1, 'hematite');