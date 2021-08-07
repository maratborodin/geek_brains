#1
select 
	u.id 
from users u 
inner join orders o 
	on u.id = o.user_id;

#2
select 
	p.*,
	c.name
from products p
left join catalogs c 
	on p.catalog_id = c.id; 

#3
select
	f.id,
	c.name,
	c1.name
from flights f 
left join cities c 
	on f.from = c.label
left join cities c1 
	on f.to = c1.label

