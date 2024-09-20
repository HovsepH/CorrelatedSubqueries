select id, name 
from  product_category 
WHERE  id not in (select DISTINCT pc.id 
from product p 
join product_title pt on pt.id = p.product_title_id 
JOIN product_category pc on pc.id = pt.product_category_id 
WHERE  p.id in (SELECT  p.id FROM  order_details od right join product p  on p.id = od.product_id WHERE od.product_id is null))
ORDER BY 
    product_category.id ASC;