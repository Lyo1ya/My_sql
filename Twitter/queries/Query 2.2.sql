SELECT AVG(YEAR(CURRENT_DATE) - YEAR(birthdate) -                            
    (DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(birthdate, '%m%d'))) AS age
FROM `user`;