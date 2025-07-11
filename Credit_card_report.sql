create database credit_card_db;
create table credit_detail (
             Client_Num int,Card_Category varchar(20),
             Annual_Fees int,Activation_30_Days int,
             Customer_Acq_Cost int,Week_Start_Date date,
             Week_Num varchar(20),Qtr varchar(20),Current_year int,
             Credit_Limit decimal(10,2),Total_Revolving_Bal int,
             Total_Trans_Amt int,Total_Trans_Ct int,
             Avg_Utilization_Ratio decimal(10,3),Use_Chip varchar(10),
             Exp_Type varchar(50),Intrest_Earned decimal(10,3),Delinquent_Acc varchar(5));


Create table Cust_detail (
             Client_Num int, Customer_Age int,Gender varchar(50),
             Dependent_Count int, Education_Level varchar(50),Marital_Status varchar(20),
             State_cd varchar(50),Zipcode varchar(20),Car_Owner varchar(5),House_owner varchar(5),
             Personal_Loan varchar(5),Contact varchar(50),Income int,Cust_Satisfaction_score int);
             
 alter table cust_detail add column Customer_Job varchar(30) after contact;
 
 
  load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0Uploads/'into table credit_detail
                  fields terminated by ','
                  enclosed by '"'
                  ignore 1 rows;  
                  
  load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customer.csv'into table cust_detail
                  fields terminated by ','
                  enclosed by '"'
                  ignore 1 rows; 
                  
select * from credit_detail;
select * from cust_detail;


load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cc_add.csv'into table credit_detail
                  fields terminated by ','
                  enclosed by '"'
                  ignore 1 rows;  
                  
load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cust_add.csv'into table cust_detail
                  fields terminated by ','
                  enclosed by '"'
                  ignore 1 rows; 
                  
select * from credit_detail;
select * from cust_detail;
