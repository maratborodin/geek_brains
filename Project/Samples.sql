
 # count of orders with subscribe and without
select
	p.is_yandex_plus,
	count(o.id) as cnt
from orders o
join profiles p 
	on o.user_id = p.user_id 
group by p.is_yandex_plus; 

 # count of orders by car categories
select
	count(id) as cnt,
	car_category
from
(
select
	o.id,
	cc.name as car_category
from orders o 
join cars c 
	on c.id = o.car_id 
join car_categories cc 
	on c.category_id = cc.id 
) tb
group by car_category;


# cnt_orders, cnt_appeals, sum of amount by customers
select 
	CONCAT(u.first_name, ' ', u.last_name) as FIO,
	u.id,
	count(distinct o.id) as cnt_orders,
	count(distinct a.id) as cnt_appeals,
	sum(o.amount) as amount
from users as u
left join orders as o
	on u.id = o.user_id 
left join appeals as a
	on o.id = a.order_id 
group by u.id, FIO;