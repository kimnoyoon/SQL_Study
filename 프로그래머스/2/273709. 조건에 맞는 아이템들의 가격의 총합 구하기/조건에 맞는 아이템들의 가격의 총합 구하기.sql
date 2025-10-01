-- 코드를 작성해주세요
SELECT SUM(price) AS total_price
FROM ITEM_INFO
WHERE rarity = 'LEGEND';