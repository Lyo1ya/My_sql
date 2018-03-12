SELECT user.nick_name, count(follower.follower_id) as followers
FROM user 
left join follower 
on user.id = follower.followed_id
group by user.nick_name
order by followers DESC;