select person.name, count (person_id) as count_of_visits
from person_visits
join person on person.id = person_visits.person_id
group by 1
order by count_of_visits DESC limit 5
