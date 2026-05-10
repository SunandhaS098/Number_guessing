select *
from sales

select *
from products

select 
from Products as pr
join Sales as sal
on pr.product_id = sal.product_id 

select quantity_sold,category
from Products  as pr
join sales as sal
on pr.product_id=sal.product_id

   
--1. Calculate the total quantity_sold of products in the 'Electronics' category.

select p.product_name 
from Sales s
join products p
on s.product_id=p.product_id
group by product_name  
having sum(s.total_price) >30


--2. Retrieve the product_name and total_price from the Sales table, calculating the total_price as quantity_sold multiplied by unit_price.
select p.product_name,s.quantity_sold*p.unit_price as total_price 
from products p
join sales s
on p.product_id =s.product_id
 
 --3. Identify the Most Frequently Sold Product from Sales table
select product_id,count(*) as total
from sales
group by product_id
order by total desc
 
 --4. Find the Products Not Sold from Products table

 select product_id,product_name
 from products
 where product_id not in(
 select  product_id from sales)

 --5. Calculate the total revenue generated from sales for each product category.
 select p.category, sum(s.total_price)
 from Sales s
 join products p 
 on p.product_id=s.product_id 
 group by p.category 
 
--
select category,avg(unit_price) as price
from Products 
group by category
order by avg(unit_price ) desc

--

select p.product_name ,s.quantity_sold 
from products p

join sales s on p.product_id =s.product_id 
where quantity_sold >30






