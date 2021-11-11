--Create tables from original csv data
--Table orders

DROP TABLE orders;

CREATE TABLE orders(
Row_ID SERIAL PRIMARY KEY,
Order_ID VARCHAR(30) NOT NULL,
Order_Date VARCHAR(30) NOT NULL,
Ship_Date VARCHAR(30) NOT NULL,
Ship_Mode VARCHAR(30) NOT NULL,
Customer_ID VARCHAR(30) NOT NULL,
Customer_Name VARCHAR(30) NOT NULL,
Segment VARCHAR(30) NOT NULL,
City VARCHAR(100) NOT NULL,
State VARCHAR(100) NOT NULL,
Country VARCHAR(100) NOT NULL,
Postal_Code VARCHAR(30),
Market VARCHAR(30) NOT NULL,
Region VARCHAR(30) NOT NULL,
Product_ID VARCHAR(30) NOT NULL,
Category VARCHAR(30) NOT NULL,
Sub_Category VARCHAR(30) NOT NULL,
Product_Name VARCHAR(255) NOT NULL,
Sales FLOAT8 NOT NULL,
Quantity INT NOT NULL,
Discount FLOAT8 NOT NULL,
Profit FLOAT8 NOT NULL,
Shipping_Cost FLOAT8 NOT NULL,
Order_Priority VARCHAR(30) NOT NULL
);

SELECT*FROM orders
LIMIT 10;

--Table people
DROP TABLE people;

CREATE TABLE people(
Person VARCHAR(50) NOT NULL,
Region VARCHAR(50) PRIMARY KEY	
);

SELECT * FROM people;

--Table returns

DROP TABLE returns;

CREATE TABLE returns(
Return VARCHAR(50) NOT NULL,
Order_ID VARCHAR(50) NOT NULL,
Market VARCHAR(50) NOT NULL
);

SELECT * FROM returns;

--Join tables orders, people and returns

DROP TABLE superstore_complete;

CREATE TABLE superstore_complete AS (
	SELECT o.* ,
	pe.person,
	re.Return
	FROM orders AS o
	LEFT JOIN people pe 
	ON pe.region=o.region
		LEFT JOIN returns re
		ON re.Order_ID=o.Order_ID
);

SELECT * 
FROM superstore_complete
LIMIT 10;