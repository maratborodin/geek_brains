create view appeal_detail as
select
	a.id,
	a.order_id,
	a.created_appeal_dt,
	a.finish_appeal_dt,
	as2.name as status,
	mc.name as malfunction,
	concat(o.first_name, ' ', o.last_name) as operator_FIO,
	op.name as operator_position
from appeals a 
join appeal_statuses as2
	on a.status_id = as2.id
join malfunction_categories mc
	on a.malfunction_id = mc.id
join operators o 
	on a.operator_id = o.id 
join operator_positions op 
	on o.position_id = op.id 
order by a.created_appeal_dt 
;


create view order_detail as
select
	o.id,
	concat(u.first_name, ' ', u.last_name) as customer_FIO,
	p.birthday,
	p.drivers_license_dt,
	p.is_yandex_plus,
	c2.name as customer_city,
	i.name as insurance,
	t.name as tariff,
	c.name as car_name,
	cc.name as car_category,
	o.start_dt, 
	o.end_dt, 
	o.amount 
from orders o 
join users u 
	on u.id = o.user_id 
join tariffes t 
	on o.tariff_id = t.id 
join cars c 
	on c.id = o.car_id 
join car_categories cc 
	on cc.id = c.category_id
join profiles p 
	on o.user_id = p.user_id
join cities c2 
	on p.city_id = c2.id 
join insurances i 
	on p.insurance_id = i.id
order by o.start_dt 
;