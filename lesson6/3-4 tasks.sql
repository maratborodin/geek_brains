
--3
select 
	gender,
	count(*) as cnt
from
	(
	select 
		*, 
		(select gender 
			from profiles p 
				where p.user_id = l.user_id) as gender
	from likes l
	) tb
group by gender
order by cnt desc;

--4
select 
	CONCAT(u.first_name, ' ', u.last_name) as FIO,
	u.id,
	coalesce((select count(*) from messages m where u.id = m.from_user_id  group by m.from_user_id),0) as cnt_messages,
	coalesce((select count(*) from posts p where u.id = p.user_id  group by p.user_id),0) as cnt_posts,
	coalesce((select count(*) from media e where u.id = e.user_id  group by e.user_id),0) as cnt_media,
	coalesce((select count(*) from likes l where u.id = l.user_id  group by l.user_id),0) as cnt_likes
from users u;


