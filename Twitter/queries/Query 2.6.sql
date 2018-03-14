SELECT tweet.id, COUNT(comment.id) as comments
FROM tweet 
LEFT JOIN comment
on tweet.id = comment.tweet_id
group by tweet.id
order by comments DESC;
