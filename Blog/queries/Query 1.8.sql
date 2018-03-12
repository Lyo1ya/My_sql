SELECT author.id, author.first_name, author.last_name, count(post_tag.tag_id) as tags
from author
join post 
on author.id = post.author_id 
join post_tag 
on post.id = post_tag.post_id
group by author.id
order by tags DESC
limit 5;