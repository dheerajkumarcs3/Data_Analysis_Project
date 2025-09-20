create table super_market(
Row_ID	int,
Order_ID	varchar(50) primary key,
Order_Date date,
Year int ,
Ship_Date	date,
Ship_Mode	varchar(50), 
Customer_ID	varchar(50) unique ,
Customer_Name	varchar(50),
Segment	varchar(50) ,
Country	varchar(50),
City	varchar(50),
State	varchar(50),
Postal_Code	int,
Region	varchar(50),
Product_ID	varchar(50) unique ,
Category	varchar(50),
Sub_Category	varchar(50),
Product_Name	varchar(50),
Sales	float,
Quantity	int,
Discount	float,
Profit	float
);
ALTER TABLE super_market
alter COLUMN Product_Name type varchar(150);
alter table super_market
alter COLUMN Order_ID type varchar(50);
alter table super_market
alter COLUMN Customer_ID type varchar(50);
alter table super_market
alter COLUMN Product_ID type varchar(50);
ALTER TABLE super_market
DROP CONSTRAINT primary key;
ALTER TABLE super_market
DROP CONSTRAINT super_market_pkey;
ALTER TABLE super_market
DROP CONSTRAINT super_market_customer_id_key;
select * from super_market;
ALTER TABLE super_market
DROP CONSTRAINT super_market_product_id_key;
select product_name,sum(sales) as Revenue,count(quantity) from super_market group by product_name order by Revenue desc  limit 10;
select extract(year from(order_date)) as mon ,sum(sales) from super_market group by mon ;
select extract(mon from(order_date)) as mon1 ,sum(sales) from super_market group by mon1 order by mon1;
select customer_name,sum(sales) as total_sales,sum(profit)as total_profit from super_market group by customer_name order by total_profit desc;
select region,sum(profit) as total_profit from super_market group by region order by total_profit desc ;