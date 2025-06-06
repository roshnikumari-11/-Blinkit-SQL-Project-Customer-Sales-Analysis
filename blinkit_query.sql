select * from customers;
select * from orders;
select * from order_items;
select * from products;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
                                                                      /* Intermediate */
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------

/*
🧠 Intermediate SQL Questions
1. Top Spending Customers
   List the top 5 customers who spent the most in total, along with their total amount spent.

2. Popular Categories
   Find the product category with the highest number of items sold.

3. Average Order Value per City
   Calculate the average order total for customers in each city.

4.  Best-Selling Products
	Which 5 products have been ordered the most by quantity?

5. Low Stock Alert
   List all products with a stock quantity less than 100.
6. Customer Purchase Summary
   For each customer, show total number of orders and total items purchased.

7. Product Performance Report
   For each product, show total revenue generated and total quantity sold.

*/

-- Top Spending Customers
-- List the top 5 customers who spent the most in total, along with their total amount spent.
SELECT 
    c.name,
    c.email,
    c.city,
    c.phone,
    SUM(o.total_amount) AS total_amount_spent
FROM
    customers AS c
        JOIN
    orders AS o ON c.customer_id = o.customer_id
GROUP BY c.name , c.email , c.city , c.phone
ORDER BY total_amount_spent DESC
LIMIT 5;

-- Popular Categories
-- Find the product category with the highest number of items sold.

SELECT 
    p.category,
   sum(oi.quantity) as total_items_sold
FROM
order_items AS oi 
        JOIN
           products AS p
    ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY 
    total_items_sold DESC
LIMIT 1;


-- Average Order Value per City
-- Calculate the average order total for customers in each city.

SELECT 
    c.city, ROUND(AVG(o.total_amount), 0) AS Average_Order_Value
FROM
    orders AS o
        JOIN
    customers AS c ON o.customer_id = c.customer_id
GROUP BY c.city;

  -- Best-Selling Products
  -- Which 5 products have been ordered the most by quantity?

SELECT 
    p.name, SUM(oi.quantity) AS total_quantity_ordered
FROM
    products AS p
        JOIN
    order_items AS oi ON p.product_id = oi.product_id
GROUP BY p.name
ORDER BY total_quantity_ordered DESC
LIMIT 5;

-- Low Stock Alert
-- List all products with a stock quantity less than 100.

SELECT 
    name, category, stock
FROM
    products
WHERE
    stock < 100;


-- Customer Purchase Summary
-- For each customer, show total number of orders and total items purchased.
SELECT 
    c.name,
    c.city,
    c.email,
    c.phone,
    COUNT(DISTINCT o.order_id) AS total_no_of_orders,
    SUM(oi.quantity) AS total_items_purchased
FROM
    customers AS c
        JOIN
    orders AS o ON c.customer_id = o.customer_id
        JOIN
    order_items AS oi ON o.order_id = oi.order_id
GROUP BY c.name , c.city , c.email , c.phone;

 -- Product Performance Report
 -- For each product, show total revenue generated and total quantity sold.
SELECT 
    p.product_id,
    p.name,
    p.category,
    SUM(oi.quantity) AS total_quantity_sold,
    SUM(oi.quantity * oi.price) AS total_revenue
FROM
    products AS p
        JOIN
    order_items AS oi ON p.product_id = oi.product_id
GROUP BY p.product_id , p.name , p.category

