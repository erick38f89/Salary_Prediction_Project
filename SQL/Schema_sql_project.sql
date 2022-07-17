-- Create tables and import csv 

CREATE TABLE data_science_salaries (
	Employee_ID VARCHAR NOT NULL,
	Year_Column INT NOT NULL, 
	Company VARCHAR NOT NULL, 
	City VARCHAR NOT NULL, 
	State1 VARCHAR NOT NULL,
	Title VARCHAR NOT NULL, 
	Salary_Level INT NOT NULL,
	Area VARCHAR NOT NULL,
	Total_Annual_Compensation INT NOT NULL,
	Years_of_Experience NUMERIC NOT NULL,
	Years_At_Company NUMERIC NOT NULL,
	Base_Salary INT NOT NULL,
	Stock_Grant_Value INT NOT NULL, 
	Bonus INT NOT NULL, 
	Masters_Degree INT NOT NULL, 
	Bachelors_Degree INT NOT NULL,
	Doctorate_Degree INT NOT NULL,
	Highschool INT NOT NULL,
	Some_College INT NOT NULL,
	PRIMARY KEY (Employee_ID)
	);
	
CREATE TABLE business_analyst_salaries (
	Employee_ID VARCHAR NOT NULL,
	Year_Column INT NOT NULL, 
	Company VARCHAR NOT NULL, 
	City VARCHAR NOT NULL, 
	State1 VARCHAR NOT NULL,
	Title VARCHAR NOT NULL, 
	Salary_Level INT NOT NULL,
	Area VARCHAR NOT NULL,
	Total_Annual_Compensation INT NOT NULL,
	Years_of_Experience NUMERIC NOT NULL,
	Years_At_Company NUMERIC NOT NULL,
	Base_Salary INT NOT NULL,
	Stock_Grant_Value INT NOT NULL, 
	Bonus INT NOT NULL, 
	Masters_Degree INT NOT NULL, 
	Bachelors_Degree INT NOT NULL,
	Doctorate_Degree INT NOT NULL,
	Highschool INT NOT NULL,
	Some_College INT NOT NULL,
	PRIMARY KEY (Employee_ID)
	);

-- Create new table for Business Analyst jobs where the level is 1 
-- Disregard the education column as we will not use them in our machine learning model

SELECT Year_Column, Company, City, State1, Title, Salary_Level, Area, Total_Annual_Compensation, Years_of_Experience, Years_At_Company, Base_Salary, Stock_Grant_Value, Bonus
INTO ba_level1_salaries
FROM business_analyst_salaries
WHERE (Salary_Level BETWEEN '1' and '1')

SELECT * FROM ba_level1_salaries

-- Create new table for data science jobs where the level is 1

SELECT Year_Column, Company, City, State1, Title, Salary_Level, Area, Total_Annual_Compensation, Years_of_Experience, Years_At_Company, Base_Salary, Stock_Grant_Value, Bonus
INTO ds_level1_salaries
FROM data_science_salaries
WHERE (Salary_Level BETWEEN '1' and '1')

SELECT * FROM ds_level1_salaries
