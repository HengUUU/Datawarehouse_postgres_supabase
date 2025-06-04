create schema if not exists bronze;
create schema if not exists gold;
create schema if not exists silver;

SELECT schema_name FROM information_schema.schemata WHERE catalog_name = 'Weather_Dataset';


drop table bronze.Dataset;
create table if not exists bronze.Dataset(
city varchar(50),
date date,
tempmax decimal,
tempmin decimal,
temp decimal,
feelslikemax decimal,
feelslikemin decimal,
feelslike decimal,
dew decimal,
humidity decimal,
precip decimal,
precipprob decimal,
precipcover decimal,
preciptype varchar(30),
snow int,
sowdept int,
windgust decimal,
windspeed decimal,
winddir decimal,
sealevelpressure decimal,
cloudcover decimal,
visibility decimal,
solarradiation decimal,
solarenergy decimal,
uvindex int,
severerisk int,
sunrise varchar(50),
sunset varchar(50),
moonphase decimal,
conditions varchar(100),
description varchar(100),
icon varchar(30),
station varchar(100)
);

-- select * from bronze.Dataset;

copy bronze.Dataset from 'C:/Sem 2/Big data/TP/Weather_Project/Phnom Penh, Cambodia 2022-06-03 to 2023-06-03.csv' DELIMITER ','
CSV HEADER;





