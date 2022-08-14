-- Using select distinct and simple select
select count(city) - count(distinct city) from station;
