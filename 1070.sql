-- 1070. Product Sales Analysis III
select  s.product_id, first_year, s1.quantity,  s1.price
from
(select product_id, min(year) as first_year
from sales
group by product_id
) s
join sales s1
on s.product_id  = s1.product_id
and s.first_year = s1.year
join Product p
on
 s.product_id = p.product_id