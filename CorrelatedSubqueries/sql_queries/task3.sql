SELECT 
    p.id, 
    pt.title, 
    p.price
FROM product p
JOIN product_title pt ON pt.id = p.product_title_id
JOIN product_category pc ON pc.id = pt.product_category_id
WHERE p.price > (
    SELECT AVG(p2.price)
    FROM product p2
    JOIN product_title pt2 ON pt2.id = p2.product_title_id
    WHERE pt2.product_category_id = pt.product_category_id
)
ORDER BY p.id ASC;
