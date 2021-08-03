# 1
select 
	p.gender,
	count(l.id) as cnt
from likes as l
left join profiles as p 
	on l.user_id = p.user_id 
group by p.gender
order by cnt desc;

# 2
select 
	CONCAT(u.first_name, ' ', u.last_name) as FIO,
	u.id,
	count(distinct m.id) as cnt_messages,
	count(distinct p.id) as cnt_posts,
	count(distinct e.id) as cnt_media,
	count(distinct l.id) as cnt_likes
from users as u
left join messages as m
	on u.id = m.from_user_id
left join posts as p 
	on u.id = p.user_id
left join media as e
	on u.id = e.user_id
left join likes as l
	on u.id = l.user_id
group by u.id, FIO;
