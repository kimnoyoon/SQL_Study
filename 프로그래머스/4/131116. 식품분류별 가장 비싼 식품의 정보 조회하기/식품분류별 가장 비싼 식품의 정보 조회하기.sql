-- 코드를 입력하세요
WITH holy AS (
    SELECT 
        category, 
        price, 
        RANK() OVER (PARTITION BY category ORDER BY price DESC) AS price_rank, 
        product_name
    FROM FOOD_PRODUCT
)

SELECT category, price AS max_price, product_name
FROM holy
WHERE price_rank = 1 AND category IN ('과자', '국', '김치', '식용유')
ORDER BY max_price DESC;




SELECT category, price AS max_price, product_name
FROM (
    SELECT 
        category, 
        price, 
        RANK() OVER (PARTITION BY category ORDER BY price DESC) AS price_rank, 
        product_name
    FROM FOOD_PRODUCT) AS holy
WHERE price_rank = 1 AND category IN ('과자', '국', '김치', '식용유')
ORDER BY max_price DESC;