select sum(city.population)
from city
inner join country on country.code = city.countrycode
where country.continent = 'Asia';
