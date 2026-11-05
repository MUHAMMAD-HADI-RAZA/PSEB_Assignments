CREATE DATABASE library;
USE library;

CREATE TABLE books (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    year INT,
    price DECIMAL(10, 2)
);

INSERT INTO books (id, title, author, year, price) VALUES
    (1, 'The Pragmatic Programmer', 'Andrew Hunt and David Thomas', 1999, 650.00),
    (2, 'Clean Code', 'Robert C. Martin', 2008, 720.00),
    (3, 'The Hobbit', 'J. R. R. Tolkien', 1937, 450.00),
    (4, '1984', 'George Orwell', 1949, 380.00),
    (5, 'Design Patterns', 'Erich Gamma et al.', 1994, 850.00),
    (6, 'Pride and Prejudice', 'Jane Austen', 1813, 300.00),
    (7, 'Refactoring', 'Martin Fowler', 1999, 600.00),
    (8, 'Animal Farm', 'George Orwell', 1945, 275.00);

-- Show books with a price above 500.
SELECT * FROM books
WHERE price > 500;

-- Show all books sorted by price, from highest to lowest.
SELECT * FROM books
ORDER BY price DESC;

-- Count the total number of books.
SELECT COUNT(*) AS book_count
FROM books;

-- Update the price of the book with id 1.
UPDATE books
SET price = 675.00
WHERE id = 1;
