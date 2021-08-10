use vk;

# indexes

create index likes_target_id_idk on likes(target_id);

create index profiles_birthday_idk on profiles (birthday);

create index users_fio_idk on users (first_name, last_name);

# CTE

select
	c.name
from communities_users cu
left join communities c 
	on cu.community_id = c.id;


select distinct
commumity_name,
count(fio) over (partition by commumity_name) / count(commumity_name) over() * 100 as users_community_avg,
first_value (FIO) over(partition by commumity_name order by age) as youngest_user,
first_value (FIO) over(partition by commumity_name order by age desc) as oldest_user,
count(fio) over (partition by commumity_name) as community_cnt,
count(FIO) over () as users_cnt,
count(FIO) over () / count(fio) over (partition by commumity_name) as percent_users_to_community
from
(
	select
		concat(u.first_name,' ',u.last_name) as FIO,
		YEAR(CURDATE())-YEAR(p.birthday) as age,
		c.name as commumity_name
	from users u
	left join profiles p 
		on u.id = p.user_id
	left join communities_users cu 
		on u.id = cu.user_id 
	left join communities c 
		on cu.community_id = c.id
) tb;




