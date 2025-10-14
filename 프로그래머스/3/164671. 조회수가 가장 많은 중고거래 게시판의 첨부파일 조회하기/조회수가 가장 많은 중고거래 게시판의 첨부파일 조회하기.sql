-- 코드를 입력하세요
SELECT CONCAT('/home/grep/src/', TOP_VIEW.board_id, '/', moly.file_id, moly.file_name, moly.file_ext) AS file_path
FROM (
    SELECT *
    FROM USED_GOODS_BOARD
    ORDER BY views DESC
    LIMIT 1
) AS TOP_VIEW
LEFT JOIN USED_GOODS_FILE moly
ON TOP_VIEW.board_id = moly.board_id
ORDER BY moly.file_id DESC;