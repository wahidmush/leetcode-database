-- 1934. Confirmation Rate
select s.user_id,
ifnull(round(sum(
case when action = 'confirmed' then 1 else 0 end
)/count(action),2),0) as confirmation_rate

from signups s
left join Confirmations c
on s.user_id = c.user_id
group by 1