-- 코드를 작성해주세요
WITH A AS (
    SELECT 
        emp_no,
        emp_name,
        CASE WHEN score >= 96 THEN 'S'
            WHEN score >= 90 THEN 'A'
            WHEN score >= 80 THEN 'B' ELSE 'C' END AS grade,
        sal,
        CASE WHEN score >= 96 THEN 0.2
            WHEN score >= 90 THEN 0.15
            WHEN score >= 80 THEN 0.1 ELSE 0 END AS bonus_ratio
    FROM (
        SELECT emp_no, AVG(score) AS score
        FROM HR_GRADE
        GROUP BY emp_no) holy
    RIGHT JOIN (
        SELECT emp_no, emp_name, sal
        FROM HR_EMPLOYEES
    ) moly USING(EMP_NO)
)

SELECT emp_no, emp_name, grade, sal * bonus_ratio AS bonus
FROM A
ORDER BY emp_no;