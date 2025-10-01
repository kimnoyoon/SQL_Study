-- 코드를 입력하세요
SELECT COUNT(user_id) AS users
FROM USER_INFO
WHERE joined LIKE '2021-%' AND age >= 20 AND age <= 29;