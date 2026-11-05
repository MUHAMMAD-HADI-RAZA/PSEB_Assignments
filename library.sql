CREATE DATABASE library;
USE library;

CREATE TABLE books (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    year INT,
    price DECIMAL(10, 2)
);

-- Sample book prices are in Pakistani rupees (PKR).
INSERT INTO books (id, title, author, year, price) VALUES
    (1, 'A Case of Exploding Mangoes', 'Mohammed Hanif', 2008, 1200.00),
    (2, 'The Reluctant Fundamentalist', 'Mohsin Hamid', 2007, 1100.00),
    (3, 'Moth Smoke', 'Mohsin Hamid', 2000, 950.00),
    (4, 'Kartography', 'Kamila Shamsie', 2002, 1000.00),
    (5, 'The Crow Eaters', 'Bapsi Sidhwa', 1978, 850.00),
    (6, 'Ice-Candy-Man', 'Bapsi Sidhwa', 1988, 900.00),
    (7, 'The Golden Legend', 'Nadeem Aslam', 2017, 1300.00),
    (8, 'I Am Malala', 'Malala Yousafzai and Christina Lamb', 2013, 1500.00);

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
SET price = 1250.00
WHERE id = 1;
