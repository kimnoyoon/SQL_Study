-- 코드를 입력하세요
SELECT flavor
FROM (
    SELECT *
    FROM FIRST_HALF
    WHERE total_order > 3000
) fh
JOIN ICECREAM_INFO
    USING(flavor)
WHERE ingredient_type = 'fruit_based';