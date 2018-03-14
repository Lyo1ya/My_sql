select id, body, posting_date as date
from comment
where posting_date > date_sub(CURDATE(),INTERVAL 10 hour)
order by posting_date DESC;
