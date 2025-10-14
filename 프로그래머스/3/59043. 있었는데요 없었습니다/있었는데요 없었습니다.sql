-- 코드를 입력하세요
SELECT animal_id, AO.name
FROM ANIMAL_INS AI
JOIN ANIMAL_OUTS AO
USING(animal_id)
WHERE AI.datetime > AO.datetime
ORDER BY AI.datetime;