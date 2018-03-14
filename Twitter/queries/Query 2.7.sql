select id, body as tweet, posting_date as date 
from tweet as t
where t.user_id = 5
UNION
select t.id, t.body as tweet, t.posting_date as date
from tweet as t 
left join follower as f
on t.user_id = f.follower_id
where followed_id = 5
order by date DESC;
