insert into person_visits values ((select max(id) + 1 from person_visits), (select person.id 
										 from person where person.name = 'Dmitriy'),
								         (select distinct pizzeria.id from menu
										 join pizzeria on pizzeria.id = menu.pizzeria_id
										 where price < 800 and 
										 pizzeria.id not in (select person_visits.pizzeria_id 
										 from person_visits join person 
										 on person.id = person_visits.person_id 
										 where person.name = 'Dmitriy')), '2022-01-08');
										 
REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats

