-- 코드를 입력하세요
SELECT 
    user_id, 
    nickname, 
    CONCAT(city, ' ', street_address1, ' ', street_address2) AS 전체주소,
    CONCAT(LEFT(TLNO, 3), '-', MID(TLNO, 4, 4), '-', RIGHT(TLNO, 4)) AS 전화번호
FROM USED_GOODS_USER UGU
JOIN (
    SELECT writer_id
    FROM USED_GOODS_BOARD
    GROUP BY writer_id
    HAVING COUNT(writer_id) >= 3
    ) moly ON UGU.user_id = moly.writer_id
ORDER BY user_id DESC;

SELECT 
    user_id, 
    nickname, 
    CONCAT(city, ' ', street_address1, ' ', street_address2) AS 전체주소,
    CONCAT(SUBSTR(TLNO, 1, 3), '-', SUBSTR(TLNO, 4, 4), '-', SUBSTR(TLNO, 8, 4)) AS 전화번호
FROM USED_GOODS_USER UGU
JOIN (
    SELECT writer_id
    FROM USED_GOODS_BOARD
    GROUP BY writer_id
    HAVING COUNT(writer_id) >= 3
    ) moly ON UGU.user_id = moly.writer_id
ORDER BY user_id DESC;