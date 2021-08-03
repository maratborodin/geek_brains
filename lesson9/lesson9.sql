
# transaction
start transaction;

insert into sample.users
select 
	id,
	name 
from  example.users
where id = 1;

delete from example.users
where id = 1;

commit;


# view
create view cat as

select 
	pr.name as product_name, 
	c.name as catalog_name
from products pr
join catalogs c 
	on pr.catalog_id = c.id;
	

# user+grant

create user shop_read;

create user shop;

grant usage on shop.* to shop;

grant select on shop.* to shop_read;

# function

delimiter //

create function hello()
return text no sql
begin
	declare hour as int;
	set = hour(now());
	case
		when hour between 0 and 5
			then return 'Доброй ночи';
		when hour between 6 and 11
			then return 'Доброе утро';
		when hour between 12 and 17
			then return 'Добрый день';
		when hour between 18 and 23
			then return 'Добрый вечер';
	end case;	
end //

delimiter //

# trigger

create trigger name_description_insert before insert ON products
for each row begin
  if new.name is null and new.description is null 
  then
    signal sqlstate '45000'
    set message = 'NULL';
  end if;
end//

create trigger name_description_update before update ON products
for each row begin
  if new.name is null and new.descritpion is null 
  then
    signal sqlstate '45000'
    set message = 'NULL';
  end if;
end//
