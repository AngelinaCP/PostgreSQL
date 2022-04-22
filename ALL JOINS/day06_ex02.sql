select person.name, menu.pizza_name, menu.price, 
		(select menu.price - 
		 (menu.price * ((person_discounts.discount / 100))))
from person_order
INNER JOIN person ON person.id = person_order.person_id
INNER JOIN menu ON menu.id = person_order.menu_id
INNER JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
INNER JOIN person_discounts on person_discounts.person_id = person_order.person_id
order by person.name, pizza_name

