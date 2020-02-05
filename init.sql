-- Table - person

CREATE TABLE person ( 
  person_id SERIAL PRIMARY KEY,
  name VARCHAR(200),
  age INTEGER,
  height INTEGER,
  city VARCHAR(200),
  favorite_color VARCHAR(200)
	);

INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Daniel', '37', 189, 'Phoenix', 'Black'),
('Kristy', '36', 180, 'Phoenix', 'Red'),
('Remy', '2', 55, 'Gold Coast', 'Pink'),
('Holly', '36', 179, 'Gold Coast', 'White'),
('Zac', '41', 184, 'Gold Coast', 'Black');

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height ASC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'Red';

SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

SELECT * FROM person
WHERE favorite_color != 'Orange' OR favorite_color != 'Green';

SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Purple');

-- Table - orders

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(200),
  product_price INTEGER,
  quantity INTEGER);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES 
( 1, '11 inch iPad Pro', 799, 2),
( 1, '13 inch MacBook Pro 2019', 4900, 1),
( 1, '16 inch MacBook Pro 2019', 6999, 1),
( 1, 'Mac Pro 2020', 54547, 1),
( 1, 'Pro Display XDR', 7197, 1);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES 
( 2, 'Tesla Cybertruck', 70000, 1),
( 2, 'Mercedes AMG GLC 63s', 145000, 1),
( 2, 'Holiday Trips', 3500, 4),
( 2, 'Presents', 1250, 13),
( 2, 'Another Product', 250, 20);

SELECT * FROM orders;

SELECT sum(quantity) FROM orders;

SELECT sum(product_price * quantity) FROM orders;

SELECT sum(product_price * quantity) FROM orders
WHERE person_id = 1;

-- Table - artist

INSERT INTO artist (name)
VALUES ('Metallica'), ('David Guetta'), ('Kygo');

SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

SELECT * FROM artist
LIMIT 5;

SELECT * FROM artist
WHERE name LIKE 'Black%'

SELECT * FROM artist
WHERE name LIKE '%Black%'

-- Table - employee

SELECT first_name, last_name, city FROM employee
WHERE city = 'Calgary';

SELECT * FROM employee
ORDER BY birth_date DESC;

SELECT * FROM employee
ORDER BY birth_date ASC;

SELECT * FROM employee
WHERE reports_to = 2;

SELECT count(*) FROM employee
WHERE city = 'Lethbridge';

-- Table - invoice

SELECT count(*) FROM invoice
WHERE billing_country = 'USA';

SELECT count(*) FROM invoice
WHERE billing_country = 'USA';

SELECT max(total) FROM invoice;

SELECT min(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT count(total) FROM invoice
WHERE total < 5;

SELECT count(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT sum(total) FROM invoice;