SELECT user.nick_name 
FROM user 
join follower 
on user.id = follower.followed_id
group by user.nick_name
having count(follower_id) > 0;