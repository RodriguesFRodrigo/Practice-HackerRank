-- | to use two or more patterns
select distinct city
from station
where regexp_like(city, '^[^aeiou]|[^aeiou]$', 'i');
