CREATE TABLE mobs (id INTEGER PRIMARY KEY, name TEXT, description TEXT, cost INTEGER);
CREATE TABLE orders (id INTEGER PRIMARY KEY, order_date DATE);

CREATE TABLE mobs_orders(order_id INT NOT NULL, mob_id INT NOT NULL, FOREIGN KEY (order_id) REFERENCES orders(id), FOREIGN KEY (mob_id) REFERENCES mobs(id));

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

INSERT INTO orders (order_date)
VALUES
  ('2016-09-11'),
  ('2016-09-15'),
  ('2016-09-23'),
  ('2016-10-25'),
  ('2016-10-29'),
  ('2016-11-01'),
  ('2016-11-01'),
  ('2016-11-02'),
  ('2016-11-02'),
  ('2016-11-03'),
  ('2016-11-03'),
  ('2016-11-04'),
  ('2016-11-05'),
  ('2016-11-05'),
  ('2016-11-06'),
  ('2016-11-06'),
  ('2016-11-07'),
  ('2016-11-08'),
  ('2016-11-08'),
  ('2016-11-08');

INSERT INTO mobs_orders VALUES
(1, 2),
(1, 3),
(1, 1),
(2, 1),
(2, 2),
(3, 5),
(4, 12),
(4, 6),
(4, 6),
(5, 9),
(6, 2),
(7, 5),
(7, 8),
(8, 1),
(9, 6),
(9, 8),
(9, 8),
(10, 10),
(10, 1),
(10, 9),
(11, 7),
(12, 3),
(13, 2),
(14, 5),
(14, 11),
(14, 9),
(14, 6),
(15, 3),
(15, 7),
(15, 4),
(15, 5),
(15, 12),
(16, 10),
(17, 4),
(18, 8),
(18, 11),
(18, 6),
(19, 7),
(20, 9);


SELECT
  mobs_orders.order_id,
  mobs_orders.mob_id AS 'Mob ID',
  mobs.name AS 'Phone',
  orders.order_date AS 'Order date',
  count(mobs_orders.order_id) AS 'Amount of items',
  SUM((SELECT mobs.cost FROM mobs WHERE mobs_orders.mob_id = mobs.id)) AS 'Total price'
  FROM mobs, orders
JOIN mobs_orders ON mob_id = mobs.id
                  AND order_id = orders.id
  WHERE orders.order_date BETWEEN DATE('NOW', '-7 day') AND DATE ('NOW')
GROUP BY order_id
HAVING SUM(mobs.cost) > 500;

SELECT
  mobs.name,
  orders.order_date
FROM  mobs, orders
  JOIN mobs_orders ON mob_id = mobs.id
                  AND order_id = orders.id
WHERE mobs.name LIKE '%samsung%';



