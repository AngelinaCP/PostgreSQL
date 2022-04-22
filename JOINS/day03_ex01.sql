SELECT menu.id as menu_id FROM public.menu
LEFT JOIN person_order ON person_order.menu_id = menu.id
WHERE person_order.id is null
ORDER BY menu_id ASC 