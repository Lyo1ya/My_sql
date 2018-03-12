select tag.name, count(post_tag.post_id) as posts
from tag
join post_tag
on tag.id = post_tag.tag_id
group by tag.name
order by posts ASC;