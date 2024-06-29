use cars;

-- READ DATA --
SELECT*from car_dekho;

-- Total Cars: To get a count of total records--
use cars;
select count(*) from car_dekho;

-- The manager asked the employee how many cars will be available in 2023--
select count(*) from car_dekho 
where year=2023;

-- The manager asked the employee how many cars is available in 2021,2022,2023 --
select count(*) from car_dekho where year in (2021,2022,2023)
group by year;

-- Client asked me to print the total of all cars by year--
select year,count(*) from car_dekho group by year;

-- Client asked to car dealer agent how many diesel cars will there be in 2020--
select count(*) from car_dekho where year=2020 and fuel='Diesel';

-- Client requested a car dealer agent how many petrol cars will be there in 2020--
select count(*) from car_dekho where year=2020 and fuel='Petrol';

-- the manager told the employee to give a print all the fuel cars(petrol,diesel and CNG) come by all year--
select year,count(*) from car_dekho where fuel='Petrol' group by year;
select year,count(*) from car_dekho where fuel='Diesel' group by year;
select year,count(*) from car_dekho where fuel='CNG' group by year;

-- manager said there were more than 100 cars in a given year,which year had more than 100 car?--
select year,count(*) from car_dekho group by year having count(*)>100;

-- the manager said to employee all cars count details between 2015 and 2023 we need a complete list--
select count(*) from car_dekho where year between 2015 and 2023;

-- the manager said to employee all car details between 2015 and 2023 we need a complete list--
select * from car_dekho where year between 2015 and 2023;

-- END--