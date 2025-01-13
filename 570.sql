-- 570. Managers with at Least 5 Direct Reports
select e2.name from employee e1
join employee e2
on e1.managerid = e2.id
group by e2.id
having count(*) >=5