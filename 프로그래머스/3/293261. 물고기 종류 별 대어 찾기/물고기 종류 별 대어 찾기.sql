WITH fish AS(
    SELECT *
    FROM fish_info
    LEFT JOIN fish_name_info USING(fish_type)
),
fl AS(
    SELECT fish_type, MAX(length) AS length
    FROM fish
    GROUP BY fish_type
)

SELECT fish.id, fish.fish_name, fl.length
FROM fl
LEFT JOIN fish
ON fish.fish_type = fl.fish_type
    AND fish.length = fl.length
ORDER BY ID;