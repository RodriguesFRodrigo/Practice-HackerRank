-- using avg
select country.continent, round(avg(city.population)-0.5)
from country
inner join city on city.countrycode = country.code
group by country.continent;

-- using floor
select country.continent, floor(avg(city.population))
from country
inner join city on city.countrycode = country.code
group by country.continent;
