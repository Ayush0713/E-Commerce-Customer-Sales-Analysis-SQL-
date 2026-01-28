# E-Commerce-CustomerAnalysis (Using SQL)
## Project Objective
The Primary Objective of this project is to build a structured analytical workflow that cleans the data and applies advanced window functions to solve real-world business 
problems.

## Project Structure
The project is organized into five logical steps to ensure a clean and reproducible workflow:
- 01_Table_Creation.sql: Sets up the database schema (Customers, Orders, Products, and Reviews).
- 02_Data_Loading.sql: Commands to import raw CSV data into the SQL tables.
- 03_Data_Cleaning.sql: Handles missing values, removes invalid ages, and ensures data integrity.
- 04_Business_Queries.sql: Basic and intermediate analysis.
- 05_Advance_Queries.sql: High-level analysis using CTEs and Window Functions.

## Key Business Questions Answered
  - Find customers who are active in 2023 and have placed at least 2 orders but haven't placed a single order in 2024
  - Which Payment Method has been used for the most transactions.
  - Find the top 3 customers in each city based on their total spending.
  -  Which are the top 3 best-selling product categories by total sales.

## Tech Stack & Skills
Database: PostgreSQL
SQL Concepts: * Data Definition (DDL): Creating and managing table structures.
Data Manipulation (DML): Cleaning and updating records.
Joins: Inner and Left joins to connect customers, orders, and reviews.
Aggregations: Grouping data for revenue and rating summaries.
Window Functions: Using DENSE_RANK() to rank customers by geography.
CTEs (Common Table Expressions): Writing readable, multi-step queries.
   
