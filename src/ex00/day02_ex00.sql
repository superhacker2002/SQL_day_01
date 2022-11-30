SELECT name
FROM
    (SELECT name, person_visits.person_id
    FROM pizzeria
    LEFT JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id) AS pizza
WHERE (person_id IS NULL);