-- 코드를 입력하세요


SELECT REST_ID, REST_NAME, FOOD_TYPE, FAVORITES, ADDRESS, ROUND(AVG(review_score), 2) AS SCORE
FROM (
    SELECT * 
    FROM REST_INFO
    WHERE address LIKE '서울%'
) AS ri
JOIN REST_REVIEW
    USING(rest_id)
GROUP BY rest_id
ORDER BY AVG(review_score) DESC, favorites DESC;