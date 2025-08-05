use employee;

INSERT INTO Author (author_id, name, nationality)
VALUES (3, 'Mark Twain', NULL);

INSERT INTO Book (book_id, title, genre, published_year)
VALUES (104, 'The Kite Runner', NULL, 2003);

INSERT INTO Member (member_id, name, email, phone)
VALUES (202, 'Bob', NULL, '9876501234');

INSERT INTO Borrow (borrow_id, member_id, book_id, borrow_date, return_date)
VALUES (302, 202, 102, '2023-05-10', NULL);

#updae data
UPDATE Author
SET nationality = 'American'
WHERE author_id = 3;

UPDATE Book
SET genre = 'Drama'
WHERE book_id = 104;

UPDATE Member
SET email = 'bob@example.com'
WHERE member_id = 202;

#delete data
#Delete a borrow record added by mistake
DELETE FROM Borrow
WHERE borrow_id = 303;

DELETE FROM Book
WHERE book_id = 103;

DELETE FROM BookAuthor
WHERE book_id = 103; 

#Handle missing values
UPDATE Author
SET nationality = 'Unknown'
WHERE nationality IS NULL;

UPDATE Book
SET genre = 'General'
WHERE genre IS NULL;

UPDATE Member
SET email = 'not_provided@example.com'
WHERE email IS NULL;
