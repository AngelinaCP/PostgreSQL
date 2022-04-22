SELECT pizza_name, price, pizzeria.name, person_visits.visit_date
FROM menu
LEFT JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
LEFT JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
WHERE (menu.price BETWEEN 800 AND 1000) AND person_visits.person_id = (SELECT id FROM person WHERE name = 'Kate')
ORDER by pizza_name, price, pizzeria.name

