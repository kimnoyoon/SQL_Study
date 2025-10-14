-- 코드를 입력하세요

SELECT moly.member_name, holy.review_text, DATE_FORMAT(review_date, '%Y-%m-%d')
FROM REST_REVIEW holy
JOIN MEMBER_PROFILE moly
    USING(member_id)
WHERE member_id = (
    SELECT member_id
    FROM REST_REVIEW
    GROUP BY member_id
    ORDER BY COUNT(review_id) DESC
    LIMIT 1)
ORDER BY holy.review_date, holy.review_text;