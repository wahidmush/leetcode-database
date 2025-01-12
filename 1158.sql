-- 1158. Market Analysis I
select user_id as buyer_id ,
join_date ,ifnull(count(order_id),0) as orders_in_2019
from Users u left join Orders o
on u.user_id = o.buyer_id
and year(order_date) = 2019
group by 1
