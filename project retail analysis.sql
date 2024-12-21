create database retail_analysis
use retail_analysis
select * from  table1
select * from table2
#1 top 10 highest revenue genereating products
select product_id,SUM(sales_price) as total_revenue
from table2
group by product_id
order by total_revenue desc
limit 10;
#2 find the top 5 cities with highest profit margin
select city from table1
right join table2
on table1.order_id = table2.order_id
select city,sum(profit) as total_profit,
sum(sales_price) as total_sales,
(sum(profit)/ sum(sales_price)) * 100 as profit_margin
from table1
join table2
on table1.order_id = table2.order_id
group by city order by profit_margin desc
limit 5;
#3 calculate the total discount given for each category
select category,sum(discount) as total_discount
from table2
group by category;
#4 find the average sale price per product category
select category,avg(sales_price) as average_sales_price
from table2
group by category;
#5 find the regiion with the highest average sales price
select region from table1
right join table2
on table1.order_id = table2.order_id
describe table1;
select region,sum(profit) as total_profit,
sum(sales_price) as total_sales,
(sum(profit)/ sum(sales_price)) * 100 as profit_margin
from table1
join table2
on table1.order_id = table2.order_id
group by region order by profit_margin desc
#6 find the total profit per category
select category,sum(profit) as total_profit
from table2
group by category;
#7 top 3 segments with the highest quantity of orders
select segment from table1
right join table2
on table1.order_id = table2.order_id
describe table1
select segment,sum(quantity) as total_quantity,
from table1
join table2
on table1.order_id = table2.order_id
group by segment order by total_quantity desc;
#8 average discount percentage given per region
select region from table1
right join table2
on table1.order_id = table2.order_id
describe table1
select region,avg(discount_percent) as average_discount
from table1
join table2
on table1.order_id = table2.order_id
group by region order by average_discount desc;
#9 find the product category with the highest total profit
select category,sum(profit) as total_profit
from table2
group by category order by total_profit desc
limit 1;
#10 total revenue generated per year
select order_date from table1
right join table2
on table1.order_id = table2.order_id
select YEAR(order_date) as year
sum(sales_price) as total_revenue
from table1
join table2
group by year(order_date)
order by year;
select * from table2
# 11 find the total profit per sub category
select sub_category,sum(profit) as total_profit
from table2
group by sub_category;
#12find the product sub category with the highest profit
select sub_category,sum(profit) as total_profit
from table2
group by sub_category order by total_profit desc
limit 1;
#13 find the category with the highest cost price
select category,sum(cost_price) as total_cost_price
from table2
group by category order by total_cost_price desc
limit 1;
#14 find the highest cost price per category
select category,sum(cost_price) as total_cost_price
from table2
group by category;
#15 find the product sub category with highest cost price
select sub_category,sum(cost_price) as total_cost_price
from table2
group by sub_category order by total_cost_price desc
limit 1;
#16 find the highest  profit per sub category
select sub_category,sum(cost_price) as total_cost_price
from table2
group by sub_category
select * from table1
# 17 find the top 5 postal_code with highest profit margin
select postal_code from table1
right join table2
on table1.order_id = table2.order_id
select postal_code,sum(profit) as total_profit,
sum(sales_price) as total_sales,
(sum(profit)/ sum(sales_price)) * 100 as profit_margin
from table1
join table2
on table1.order_id = table2.order_id
group by postal_code order by profit_margin desc
limit 5;
#18 find the top 3 ship_mode with highest profit margin
select ship_mode from table1
right join table2
on table1.order_id = table2.order_id
select ship_mode,sum(profit) as total_profit,
sum(sales_price) as total_sales,
(sum(profit)/ sum(sales_price)) * 100 as profit_margin
from table1
join table2
on table1.order_id = table2.order_id
group by ship_mode order by profit_margin desc
limit 3;
#19 find the state with average discount percent
select state from table1
right join table2
on table1.order_id = table2.order_id
describe table1
select state,avg(discount_percent) as average_discount
from table1
join table2
on table1.order_id = table2.order_id
group by state order by average_discount desc;
#20 find the top 3 state with highest profit margin
select state from table1
right join table2
on table1.order_id = table2.order_id
select state,sum(profit) as total_profit,
sum(sales_price) as total_sales,
(sum(profit)/ sum(sales_price)) * 100 as profit_margin
from table1
join table2
on table1.order_id = table2.order_id
group by state order by profit_margin desc
limit 3;
