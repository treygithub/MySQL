SELECT MIN(released_year)
FROM books;

SELECT MIN(released_year)
FROM books;

SELECT MIN(pages)
FROM books;

SELECT MAX(pages)
FROM books;

SELECT MAX(released_year)
FROM books;

SELECT MAX(pages), title
FROM books;
------------------------------------
SELECT *
FROM books
WHERE pages = (SELECT Min(pages)
FROM books);

SELECT title, pages
FROM books
WHERE pages = (SELECT Max(pages)
FROM books);

SELECT title, pages
FROM books
WHERE pages = (SELECT Min(pages)
FROM books);

SELECT *
FROM books
ORDER BY pages ASC LIMIT 1;
 
SELECT title
, pages FROM books 
ORDER BY pages ASC LIMIT 1;

SELECT *
FROM books
ORDER BY pages DESC
LIMIT 1;