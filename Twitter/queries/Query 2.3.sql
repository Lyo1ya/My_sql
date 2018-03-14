SELECT u.nick_name as user, count(f.follower_id) as followers
FROM user as u
left join follower as f
on u.id = f.followed_id
group by user
order by followers DESC;
