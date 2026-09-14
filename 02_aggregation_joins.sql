select p.category, count(*) AS order_count , sum(o.amount_inr) AS total_revune , avg(o.amount_inr) AS avg_revnue 
from orders o 
join products p ON o.product_id = p.product_id 
where o.status = 'Delivered'
group by p.category
having total_revune > 10000;

select p.product_name,count(o.order_id) AS order_count
from products p 
left join orders o on p.product_id = o.product_id
group by p.product_id
order by order_count ASC;