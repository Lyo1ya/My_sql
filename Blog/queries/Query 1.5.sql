SELECT post.id, post.title
FROM post
left join post_tag 
on post.id = post_tag.post_id
left join tag 
on post_tag.tag_id = tag.id
where tag_id is null;