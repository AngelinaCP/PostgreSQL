(select pizzeria.name, count(*) as count, 'order' as action_type
from menu
join pizzeria on menu.pizzeria_id = pizzeria.id
join person_order po on menu.id = po.menu_id
group by 1 order by count desc limit 3)
union
(select pizzeria.name , count (*) as count, 'visit' as action_type
from pizzeria
join person_visits on pizzeria.id = person_visits.pizzeria_id
where pizzeria.id = person_visits.pizzeria_id
group by 1 order by count desc limit 3)
order by 3, count desc
