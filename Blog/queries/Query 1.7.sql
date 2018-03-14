select tag.name as tag, count(pt.post_id) as posts
from tag
left join post_tag as pt
on tag.id = pt.tag_id
group by tag.name
order by posts ASC;
