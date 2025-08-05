# Library Management System – Task 2: Data Insertion and Null Handling

This project demonstrates how to insert, update, and delete records in a relational database using SQL.
It also focuses on handling missing values using `NULL` and `DEFAULT`, ensuring the database remains clean and consistent.

##Objective
- Practice SQL `INSERT`, `UPDATE`, and `DELETE` operations
- Handle missing or incomplete data using `NULL` values or `DEFAULT` constraints

## Database Schema
The database consists of the following tables:
- `Author(author_id, name, nationality)`
- `Book(book_id, title, genre, published_year)`
- `BookAuthor(book_id, author_id)`
- `Member(member_id, name, email, phone)`
- `Borrow(borrow_id, member_id, book_id, borrow_date, return_date)`

Foreign key relationships are maintained among these tables for referential integrity.

## Data Insertion
Data is inserted with a mix of:
- Fully populated records
- Some values as `NULL`

## Data Updates

Missing or incomplete values are updated using SQL `UPDATE`, for example:
UPDATE Author SET nationality = 'American' WHERE author_id = 3;
