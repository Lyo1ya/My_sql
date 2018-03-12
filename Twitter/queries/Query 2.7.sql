select id, body, posting_date from tweet 
where tweet.user_id = 5
UNION
select tweet.id, tweet.body, tweet.posting_date from tweet 
left join follower
on tweet.user_id = follower.follower_id
where followed_id = 5
order by posting_date DESC;