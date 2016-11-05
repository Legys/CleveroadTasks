CREATE TABLE mobs (id INTEGER PRIMARY KEY, name TEXT, description TEXT, cost INTEGER);
CREATE TABLE orders (order_composition TEXT, order_date DATE, order_count INTEGER);

INSERT INTO mobs (name, description, cost)
VALUES
  ('Samsung S6', 'Display: 5.2, CPU: 2.2, RAM: 3 GB, Storage: 128 GB', 800),
  ('Meizu Pro 5', 'Display: 5.5, CPU: 2.5, RAM: 4 GB, Storage: 64 GB', 500),
  ('Meizu Pro 6', 'Display: 5.2, CPU: 2.4, RAM: 4 GB, Storage: 64 GB', 450),
  ('Meizu MX6', 'Display: 5.5, CPU: 2.5, RAM: 4 GB, Storage: 32 GB', 280),
  ('Xiaomi MI 5', 'Display: 5.4, CPU: 2, RAM: 3 GB, Storage: 128 GB', 430),
  ('Samsung S7', 'Display: 5 CPU: 2.5, RAM: 6 GB, Storage: 128 GB', 1000),
  ('Samsung J2', 'Display: 5 CPU: 1.8, RAM: 2 GB, Storage: 32 GB', 200),
  ('Samsung A8', 'Display: 5 CPU: 2, RAM: 3 GB, Storage: 64 GB', 240),
  ('Samsung A10', 'Display: 5 CPU: 2, RAM: 2 GB, Storage: 32 GB', 340),
  ('Samsung 7 Note', 'Display: 5 CPU: 2.4, RAM: 4 GB, Storage: 256 GB', 700),
  ('Samsung A508', 'Display: 5 CPU: 2.4, RAM: 4 GB, Storage: 256 GB', 140),
  ('Samsung B1', 'Display: 5 CPU: 2.4, RAM: 4 GB, Storage: 256 GB', 200);

INSERT INTO orders
VALUES
  ('Samsung 7 Note, Meizu MX6, Xiaomi MI 5', '2016-09-11', 1410),
  ('Meizu Pro 5, Meizu MX6, Samsung A10', '2016-09-15', 1020),
  ('Samsung 7 Note, Meizu MX6, Samsung A8', '2016-09-23', 1220),
  ('Samsung J2, Meizu Pro 6, Meizu MX6', '2016-10-25', 930),
  ('Samsung S7, Samsung 7 Note, Meizu MX6', '2016-10-29', 1980),
  ('Samsung A10', '2016-11-01', 340),
  ('Samsung A10, Samsung S6, Xiaomi MI 5', '2016-11-01', 1570),
  ('Meizu MX6, Samsung J2, Samsung A8', '2016-11-02', 720),
  ('Samsung J2', '2016-11-02', 200),
  ('Samsung S7', '2016-11-03', 1000),
  ('Samsung A8', '2016-11-03', 340),
  ('Samsung 7 Note', '2016-11-04', 700),
  ('Samsung S7, Samsung A8', '2016-11-05', 1240),
  ('Samsung B1, Samsung A508', '2016-11-05', 340);

SELECT * FROM orders
WHERE order_date BETWEEN '2016-10-29' AND '2016-11-05' AND order_count > 500;
SELECT * FROM orders
WHERE order_composition LIKE "%samsung%";

