SELECT menu.pizza_name, menu.price, pizzeria.name FROM public.menu
LEFT JOIN person_order ON person_order.menu_id = menu.id
LEFT JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE person_order.id is null
ORDER BY pizza_name, price

