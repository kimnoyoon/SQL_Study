-- 코드를 입력하세요


SELECT DISTINCT car_id
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY holy
JOIN (SELECT car_id, car_type
     FROM CAR_RENTAL_COMPANY_CAR) moly
    USING(car_id)
WHERE MONTH(start_date) = 10 AND car_type = '세단'
ORDER BY car_id DESC;