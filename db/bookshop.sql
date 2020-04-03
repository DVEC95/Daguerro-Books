DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;

CREATE TABLE authors(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  active BOOLEAN
);

CREATE TABLE books(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  synopsis VARCHAR(500),
  format VARCHAR(255),
  genre VARCHAR(255),
  cost DECIMAL(10, 2),
  price DECIMAL(10, 2),
  quantity INT,
  author_id INT REFERENCES authors(id)
);
