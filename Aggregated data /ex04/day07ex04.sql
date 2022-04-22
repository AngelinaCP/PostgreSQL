select person.name, count(person_id) as count_of_visits
from person
join person_visits pv on person.id = pv.person_id
group by 1, person_id
having  count(person_id) > 3
order by count_of_visits

