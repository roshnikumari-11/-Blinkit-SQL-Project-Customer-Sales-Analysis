create database blinkit;

use blinkit;

-- 🔹 1. Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50),
	phone VARCHAR(15)
);

-- 🔹 2. Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(6,2),
    stock INT
);

alter table products
modify price DECIMAL(8,2)

-- 🔹 3. Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(7,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

alter table orders
modify total_amount DECIMAL(8,2)

-- 🔹 4. Order_Items Table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(6,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

alter table order_items
modify price DECIMAL(8,2);

-- Customers Table
INSERT INTO customers (customer_id, name, email, city, phone) VALUES
(1, 'Isha Kapoor', 'ishakapoor@example.com', 'Delhi', '9876543210'),
(2, 'Rahul Verma', 'rahulverma@example.com', 'Mumbai', '9876543211'),
(3, 'Ananya Joshi', 'ananyajoshi@example.com', 'Bangalore', '9876543212'),
(4, 'Rohit Sharma', 'rohitsharma@example.com', 'Kolkata', '9876543213'),
(5, 'Sneha Reddy', 'snehareddy@example.com', 'Hyderabad', '9876543214'),
(6, 'Aman Singh', 'amansingh@example.com', 'Chennai', '9876543215'),
(7, 'Neha Dubey', 'nehadubey@example.com', 'Pune', '9876543216'),
(8, 'Manoj Kumar', 'manojkumar@example.com', 'Ahmedabad', '9876543217'),
(9, 'Priya Das', 'priyadas@example.com', 'Lucknow', '9876543218'),
(10, 'Deepak Mehta', 'deepakmehta@example.com', 'Surat', '9876543219'),
(11, 'Kiran Patel', 'kiranpatel@example.com', 'Nagpur', '9876543220'),
(12, 'Tanvi Jain', 'tanvijain@example.com', 'Indore', '9876543221'),
(13, 'Arjun Nair', 'arjunnair@example.com', 'Bhopal', '9876543222'),
(14, 'Divya Bhatt', 'divyabhatt@example.com', 'Jaipur', '9876543223'),
(15, 'Nikhil Chauhan', 'nikhilchauhan@example.com', 'Noida', '9876543224'),
(16, 'Meera Iyer', 'meera.iyer@example.com', 'Gurgaon', '9876543225'),
(17, 'Ravi Pillai', 'ravipillai@example.com', 'Chandigarh', '9876543226'),
(18, 'Kavya Rao', 'kavyarao@example.com', 'Mysore', '9876543227'),
(19, 'Siddharth Sen', 'siddharthsen@example.com', 'Patna', '9876543228'),
(20, 'Alok Tiwari', 'aloktiwari@example.com', 'Thane', '9876543229'),
(21, 'Bhavna Shah', 'bhavnashah@example.com', 'Vadodara', '9876543230'),
(22, 'Vikram Sethi', 'vikramsethi@example.com', 'Nashik', '9876543231'),
(23, 'Juhi Agarwal', 'juhiagarwal@example.com', 'Faridabad', '9876543232'),
(24, 'Yash Malhotra', 'yashmalhotra@example.com', 'Rajkot', '9876543233'),
(25, 'Swati Deshmukh', 'swatideshmukh@example.com', 'Varanasi', '9876543234'),
(26, 'Harshita Singh', 'harshita.singh@example.com', 'Amritsar', '9876543235'),
(27, 'Aditya Joshi', 'adityajoshi@example.com', 'Jodhpur', '9876543236'),
(28, 'Lavanya Mishra', 'lavanyam@example.com', 'Ranchi', '9876543237'),
(29, 'Parth Gupta', 'parthgupta@example.com', 'Gwalior', '9876543238'),
(30, 'Tanya Kapoor', 'tanyakapoor@example.com', 'Raipur', '9876543239'),
(31, 'Nitin Yadav', 'nitinyadav@example.com', 'Coimbatore', '9876543240'),
(32, 'Shruti Kulkarni', 'shrutik@example.com', 'Kozhikode', '9876543241'),
(33, 'Rohan Bhatia', 'rohanb@example.com', 'Jabalpur', '9876543242'),
(34, 'Pooja Rani', 'poojarani@example.com', 'Kanpur', '9876543243'),
(35, 'Varun Saxena', 'varuns@example.com', 'Agra', '9876543244'),
(36, 'Aarti Rawat', 'aartirawat@example.com', 'Meerut', '9876543245'),
(37, 'Kunal Malhotra', 'kunalm@example.com', 'Vijayawada', '9876543246'),
(38, 'Simran Kaur', 'simrankaur@example.com', 'Ludhiana', '9876543247'),
(39, 'Dev Sharma', 'devsharma@example.com', 'Tiruchirappalli', '9876543248'),
(40, 'Jasmin Singh', 'jasminsingh@example.com', 'Ahmedabad', '9876543249');

-- Products Table
INSERT INTO products (product_id, name, category, price, stock) VALUES
(101, 'Smartphone', 'Electronics', 20999.00, 100),
(102, 'Running Shoes', 'Footwear', 2899.00, 200),
(103, 'Bluetooth Speaker', 'Electronics', 1699.00, 150),
(104, 'Leather Wallet', 'Accessories', 799.00, 180),
(105, 'Digital Watch', 'Wearables', 2499.00, 120),
(106, 'Laptop Bag', 'Accessories', 1299.00, 90),
(107, 'Backpack', 'Accessories', 1499.00, 160),
(108, 'LED Monitor', 'Electronics', 8999.00, 80),
(109, 'Wireless Mouse', 'Electronics', 599.00, 300),
(110, 'Keyboard', 'Electronics', 699.00, 290),
(111, 'Water Bottle', 'Home & Kitchen', 349.00, 500),
(112, 'Mixer Grinder', 'Home Appliances', 2999.00, 75),
(113, 'Induction Cooktop', 'Home Appliances', 1899.00, 60),
(114, 'Pressure Cooker', 'Home Appliances', 1099.00, 100),
(115, 'Frying Pan', 'Home & Kitchen', 799.00, 110),
(116, 'T-Shirt', 'Fashion', 499.00, 400),
(117, 'Jeans', 'Fashion', 999.00, 250),
(118, 'Hoodie', 'Fashion', 1199.00, 230),
(119, 'Sneakers', 'Footwear', 2399.00, 220),
(120, 'Formal Shoes', 'Footwear', 1999.00, 180),
(121, 'Hair Dryer', 'Personal Care', 799.00, 140),
(122, 'Shampoo', 'Personal Care', 299.00, 500),
(123, 'Toothpaste', 'Personal Care', 99.00, 550),
(124, 'Face Wash', 'Personal Care', 199.00, 400),
(125, 'Body Lotion', 'Personal Care', 249.00, 370),
(126, 'Notebook', 'Stationery', 59.00, 600),
(127, 'Pen Pack', 'Stationery', 79.00, 700),
(128, 'School Bag', 'Stationery', 499.00, 300),
(129, 'Desk Lamp', 'Home & Kitchen', 599.00, 120),
(130, 'Coffee Mug', 'Home & Kitchen', 199.00, 350),
(131, 'USB Cable', 'Electronics', 149.00, 420),
(132, 'Phone Charger', 'Electronics', 349.00, 390),
(133, 'Earphones', 'Electronics', 399.00, 410),
(134, 'Power Bank', 'Electronics', 999.00, 240),
(135, 'Camera Tripod', 'Electronics', 599.00, 130),
(136, 'Photo Frame', 'Home & Kitchen', 249.00, 300),
(137, 'Wall Clock', 'Home & Kitchen', 499.00, 200),
(138, 'Table Fan', 'Home Appliances', 1299.00, 160),
(139, 'Curtains', 'Home & Kitchen', 899.00, 190),
(140, 'Electric Toothbrush', 'Personal Care', 1499.00, 100);

-- Orders Table
INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES
(1, 1, '2024-05-01', 20999.00), (2, 2, '2024-05-01', 5798.00), (3, 3, '2024-05-02', 1699.00),
(4, 4, '2024-05-02', 1598.00), (5, 5, '2024-05-03', 2499.00), (6, 6, '2024-05-03', 1299.00),
(7, 7, '2024-05-04', 1499.00), (8, 8, '2024-05-04', 8999.00), (9, 9, '2024-05-05', 1797.00),
(10, 10, '2024-05-05', 699.00), (11, 11, '2024-05-06', 698.00), (12, 12, '2024-05-06', 2999.00),
(13, 13, '2024-05-07', 3798.00), (14, 14, '2024-05-07', 1099.00), (15, 15, '2024-05-08', 799.00),
(16, 16, '2024-05-08', 499.00), (17, 17, '2024-05-09', 1998.00), (18, 18, '2024-05-09', 1199.00),
(19, 19, '2024-05-10', 2399.00), (20, 20, '2024-05-10', 1999.00), (21, 21, '2024-05-11', 799.00),
(22, 22, '2024-05-11', 299.00), (23, 23, '2024-05-12', 99.00), (24, 24, '2024-05-12', 199.00),
(25, 25, '2024-05-13', 249.00), (26, 26, '2024-05-13', 118.00), (27, 27, '2024-05-14', 79.00),
(28, 28, '2024-05-14', 499.00), (29, 29, '2024-05-15', 599.00), (30, 30, '2024-05-15', 398.00),
(31, 31, '2024-05-16', 149.00), (32, 32, '2024-05-16', 349.00), (33, 33, '2024-05-17', 399.00),
(34, 34, '2024-05-17', 999.00), (35, 35, '2024-05-18', 599.00), (36, 36, '2024-05-18', 249.00),
(37, 37, '2024-05-19', 499.00), (38, 38, '2024-05-19', 1299.00), (39, 39, '2024-05-20', 899.00),
(40, 40, '2024-05-20', 1499.00);

-- Order Items Table
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES
(12001, 1, 101, 1, 20999.00), (12002, 2, 102, 2, 2899.00), (12003, 3, 103, 1, 1699.00),
(12004, 4, 104, 2, 799.00), (12005, 5, 105, 1, 2499.00), (12006, 6, 106, 1, 1299.00),
(12007, 7, 107, 1, 1499.00), (12008, 8, 108, 1, 8999.00), (12009, 9, 109, 3, 599.00),
(12010, 10, 110, 1, 699.00), (12011, 11, 111, 2, 349.00), (12012, 12, 112, 1, 2999.00),
(12013, 13, 113, 2, 1899.00), (12014, 14, 114, 1, 1099.00), (12015, 15, 115, 1, 799.00),
(12016, 16, 116, 1, 499.00), (12017, 17, 117, 2, 999.00), (12018, 18, 118, 1, 1199.00),
(12019, 19, 119, 1, 2399.00), (12020, 20, 120, 1, 1999.00), (12021, 21, 121, 1, 799.00),
(12022, 22, 122, 1, 299.00), (12023, 23, 123, 1, 99.00), (12024, 24, 124, 1, 199.00),
(12025, 25, 125, 1, 249.00), (12026, 26, 126, 2, 59.00), (12027, 27, 127, 1, 79.00),
(12028, 28, 128, 1, 499.00), (12029, 29, 129, 1, 599.00), (12030, 30, 130, 2, 199.00),
(12031, 31, 131, 1, 149.00), (12032, 32, 132, 1, 349.00), (12033, 33, 133, 1, 399.00),
(12034, 34, 134, 1, 999.00), (12035, 35, 135, 1, 599.00), (12036, 36, 136, 1, 249.00),
(12037, 37, 137, 1, 499.00), (12038, 38, 138, 1, 1299.00), (12039, 39, 139, 1, 899.00),
(12040, 40, 140, 1, 1499.00);


