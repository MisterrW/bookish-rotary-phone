DROP TABLE zombies;
DROP TABLE victims;
DROP TABLE bitings;

CREATE TABLE zombies
(
  id SERIAL8 primary key,
  name VARCHAR(255) not null,
  type VARCHAR(255)
);

CREATE TABLE victims
(
  id SERIAL8 primary key,
  name VARCHAR(255) not null,
  run_speed INT2
);

CREATE TABLE bitings
(
  id SERIAL8 primary key,
  victim_id INT8 references victims(id),
  zombie_id INT8 references zombies(id),
  infected_on DATE not null
);

INSERT INTO victims (name, run_speed) VALUES ('Jeff 3', 120);
INSERT INTO victims (name, run_speed) VALUES ('Logan',85);
INSERT INTO victims (name, run_speed) VALUES ('Winnie',75);

INSERT INTO zombies (name, type) VALUES ('John', 'Drooler');
INSERT INTO zombies (name, type) VALUES ('Simon', 'Runner');
INSERT INTO zombies (name, type) VALUES ('Beth', 'Walker');

INSERT INTO bitings (zombie_id, victim_id, infected_on) VALUES (1, 1, 'Jan 12 2015');
INSERT INTO bitings (zombie_id, victim_id, infected_on) VALUES (2, 2,'Jan 13 2015');