SELECT user.id, user.nick_name as user
from user
left join tweet 
on user.id = tweet.user_id
group by user.nick_name
having count(tweet.id) = 0
order by user.id;
