-- 코드를 입력하세요
SELECT 
    ugb.title, 
    ugb.board_id, 
    ugr.reply_id, 
    ugr.writer_id, 
    ugr.contents, 
    DATE_FORMAT(ugr.created_date, '%Y-%m-%d')
FROM (
    SELECT board_id, title, contents
    FROM USED_GOODS_BOARD
    WHERE created_date LIKE '2022-10%'
) ugb
JOIN (
    SELECT board_id, reply_id, writer_id, contents, created_date
    FROM USED_GOODS_REPLY
) ugr
USING(board_id)
ORDER BY ugr.created_date, ugb.title;