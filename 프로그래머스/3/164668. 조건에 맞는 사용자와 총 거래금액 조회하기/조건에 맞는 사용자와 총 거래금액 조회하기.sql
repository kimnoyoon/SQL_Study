-- 코드를 입력하세요

SELECT user_id, nickname, sum(price) AS total_sales
FROM USED_GOODS_BOARD UGB
    JOIN USED_GOODS_USER UGU
    ON UGB.writer_id = UGU.user_id
WHERE status = 'done'
GROUP BY user_id
HAVING sum(price) >= 700000
ORDER BY sum(price);