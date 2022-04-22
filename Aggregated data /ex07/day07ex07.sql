select pizzeria.name,
round(avg(rating), 4) as global_rating
from menu
join pizzeria on menu.pizzeria_id = pizzeria.id
join person_order po on menu.id = po.menu_id
group by 1 order by global_rating desc

