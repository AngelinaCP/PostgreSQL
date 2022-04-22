create view v_price_with_discount as 
select person.name, menu.pizza_name, price, round(menu.price * 0.9) as discount_price  from person_order
join person on person_order.person_id = person.id
join menu on person_order.menu_id = menu.id
order by person.name, menu.pizza_name