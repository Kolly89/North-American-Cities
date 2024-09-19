create table North_American_cities (
City varchar(50) not null,
Country varchar(50) not null,
Population int not null,
Latitude decimal(10, 6) not null,
Longitude decimal(10, 6) not null

);

drop table North_American_cities

select * from North_American_cities

insert into North_American_Cities (City, Country, Population, Latitude, Longitude)
Values
('Guadalajara', 'Mexico', 1500800, 20.659699, -103.349609),
('Toronto', 'Canada', 2795060, 43.653226, -79.383184),
('Houston', 'United States', 2195914, 29.760427, -95.369803),
('New York', 'United States', 8405837, 40.712784, -74.005941),
('Philadelphia', 'United States', 1553165, 39.952584, -75.165222),
('Havana', 'Cuba', 2106146, 23.05407, -82.345189),
('Mexico City', 'Mexico', 8555500, 19.432608, -99.133208),
('Phoenix', 'United States', 1513367, 33.448377, -112.074037),
('Los Angeles', 'United States', 3884307, 34.052234, -118.243685),
('Ecatepec de Morelos', 'Mexico', 1742000, 19.601841, -99.050674),
('Montreal', 'Canada', 1717767, 45.501689, -73.567256),
('Chicago', 'United States', 2718782, 41.878114, -87.629798)

--1. List all the Canadian cities and their populations
select city, population
from North_American_Cities
where country = 'Canada'

--2. Order all the cities in the United States by their latitude from north to south
select city, latitude
from North_American_Cities
where country = 'United States'
order by latitude desc

--3. List all the cities west of Chicago, ordered from west to east
select city, longitude
from North_American_Cities
where longitude < -87.629798
order by longitude 

--4. List the two largest cities in Mexico (by population)
select top 2 city, population
from North_American_Cities
where country = 'mexico'
order by population desc

--5. List the third and fourth largest cities (by population) in the United States and their population
select city, population
from North_American_Cities
where country = 'united states'
order by population desc
offset 2 rows fetch next 2 rows only
