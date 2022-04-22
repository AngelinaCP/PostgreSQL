(select * from person_visits 
where person_visits.visit_date = '2022-01-06'
except 
select * from person_visits 
where person_visits.visit_date = '2022-01-02')
union 
(select * from person_visits
where person_visits.visit_date = '2022-01-02'
except 
select * from person_visits 
where person_visits.visit_date = '2022-01-06')
order by person_id