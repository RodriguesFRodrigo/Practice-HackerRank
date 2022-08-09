-- Do not start with vowel
-- ^[] -> start with...
-- [^] --> not include nothing inside []
-- ^[^aeiou] --> do not start with a e i o or u
select distinct city
from station
where regexp_like(city, '^[^aeiou]', 'i');
