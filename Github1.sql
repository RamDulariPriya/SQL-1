-- 1.	How to create a new create new Data base

create database Github1;
use Github1;

-- I want to comment this line.

-- I want to 
-- comment
-- multiple lines

/*
I want to 
comment
multiple lines 
*/

-- 2.	Export the Excel File for creating New Table.
Select * from customer;


-- 3. How to call 2, 3 Colum’s name from the table
select * from customer_transaction;
select customer_id, account_type from customer_account; -- Call only two columns 1.Customer_id 2.Account_Type from Customer_account table

-- Here we have total 3 tables the name given below
select * from customer;
select * from customer_account;
select * from customer_transaction;


-- 4.	How to select name from column there value is comparing with any other value like as 

select account_number, transaction_amount from customer_transaction; -- simply select some columns from customer_transaction table
select transaction_amount from customer_transaction where transaction_amount >= 0; -- select ttransaction ammount is gretter then or equal to 0 from customer_transaction table 


-- 5.	How to Change column name of a table

Select * from customer;
ALTER TABLE customer RENAME COLUMN Address TO Addrs;
Select * from customer;

/* ============================
Opeators in SQL
1. Mathematical operators: +,-,*,/
2. Comparison operators: <,>,<=,>=,==,!=
3. Logical operators: and, or, not
4. Special operators: in, like, between-and
============================ */

-- 1. Mathematical operators: +,-,*,/

-- 6.	Use of Mathematical operators: +,-,*,/ // Using Single column
select * from customer_transaction;

select transaction_amount, transaction_amount*0.10  from customer_transaction; -- show 10% qty of transaction Ammount
select transaction_amount, transaction_amount- transaction_amount*0.10  from customer_transaction; -- Subtract 10% from the transaction ammount

select *, transaction_amount*0.10 as service_charge from customer_transaction; -- *, means keep all columns , As means Add new column there name is service_charge
select *,transaction_amount+ transaction_amount*0.10 as Final_charge from customer_transaction; 

-- 7.	Use of Mathematical operators: +,-,*,/ // Using two column
select *, transaction_id + transaction_amount as sample_column from customer_transaction; -- maths operator using 2 columns

-- 8.	How to use comparison and logical operators ( <,>, =, !=)—Single column
-- comparison and logical operators ( <,>, =, !=)
select transaction_id, transaction_amount -- filter columns
from customer_transaction
where transaction_amount > 0; -- filter rows
select * from customer_transaction;


-- 9.	How to use comparison and logical operators ( <,>, =, !=)—Multiple Column but single condition 
select transaction_id, transaction_amount, province
from customer_transaction
where transaction_amount > 1000 
and province = "NY";


-- 10.	How to use comparison and logical operators ( <,>, =, !=)—Multiple Column but multiple condition.
select transaction_id, transaction_amount, province
from customer_transaction
where transaction_amount > 1000 and (province = "NY" or province = "MN");

-- special operators
select transaction_id, transaction_amount, province
from customer_transaction
where transaction_amount > 1000 and province in ("NY", "MN"); -- "in" operator is shortcut for "or" operator
