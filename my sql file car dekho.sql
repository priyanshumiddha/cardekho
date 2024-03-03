use cars;
-- Read cars Data--
Select * from car_dekho;
-- Total Cars: To get a count of total records--
Select Count(*) from car_dekho;
-- The manager asked the employee how many cars willbe available in 2023?--
Select count(*) from car_dekho
where Year = 2023;
-- The manager asked the employee how many cars is avilable in 2020,2021,2022?--
select count(*) from car_dekho Where year in(2020,2021,2022) group by year;
-- Clent asked me to print the total of all cars by year, i don't want to see the all details--
select year, count(*) from car_dekho group by year;
-- client asked to car dealer agent how many diesel cars will there be in 2020--
Select  Count(*) from car_dekho where fuel="Diesel" and year = 2020;
-- client asked to car dealer agent how many petrol cars will there be in 2020--
Select  Count(*) from car_dekho where fuel="Petrol" and year = 2020;
-- the manager told the employee to give a print all the fuel cars (petrol, diesel, CNG )come all the year--
select year, count(*) from car_dekho where fuel = "Petrol" group by year; 
select year, count(*) from car_dekho where fuel = "Diesel" group by year; 
select year, count(*) from car_dekho where fuel = "CNG" group by year; 
 -- Manager said there were more than 100 cars in a given year, which year had more than 100 cars--
 select year, count(*) from car_dekho group by year having count(*)>100;
 -- the manager said the emplyee all the cars conts details between 2015 and 2023, we need a complete list--
select count(*) from car_dekho where year between 2015 and 2023;
-- the manager said employee all cars details between 2015 to 2023 we need compleete list--
Select * from car_dekho where year between 2015 and 2023;
-- END--