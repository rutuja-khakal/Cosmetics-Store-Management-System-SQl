create database cosmetic;
use cosmetic;

-- create products table 
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock INT,
    manufacturing_price DECIMAL(10, 2)
);
select * from Products;



-- create customes table
CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100),
  phone VARCHAR(15)
);
select * from customers;

-- create orders table
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_amount DECIMAL(10,2),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

select * from orders;

-- create table orderitems
CREATE TABLE OrderItems (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  price_at_purchase DECIMAL(10,2),
  profit_per_item DECIMAL(10,2), -- optional
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

select * from orderitems;

-- Insert Products
INSERT INTO products (product_id, name, category, price, stock, manufacturing_price) VALUES
(1, 'Lipstick Red', 'Makeup', 299.00, 50, 150.00),
(2, 'Foundation Beige', 'Makeup', 499.00, 40, 280.00),
(3, 'Compact Powder', 'Makeup', 349.00, 60, 200.00),
(4, 'Eyeliner Black', 'Eye', 199.00, 70, 90.00),
(5, 'Mascara Volume', 'Eye', 399.00, 35, 210.00),
(6, 'Blush Pink', 'Face', 279.00, 45, 170.00),
(7, 'BB Cream Light', 'Makeup', 449.00, 30, 250.00),
(8, 'Face Wash Aloe', 'Skincare', 249.00, 80, 140.00),
(9, 'Sunscreen SPF 50', 'Skincare', 399.00, 25, 220.00),
(10, 'Moisturizer Cream', 'Skincare', 349.00, 55, 190.00),
(11, 'Makeup Remover', 'Skincare', 199.00, 65, 100.00),
(12, 'Nail Polish Red', 'Nails', 149.00, 100, 70.00),
(13, 'Nail Polish Nude', 'Nails', 149.00, 95, 75.00),
(14, 'Lip Balm Mint', 'Lips', 99.00, 85, 45.00),
(15, 'Hair Serum Smooth', 'Hair', 499.00, 20, 300.00),
(16, 'Shampoo Herbal', 'Hair', 349.00, 50, 190.00),
(17, 'Conditioner Silk', 'Hair', 299.00, 45, 170.00),
(18, 'Face Scrub Walnut', 'Skincare', 249.00, 60, 130.00),
(19, 'Toner Rose', 'Skincare', 229.00, 40, 110.00),
(20, 'Highlighter Glow', 'Makeup', 399.00, 30, 200.00);

-- Customers 
INSERT INTO Customers (customer_id, name, email, phone) VALUES
(1, 'Riya Sharma', 'riya.sharma@example.com', '9876543210'),
(2, 'Amit Patel', 'amit.patel@example.com', '9123456789'),
(3, 'Sneha Verma', 'sneha.verma@example.com', '9988776655'),
(4, 'Rahul Mehta', 'rahul.mehta@example.com', '9900112233'),
(5, 'Pooja Desai', 'pooja.desai@example.com', '9877001122'),
(6, 'Vikram Singh', 'vikram.singh@example.com', '9765432109'),
(7, 'Neha Joshi', 'neha.joshi@example.com', '9811223344'),
(8, 'Karan Malhotra', 'karan.malhotra@example.com', '9887766554'),
(9, 'Divya Nair', 'divya.nair@example.com', '9786543210'),
(10, 'Rohan Kapoor', 'rohan.kapoor@example.com', '9654321078'),
(11, 'Anjali Sinha', 'anjali.sinha@example.com', '9532147890'),
(12, 'Manish Chauhan', 'manish.chauhan@example.com', '9321678490'),
(13, 'Tina Dsouza', 'tina.dsouza@example.com', '9234567812'),
(14, 'Sameer Khan', 'sameer.khan@example.com', '9109876543'),
(15, 'Priya Rathi', 'priya.rathi@example.com', '9876102345'),
(16, 'Deepak Kulkarni', 'deepak.kulkarni@example.com', '9761023456'),
(17, 'Sonal Gupta', 'sonal.gupta@example.com', '9898123456'),
(18, 'Arjun Yadav', 'arjun.yadav@example.com', '9845012345'),
(19, 'Meera Shah', 'meera.shah@example.com', '9811225566'),
(20, 'Nikhil Bansal', 'nikhil.bansal@example.com', '9773322110');

select * from Customers;

-- Insert orders 
INSERT INTO Orders (order_id, customer_id, order_date, total_amount, delivery_pincode, order_status) VALUES
(1, 1, '2025-06-01', 799.00, 411001, 'Delivered'),
(2, 2, '2025-06-02', 1499.00, 400001, 'Delivered'),
(3, 3, '2025-06-02', 349.00, 500081, 'Pending'),
(4, 4, '2025-06-03', 1299.00, 110001, 'Shipped'),
(5, 5, '2025-06-03', 599.00, 600001, 'Delivered'),
(6, 6, '2025-06-04', 999.00, 700001, 'Delivered'),
(7, 7, '2025-06-04', 499.00, 560001, 'Pending'),
(8, 8, '2025-06-05', 899.00, 380001, 'Delivered'),
(9, 9, '2025-06-05', 1599.00, 302001, 'Shipped'),
(10, 10, '2025-06-06', 749.00, 226001, 'Delivered'),
(11, 11, '2025-06-06', 1349.00, 682001, 'Delivered'),
(12, 12, '2025-06-07', 449.00, 641001, 'Pending'),
(13, 13, '2025-06-07', 299.00, 395003, 'Delivered'),
(14, 14, '2025-06-08', 1149.00, 781001, 'Shipped'),
(15, 15, '2025-06-08', 649.00, 492001, 'Delivered'),
(16, 16, '2025-06-09', 999.00, 834001, 'Delivered'),
(17, 17, '2025-06-09', 599.00, 751001, 'Pending'),
(18, 18, '2025-06-10', 899.00, 403001, 'Shipped'),
(19, 19, '2025-06-10', 1199.00, 682002, 'Delivered'),
(20, 20, '2025-06-11', 749.00, 605001, 'Delivered');


-- Insert OrderItems 
INSERT INTO OrderItems (order_item_id, order_id, product_id, quantity, price_at_purchase, profit_per_item) VALUES
(1, 1, 1, 2, 299.00, 149.00),
(2, 2, 5, 1, 399.00, 189.00),
(3, 3, 8, 2, 249.00, 109.00),
(4, 4, 2, 1, 499.00, 219.00),
(5, 5, 4, 3, 199.00, 109.00),
(6, 6, 10, 2, 349.00, 159.00),
(7, 7, 6, 1, 279.00, 109.00),
(8, 8, 11, 2, 199.00, 99.00),
(9, 9, 16, 1, 349.00, 159.00),
(10, 10, 7, 1, 449.00, 199.00),
(11, 11, 9, 1, 399.00, 179.00),
(12, 12, 14, 2, 99.00, 54.00),
(13, 13, 3, 1, 349.00, 149.00),
(14, 14, 20, 1, 399.00, 199.00),
(15, 15, 15, 1, 499.00, 199.00),
(16, 16, 13, 2, 149.00, 74.00),
(17, 17, 18, 1, 249.00, 119.00),
(18, 18, 19, 1, 229.00, 119.00),
(19, 19, 12, 3, 149.00, 79.00),
(20, 20, 17, 2, 299.00, 129.00);


-- Products That Are Out of Stock
SELECT * FROM Products WHERE stock = 0;

-- daily sales report
SELECT o.order_date, 
       COUNT(DISTINCT o.order_id) AS total_orders, 
       SUM(oi.quantity * oi.price_at_purchase) AS revenue
FROM Orders o
JOIN OrderItems oi ON o.order_id = oi.order_id
GROUP BY o.order_date;

-- the names of customers and what products they bought
SELECT c.name AS customer_name, p.name AS product_name
FROM OrderItems oi
JOIN Orders o ON oi.order_id = o.order_id
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Products p ON oi.product_id = p.product_id;

-- total sell 
SELECT 
  SUM(oi.quantity * oi.price_at_purchase) AS total_sales
FROM OrderItems oi;

SELECT 
  product_id, 
  name AS product_name, 
  price
FROM Products
ORDER BY price DESC
LIMIT 1;

-- update email table 
UPDATE Customers
SET email = 'new.email@example.com'
WHERE customer_id = 2;

-- Alter table 
ALTER TABLE Orders
ADD COLUMN Payment_method varchar(20);

Select * from orders;

ALTER TABLE Orders
DROP COLUMN Payment_method;

-- total sales per product
SELECT p.name, SUM(oi.quantity) AS total_units_sold, 
       SUM(oi.quantity * oi.price_at_purchase) AS total_revenue
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.name;


-- customers who spent more than 500
SELECT 
  c.customer_id,
  c.name AS customer_name,
  p.name AS product_name,
  SUM(oi.quantity * oi.price_at_purchase) AS total_spent
FROM OrderItems oi
JOIN Orders o ON oi.order_id = o.order_id
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY c.customer_id, c.name, p.name
HAVING total_spent > 500;


-- daily sales report
SELECT o.order_date, 
       COUNT(DISTINCT o.order_id) AS total_orders, 
       SUM(oi.quantity * oi.price_at_purchase) AS revenue
FROM Orders o
JOIN OrderItems oi ON o.order_id = oi.order_id
GROUP BY o.order_date;


-- Daily Sales Report with Product Name
SELECT 
  o.order_date,
  p.name AS product_name,
  SUM(oi.quantity) AS total_quantity_sold,
  SUM(oi.quantity * oi.price_at_purchase) AS total_sales
FROM OrderItems oi
JOIN Orders o ON oi.order_id = o.order_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY o.order_date, p.name
ORDER BY o.order_date, p.name;


-- to show all customer info
SELECT 
  oi.order_item_id,
  oi.order_id,
  c.name AS customer_name,
  p.name AS product_name,
  oi.quantity,
  oi.price_at_purchase
FROM OrderItems oi
JOIN Orders o ON oi.order_id = o.order_id
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Products p ON oi.product_id = p.product_id;


-- Products That Are Out of Stock
SELECT * FROM Products WHERE stock = 0;

-- the names of customers and what products they bought
SELECT c.name AS customer_name, p.name AS product_name
FROM OrderItems oi
JOIN Orders o ON oi.order_id = o.order_id
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Products p ON oi.product_id = p.product_id;

-- most sell product
SELECT 
  p.name AS product_name,
  SUM(oi.quantity) AS total_quantity_sold
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_quantity_sold DESC
LIMIT 1;


-- which product has the highest price
SELECT 
  product_id, 
  name AS product_name, 
  price
FROM Products
ORDER BY price DESC
LIMIT 1;

-- total sell 
SELECT 
  SUM(oi.quantity * oi.price_at_purchase) AS total_sales
FROM OrderItems oi;


-- total product sell per day
SELECT 
  o.order_date,
  SUM(oi.quantity) AS total_products_sold
FROM OrderItems oi
JOIN Orders o ON oi.order_id = o.order_id
GROUP BY o.order_date
ORDER BY o.order_date;


-- Profits per Items
SELECT 
    oi.order_item_id,
    p.name AS product_name,
    oi.quantity,
    oi.price_at_purchase,
    p.manufacturing_price,
    (oi.price_at_purchase - p.manufacturing_price) * oi.quantity AS total_profit
FROM 
    OrderItems oi
JOIN 
    Products p ON oi.product_id = p.product_id;
    
    
    -- top customer by spending
    SELECT 
    c.customer_id,
    c.name AS customer_name,
    SUM(o.total_amount) AS total_spent
FROM 
    Customers c
JOIN 
    Orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id, c.name
ORDER BY 
    total_spent DESC
LIMIT 1;





