CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS 
select pizzeria.name from menu
join pizzeria on pizzeria.id = menu.pizzeria_id
join person_visits on menu.pizzeria_id = person_visits.pizzeria_id
join person on person.id = person_visits.person_id
where price < 800 and person.name = 'Dmitriy' and visit_date = '2022-01-08'