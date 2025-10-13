-- 코드를 작성해주세요
WITH A AS (
    SELECT *
    FROM HR_DEPARTMENT
    JOIN HR_EMPLOYEES USING(DEPT_ID)
)

SELECT dept_id, dept_name_en, ROUND(AVG(sal)) AS AVG_SAL
FROM A
GROUP BY dept_id, dept_name_en
ORDER BY AVG_SAL DESC;