WITH female_orders (name)
    AS
    (SELECT name, pizza_name FROM person
        JOIN person_order ON person.id = person_order.person_id
        JOIN menu ON person_order.menu_id = menu.id
    WHERE person.gender = 'female')


SELECT name FROM female_orders WHERE pizza_name = 'cheese pizza'
INTERSECT
SELECT name FROM female_orders WHERE pizza_name = 'pepperoni pizza'
ORDER BY name;
