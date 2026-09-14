select count (*) 
from products; 
select count(*)
from orders;
select count(*)
from customers;
select count(*) 
from category_targets;
select status , count(*) 
from orders 
group by status ; 