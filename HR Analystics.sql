CREATE TABLE HR(
Age	int,
Attrition	varchar(50),
BusinessTravel	varchar(50),
DailyRate	int,
Department	varchar(50),
DistanceFromHome	int,
Education	int,
EducationField	varchar(50),
EmployeeCount	int,
EmployeeNumber	int,
EnvironmentSatisfaction	int,
Gender	varchar(50),
HourlyRate	int,
JobInvolvement	int,
JobLevel	int,
JobRole	varchar(50),
JobSatisfaction	int,
MaritalStatus	varchar(50),
MonthlyIncome	int,
MonthlyRate	int,
NumCompaniesWorked	int,
Over18	varchar(50),
OverTime	varchar(50),
PercentSalaryHike	int,
PerformanceRating	int,
RelationshipSatisfaction	int,
StandardHours	int,
StockOptionLevel	int,
TotalWorkingYears	int,
TrainingTimesLastYear	int,
WorkLifeBalance	int,
YearsAtCompany	int,
YearsInCurrentRole	int,
YearsSinceLastPromotion	int,
YearsWithCurrManager int
);
select * from HR;
select count(attrition) as c from hr;
select department,count(attrition) as Attrition_Yes from Hr where attrition='Yes' group by department; 
select department,count(attrition) as Attrition_No from Hr where attrition='No' group by department;
select jobrole,avg(monthlyIncome) as average_monthly_salary from Hr group by jobrole;
select employeenumber,yearsatcompany from hr where yearsatcompany>5 and attrition='Yes';
select employeenumber,department,educationfield,gender,jobrole from hr where totalworkingyears>5;
select gender,count(gender) as number_of_employee from hr group by gender;
select count(gender) from hr;
select businesstravel,count(employeenumber) as No_of_employee
from hr group by businesstravel;
