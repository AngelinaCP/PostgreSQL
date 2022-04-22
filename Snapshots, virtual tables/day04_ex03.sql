SELECT day as missing_date
FROM v_generated_dates
WHERE day not in (SELECT person_visits.visit_date from person_visits)
ORDER BY day