CREATE DATABASE SolidWaste;

/*Creating MyDimDate dimensional table*/
CREATE TABLE "BWV46471".MyDimDate(
Dateid SMALLINT NOT NULL PRIMARY KEY,
Date DATE NOT NULL,
Year SMALLINT NOT NULL,
Quarter SMALLINT NOT NULL,
Quartername VARCHAR(10) NOT NULL,
Month SMALLINT NOT NULL,
Monthname VARCHAR(10) NOT NULL,
Day SMALLINT NOT NULL,
Weekday SMALLINT NOT NULL,
Weekdayname VARCHAR(10) NOT NULL
);

/*Create MyDimWaste dimensional table*/
CREATE TABLE "BWV46471".MyDimWaste(
Wasteid SMALLINT NOT NULL PRIMARY KEY,
Wastetype VARCHAR(5) NOT NULL,
Wastecollected DECIMAL(6,2) NOT NULL
);


/*MyDimZone dimensional table*/
CREATE TABLE "BWV46471".MyDimZone ( 
Zoneid SMALLINT NOT NULL PRIMARY KEY ,
Collection zone CHAR(5) NOT NULL );

/*FactsTrips fact table*/
CREATE TABLE MyFactTrips( 
Tripid BIGINT NOT NULL PRIMARY KEY,
Dateid SMALLINT NOT NULL REFERENCES MyDimDate(Dateid),
Wasteid SMALLINT NOT NULL REFERENCES MyDimWaste(Wasteid),
zoneid SMALLINT NOT NULL REFERENCES DimZone(Zoneid),
Wastecollected DECIMAL(6,2) NOT NULL
);
