-- 코드를 입력하세요
SELECT AO.animal_id, AO.name
FROM ANIMAL_INS AS AI
RIGHT JOIN ANIMAL_OUTS AS AO
    USING(animal_id)
WHERE AI.datetime is null;