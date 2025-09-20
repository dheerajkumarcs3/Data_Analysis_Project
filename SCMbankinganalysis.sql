create table SCM(
ID	int,
Age	int,
Experience	int,
Income	money,
ZIP_Code int,
Family_Size	int,
CCAvg	decimal(10,2),
Education varchar(50),
Mortgage decimal(10,2),
Personal_Loan	bool,
Securities_Account	bool,
CD_Account	bool,
Online	bool,
CreditCard	bool
);
select * from SCM;
alter table SCm alter column income type decimal(10,2);
select id,personal_loan,income,CCAvg from scm where personal_loan='1' and income<(select avg(income) from scm);
select id,mortgage from scm where mortgage!=0.00;
select id as id_loan_taken from scm where personal_loan='1';
select education,avg(mortgage),sum(mortgage) as total_mortgage from scm group by education;
select education,count(personal_loan) as no_personal_loan_taker from scm where personal_loan='1' group by education;
select education,avg(CCAvg) as Average_CC from scm where personal_loan='1' group by education;
select count(id) as no_of_customers from scm;
select education,avg(family_size) from scm group by education;
select education,count(securities_account) as no_of_securities_account from scm  where securities_account='1' group by education;
select education,count(cd_account) as no_of_cd_account from scm  where cd_account='1' group by education;
select education,count(online) as no_online_users from scm  where online='1' group by education;
select count(online) as total_online_users from scm where online='1';
select count(creditcard) as total_credit_users from scm where creditcard='1';
select count(Securities_Account) as total_Securities_Account from scm where Securities_Account='1';
select count(cd_Account) as total_cd_Account from scm where cd_Account='1';
select distinct(zip_code) from scm;
select zip_code,count(personal_loan) as no_loan_taken from scm where personal_loan='1' group by zip_code order by no_loan_taken desc limit 10 ;
select zip_code,sum(mortgage) as total_mortgage,avg(mortgage) as avg_mortgage  from scm group by zip_code order by total_mortgage desc limit 10;
select zip_code, count(Securities_Account) as total_Securities_Account from scm where Securities_Account='1' group by zip_code order by total_Securities_Account desc limit 10 ;
select zip_code, count(cd_Account) as total_cd_Account from scm where cd_Account='1' group by zip_code order by total_cd_Account desc limit 10 ;