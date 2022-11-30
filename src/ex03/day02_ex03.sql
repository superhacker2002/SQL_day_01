WITH missing_dates AS
    (SELECT missing_date::DATE
    FROM generate_series('2022-01-01', '2022-01-10', interval '1 day')
    AS missing_date)

SELECT missing_date
FROM missing_dates
LEFT JOIN
    (SELECT *
     FROM person_visits
     WHERE person_id = 1 OR person_id = 2
     AND visit_date BETWEEN '2022-01-01' AND '2022-01-10')
     AS visits ON missing_date = visits.visit_date
WHERE visits.person_id is NULL
ORDER BY missing_date;