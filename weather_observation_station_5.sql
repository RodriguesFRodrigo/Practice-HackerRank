-- bottom up
select * from  -- Seleciona a primeira cidade da subquery
    -- Encontra todas as cidades ordenadas do maior tamanho para o menor e alfabeticamente (desempate)
    (select   city station_city, length(city) station_lenCity
     from     station
     order by station_lenCity desc, station_city asc)
where rownum = 1;

-- bottom up
select * from  -- Seleciona a primeira cidade da subquery
    -- Encontra todas as cidades ordenadas do menor tamanho para o maior e alfabeticamente (desempate)
    (select   city station_city, length(city) station_lenCity 
     from     station
     order by station_lenCity asc, station_city asc)
where rownum = 1;