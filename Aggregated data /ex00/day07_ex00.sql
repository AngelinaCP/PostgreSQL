select person_id, count (person_id) as count_of_visits
from person_visits
group by 1
order by count_of_visits DESC
