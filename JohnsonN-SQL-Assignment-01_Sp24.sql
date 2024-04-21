--*  BUSIT 103           Assignment   #1              DUE DATE:  Consult course calendar
							
/*
Assignment 1 - Creating a Simple Query (these are the same instructions as in Canvas)
Enter your answer to each question by the corresponding number below.

1. Mountain Bike Socks, M

2. 719

3. 860

4. 790

5a. Mountain Bikes

5b. Columns 1-4 are Foreign keys that create a relation to the Product table. 
    They are also used to categorize different the different sub-types of products.

6a. 71780

6b. 71780

6c. SalesOrderHeader would need 1 new entry for the order. SalesOrderDetail would need 3 new entries under the same 
    SalesOrderID to list out the 3 distinct products



PURPOSE:

Knowledge:

    o Understand how data is stored in relational database tables
    o Understand the mechanics of completing assignments for this class

Skills:

    o Outside of class, access a computer that has SQL Server loaded on it
    o Interpret questions to understand how to answer the questions
    o Write SQL queries to answer questions by retrieving data from database tables

TASK:
Enter your answer to the question by the corresponding number at the top of this assignment file.

    1. Download the following SQL file and rename it Xxxxx-SQL-Assignment-01, where Xxxxx is your last and first name. 
	For example, I would rename this file duncanp-SQL-Assignment-01.sql.

		Xxxxx-SQL-Assignment-01.sql

    2. Open the file in SQL Server Management Studio (SSMS).

    3. Add your SQL code in the space provided below each question. The questions are written as comments so they will not execute in SQL Server. 

    4. Proofread your document to make sure all questions are answered completely and that it is easy to distinguish your responses from the questions on the page.

    5. Return to this assignment page, attach your completed file, and submit.

 

CRITERIA:

    o Answer all the questions
    o If you do not understand a question, did you ask for help from the teacher, a classmate, the Discussion board, or a tutor?
    o Your answer/query is in the right place underneath the question
    o Your answer/query is not commented out
    o Your answer/query executes without an error
    o You have renamed the file as specified above and submitted it via Canvas
    o If you cannot complete the assignment, did you communicate with the teacher (before the due date) so that he/she/they understands your situation?

*/

/*	
    You are to develop SQL statements for each task listed. You should type your SQL statements under each task.
	The fields' names are written as if a person is asking you for the report. You will need to look at the data
	and understand that list price is in the ListPrice field, for example.
	Add comments to describe your reasoning when you are in doubt about something. 


    For this assignment, we will use the AdventureWorksLT2017 database. We tell SQL Server which database 
    to use via the USE statement.  Match the date in your USE statement when you use the school lab servers.  

    Do not remove the USE statement. 
*/

USE AdventureWorksLT2017;


--1.	Write a SQL statement that pulls all of the records from the AdventureWorksLT Product table. 
--      I have answered the first question to show you the format I expect.  
--		What is the Name in row 5? Mountain Bike Socks, M

--		NOTE That the answer to the question is also entered at the top of the page
--		next to the corresponding question number.

SELECT *
FROM SalesLT.Product;




--2.	Write a SQL statement that pulls all of the records from the AdventureWorksLT Product table, 
--		but show only the ProductID, Name, ProductNumber, and ListPrice.
--		What is the ProductID in row 15?  719

SELECT ProductID, Name, ProductNumber, ListPrice
FROM SalesLT.Product;




--3.	Write a SQL statement that pulls all of the records from the AdventureWorksLT Product table, 
--		but show only the ProductID, Name, and ListPrice, 
--		and sort by Name in ascending order.
--		What is the ProductID in row 15?  860


SELECT ProductID, Name, ListPrice
FROM SalesLT.Product
ORDER BY Name ASC;



--4.	Write a SQL statement that pulls all of the records from the AdventureWorksLT Product table, 
--		but show only the ProductID, Name, ProductNumber, and ListPrice, 
--		and sort by ListPrice in descending order. 
--		What is the ProductID in row 15?  959

-- Provided query sorts by Name not ListPrice; sorted by ListPrice row 15 is 790

SELECT ProductID, Name, ProductNumber, ListPrice
FROM SalesLT.Product
ORDER BY ListPrice DESC;


--5a.	Write a SQL statement that pulls all of the records from the AdventureWorksLT ProductCategory table.
--		What is the Name in row 5?  Mountain Bikes

SELECT *
FROM SalesLT.ProductCategory;




--5b.   Explain how records 1-4 in the table differ from the other records, and explain their purpose:
--      Include your explanation next to 5b in the top section next to 5b.

/***************************
 Enter the text with your explanation next to 5b in the top section. 
***************************/



--6a.	Write a SQL statement that pulls all of the records from the AdventureWorksLT SalesOrderHeader table.
--		Carefully study the data contained in this table.
--		What is the SalesOrderID in row 3? 71780

SELECT *
FROM SalesLT.SalesOrderHeader;


--6b.	Write a SQL statement that pulls all of the records from the AdventureWorksLT SalesOrderDetail table.
--		Carefully study the data contained in this table and compare it to the results from 6a.
--		What is the SalesOrderID in row 4? 71780

SELECT *
FROM SalesLT.SalesOrderDetail;


--6c.	Explain how you would add records to the AdventureWorksLT database for the following scenario:
--
--			An existing customer places an order for 3 distinct existing products, 
--			(i.e. not a quantity of 3 of one single product).

--
--		In your explanation, indicate which tables would require new records, and the number of records.

/***************************
 Your explanation goes in the top section next to 6c. 
***************************/

 