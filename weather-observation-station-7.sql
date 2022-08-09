select distinct city
from station
where city like '%a' or
      city like '%e' or
      city like '%i' or
      city like '%o' or
      city like '%u';

-- Using regexp_like
select distinct city
from station
where regexp_like(city, '[aAeEiIoOuU]$');

-- Using regexp_like and i lower and upper
-- [aeiou] -> a or e or i or o or u
-- i -> aA, eE, iI, oO, uU
select distinct city
from station
where regexp_like(city, '[aeiou]$', 'i');
