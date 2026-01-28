-- IMPORT DATA INTO CUSTOMERS TABLE
COPY Customers(customer_id,gender,age,city,loyalty_score)
FROM 'C:\Users\ayush\OneDrive\Desktop\SQL Project'
DELIMITER ','
CSV HEADER;
-- IMPORT DATA INTO ORDERS TABLE
COPY Orders(order_id,customer_id,order_date,product_category,order_value,payment_method,delivered)
FROM 'C:\Users\ayush\OneDrive\Desktop\SQL Project'
DELIMITER ','
CSV HEADER;
-- IMPORT DATA INTO PRODUCTS TABLE
COPY Products(product_id,product_name,category,price,stock)
FROM 'C:\Users\ayush\OneDrive\Desktop\SQL Project'
DELIMITER ','
CSV HEADER;
-- IMPORT DATA INTO REVIEWS TABLE
COPY Reviews (review_id,customer_id,product_id,rating,review_text)
FROM 'C:\Users\ayush\OneDrive\Desktop\SQL Project'
DELIMITER ','
CSV HEADER;
