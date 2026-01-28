-- Top 5 Loyal Customers by Total Spending
Select c.customer_id,sum(o.order_value)as total_spent
from Customers c
inner Join Orders o
on c.customer_id=o.customer_id
group by c.customer_id
order by total_spent desc
limit 5;

-- City-Wise Revenue
select c.city,sum(o.order_value)as total_revenue
from customers c
inner join orders o
on c.customer_id=o.customer_id
group by c.city;

-- Monthly Sales Trend
select extract(month from order_date) as month,sum(order_value)as total_sales
from orders
group by month
order by month;

-- Delivery Success Rate
select delivered,count(*)as total_orders
from orders
group by delivered;

-- Average Rating Per Product
select p.product_name,round(avg(r.rating),2)as avg_rating
from products p
inner join reviews r
on p.product_id=r.product_id
group by p.product_name;

-- Top 3 best-selling product Categories by Total sales
select category,sum(price) as total_sales
from products
group by category
order by total_sales desc
limit 3;
-- Top 5 Products with highest rating
select p.product_name,max(rating) as max_rating
from products p
inner join reviews r
on p.product_id=r.product_id
group by p.product_name
order by max_rating desc
limit 5;
-- Which Payment Method has been used for the most transactions
select payment_method,count(*)as total_transactions
from orders
group by payment_method
order by total_transactions desc
limit 1;