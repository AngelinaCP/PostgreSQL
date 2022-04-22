select person.address as address , pizzeria.name, count(*) as count_of_orders
from menu
join pizzeria on menu.pizzeria_id = pizzeria.id
join person_order po on menu.id = po.menu_id
join person on person.id = po.person_id
group by 2, 1 order by address, name, count_of_orders desc

