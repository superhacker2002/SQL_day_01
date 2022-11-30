SELECT COALESCE (person.name, '-') AS person_name,
       visits.visit_date AS visit_date,
       COALESCE (pizzeria.name, '-') AS pizzeria_name
FROM
    (SELECT *
    FROM person_visits
    WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS visits
FULL JOIN person ON person.id = visits.person_id
FULL JOIN pizzeria on pizzeria.id = visits.pizzeria_id
ORDER BY 1, 2, 3
