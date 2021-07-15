use vk;

select * from users u ;

--Filtration
1)
update users set
	created_at = now()
where created_at is null 

update users set
	updated_at = now()
where updated_at is null 

2)
drop table if exists task2;

create temporary table task2 (date text);

insert into task2 values ('20.10.2017 8:10');

alter table task2 add column date2 datetime;

update task2 set date2 = str_to_date(date, '%d.%m.%Y %T');

alter table task2 drop column date;

select * from task2;

alter table task2 RENAME COLUMN date2 to date;

select * from task2;


3)
select value from storehouses_products
order by case when value <> 0 then value end desc,
			case when value = 0 then value end;


--Aggregation
1)
select floor(avg(TO_DAYS(NOW()) - TO_DAYS(birthday))/365.25) AS age from profiles;

2)
select dayofweek(date_format(concat(year(now()),"-", month(birthday),"-", day(birthday)), '%Y-%m-%d')) as day_of_week,
		count(*) as cnt_of_birthday
from profiles
group by dayofweek(date_format(concat(year(now()),"-", month(birthday),"-", day(birthday)), '%Y-%m-%d'))
order by dayofweek(date_format(concat(year(now()),"-", month(birthday),"-", day(birthday)), '%Y-%m-%d'));


