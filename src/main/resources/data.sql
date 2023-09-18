--DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS accounts;

CREATE TABLE `product` (
  `id` int AUTO_INCREMENT  PRIMARY KEY,
  `name` varchar(100) NOT NULL,
  `price` FLOAT NOT NULL
);



-- Insert 10 products
INSERT INTO product (name, price) VALUES
('Product 1', 10.0),
('Product 2', 20.0),
('Product 3', 30.0),
('Product 4', 40.0),
('Product 5', 50.0),
('Product 6', 60.0),
('Product 7', 70.0),
('Product 8', 80.0),
('Product 9', 90.0),
('Product 10', 100.0);
