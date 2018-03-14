SELECT u.nick_name as user
FROM user as u
join follower as f
on u.id = f.followed_id
group by user
having count(follower_id) > 0;
