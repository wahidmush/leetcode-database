-- 181. Employees Earning More Than Their Managers
select e1.name as employee from Employee e1
join employee e2
on e1.managerId = e2.id
where e1.salary > e2.salary