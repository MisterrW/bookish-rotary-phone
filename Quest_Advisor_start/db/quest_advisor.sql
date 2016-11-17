DROP TABLE visits;
DROP TABLE users;
DROP TABLE locations;

CREATE TABLE users (
  id SERIAL4 primary key,
  name VARCHAR(255)
);

CREATE TABLE locations (
  id SERIAL4 primary key,
  category VARCHAR(255),
  name VARCHAR(255)
);

CREATE TABLE visits (
  review TEXT,
  id SERIAL4,
  user_id INT4 references users(id) ON DELETE CASCADE,
  location_id INT4 references locations(id) ON DELETE CASCADE
);