select distinct city from station where city like 'A%' or
                                        city like 'E%' or
                                        city like 'I%' or
                                        city like 'O%' or
                                        city like 'U%';

-- Using regexp_like
-- ^[aeiou] -> a|A or e|E or i|I or o|O or u|U
select distinct city
from station
where regexp_like(city, '^[aeiou]', 'i');
