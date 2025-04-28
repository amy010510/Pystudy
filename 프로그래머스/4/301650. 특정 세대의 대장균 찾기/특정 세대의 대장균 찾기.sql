-- 3세대 찾기
select eco.id 
from ecoli_data as eco
join ecoli_data as eco2
on eco.parent_id = eco2.id
where eco.parent_id in ( 
    select e.id
    from ecoli_data e
    where e.id in (
        select e2.id
        from ecoli_data as e1
        join ecoli_data as e2
        on e1.id = e2.parent_id
        where e1.parent_id is null)
)
order by id asc;