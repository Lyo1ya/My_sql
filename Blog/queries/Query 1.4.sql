SELECT post.title, group_concat(tag.name SEPARATOR ', ')
FROM post
left join post_tag 
on post.id = post_tag.post_id
left join tag 
on post_tag.tag_id = tag.id
group by post.title;
