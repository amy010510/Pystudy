-- 코드를 입력하세요
SELECT 
    concat('/home/grep/src/',b.board_id,'/', f.file_id, f.file_name, f.file_ext) as file_path
from USED_GOODS_BOARD as b
left join USED_GOODS_FILE as f
on b.board_id = f.board_id
where b.views = ( -- 가장 view높은 것
    select max(views)
    from USED_GOODS_BOARD
    )
order by b.views desc;
