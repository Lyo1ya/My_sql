select count(*) from post
where posting_date >= date_sub(CURDATE(),INTERVAL 24 hour);
