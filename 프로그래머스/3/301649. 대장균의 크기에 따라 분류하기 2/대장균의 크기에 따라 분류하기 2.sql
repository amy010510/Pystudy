select id,
  CASE NTILE(4) OVER (ORDER BY size_of_colony desc)
    WHEN 1 THEN 'CRITICAL'
    WHEN 2 THEN 'HIGH'
    WHEN 3 THEN 'MEDIUM'
    WHEN 4 THEN 'LOW'    
    end as COLONY_NAME
from ecoli_data
order by id;
-- 개수는 4의 배수. 전체개수*25/100 = 각 구간 개수