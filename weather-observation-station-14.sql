select max(round(lat_n, 4))
from station
where lat_n < 137.2345
order by lat_n asc;
