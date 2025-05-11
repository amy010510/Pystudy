-- 코드를 입력하세요
SELECT b.TITLE, b.BOARD_ID, r.REPLY_ID, r.WRITER_ID, r.CONTENTS,  date_format(r.CREATED_DATE, '%Y-%m-%d') as CREATED_DATE
from used_goods_board as b
join used_goods_reply as r
on b.board_id = r.board_id
WHERE b.created_date BETWEEN '2022-10-01' AND '2022-10-31'
order by r.created_date asc, b.title asc;