SELECT distinct h.car_id
from CAR_RENTAL_COMPANY_RENTAL_HISTORY h
join CAR_RENTAL_COMPANY_CAR c 
on c.car_id = h.car_id
where month(start_date) = '10' and car_type='세단'
order by h.car_id desc;