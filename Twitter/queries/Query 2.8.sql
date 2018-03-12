select comment.id, comment.body, comment.posting_date
from comment
where comment.posting_date > date_sub(CURDATE(),INTERVAL 10 hour)
order by comment.posting_date DESC;