select pizzeria.name, count(*) as count_of_orders,
avg(price) as average_price, max(price) as max_price, min(price) as min_price
from menu
join pizzeria on menu.pizzeria_id = pizzeria.id
join person_order po on menu.id = po.menu_id
group by 1 order by name, count_of_orders desc

