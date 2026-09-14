select o.order_id, o.amount_inr, c.city
from orders o
join customers c on o.customer_id = c.customer_id
where c.city ='Mumbai' ; 

select distinct category 
from products;

select order_id, amount_inr 
from orders
order by amount_inr desc
limit 5;

select count(*) as total_orders
from orders;

select order_id, amount_inr 
from orders
where payment_mode in ('UPI,Wallet') ;

select order_id , amount_inr 
from orders
where amount_inr BETWEEN 100 and 300 ;

select order_id , amount_inr 
from orders
where amount_inr NOT BETWEEN 100 AND 300;

select order_id , status , rating 
from orders
where rating IS NULL ;