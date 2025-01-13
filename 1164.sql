-- 1164. Product Price at a Given Date
select distinct product_id, 
ifnull((select new_price from products p2
where p1.product_id = p2.product_id
and change_date <='2019-08-16'
order by change_date desc limit 1
),10) as price
from products p1