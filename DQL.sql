select * from customers;

select product_name, category from product where price between 5000 and 10000;


select * from products order by price desc;


select quantity, avg(total_amount), max(total_amount), min(total_amount) from orders;


select product_id, quantity from product inner join orders using(product_id);


select customer_id from customer inner join orders using(customer_id) where quantity >2


select extract(month from order_date) as month, extract(year from order_date) as year, count(order_id) from orders order by month where year= '2020';


select product_name, customer_name, orderdate from order inner join customer 
using(customer_id) inner join product on orders.product_id = product.product_id;



select customer_id from orders not in (select customerid from customer);