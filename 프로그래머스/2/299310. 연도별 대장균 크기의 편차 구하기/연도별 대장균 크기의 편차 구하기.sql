-- 코드를 작성해주세요
WITH year_info AS(
    SELECT *, YEAR(differentiation_date) AS year
    FROM ECOLI_DATA
),
max_size AS(
    SELECT 
        YEAR(differentiation_date) AS year,
        MAX(size_of_colony) AS max_size_of_colony
    FROM year_info
    GROUP BY YEAR(differentiation_date)
)

SELECT ms.year, max_size_of_colony - size_of_colony AS year_dev, id
FROM max_size AS ms
JOIN year_info AS yi
    ON ms.year=yi.year
ORDER BY year, year_dev;