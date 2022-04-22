
with smth (name, count) as ((select pizzeria.name, count(*) as count
from menu
join pizzeria on menu.pizzeria_id = pizzeria.id
join person_order po on menu.id = po.menu_id
group by 1 order by count)

union all

(select pizzeria.name , count (*) as count
from pizzeria
join person_visits on pizzeria.id = person_visits.pizzeria_id
where pizzeria.id = person_visits.pizzeria_id
group by 1 order by count))

select distinct name, sum(count) over (partition by smth.name) as total_count
from smth
order by total_count desc

