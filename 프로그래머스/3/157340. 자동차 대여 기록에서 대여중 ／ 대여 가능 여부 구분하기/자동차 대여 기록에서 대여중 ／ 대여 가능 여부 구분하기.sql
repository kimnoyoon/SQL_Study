WITH RENTED AS(
    SELECT *
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE DATE(START_DATE) <= '2022-10-16' AND DATE(END_DATE) >= '2022-10-16'
)

SELECT 
    DISTINCT A.CAR_ID, 
    CASE WHEN B.HISTORY_ID IS NULL THEN '대여 가능' ELSE '대여중' END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY A
LEFT JOIN RENTED B USING(CAR_ID) 
ORDER BY CAR_ID DESC;


select
    car_id,
    case
        when max('2022-10-16' between start_date and end_date) = 1 then '대여중'
        else '대여 가능'
    end as availability
from car_rental_company_rental_history
group by car_id
order by car_id desc;

select
    car_id,
    max(case 
        when start_date <= date('2022-10-16')
             and end_date >= date('2022-10-16') then '대여중'
        else '대여 가능'
    end) as availability
from car_rental_company_rental_history
group by car_id 
order by car_id desc;