select count(*) as fish_count
from FISH_INFO
where ifnull(LENGTH,0) <= 10