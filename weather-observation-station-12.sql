
-- bad solution
select distinct city
from station
where regexp_like(city, '^[^aeiou]', 'i') and
      regexp_like(city, '[^aeiou]$', 'i');
      
-- god solution
-- ^[^aeiou] do not start
-- .* any character
-- [^aeiou]$ do not end
select distinct city
from station
where regexp_like(city, '^[^aeiou].*[^aeiou]$', 'i');
