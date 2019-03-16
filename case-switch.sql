SELECT title, released_year,
    CASE 
         WHEN released_year >= 2000 THEN 'Modern Lit'
         ELSE '20th Century Lit'
       END AS GENRE
FROM books;

SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;

SELECT title,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;

SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        WHEN stock_quantity BETWEEN 101 AND 150 THEN '***'
        ELSE '****'
    END AS STOCK
FROM books;

SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity <= 50 THEN '*'
        WHEN stock_quantity <= 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;


SELECT first_name AS 'First Name',
    IFNULL(AVG(grade),0) AS Average,
    CASE 
WHEN AVG(grade) >= 75 THEN 'Passing' 
WHEN AVG(grade) < 75 THEN 'Failing' 
ELSE 'FLUNKY' 
END AS Status
FROM students
    LEFT JOIN papers
    ON students.id = papers.student_id
GROUP BY first_name
ORDER BY Average DESC;


SELECT
    first_name, last_name, COUNT(rating) AS Count,
    IFNULL(MIN(rating),0) AS Min ,
    IFNULL(MAX(rating),0) AS Max,
    IFNULL(ROUND(AVG(rating),2),0) AS Avg,
    CASE 
WHEN COUNT(rating) > 0 THEN 'Active' 
    ELSE 'Inactive' 
        END AS STATUS
FROM reviewers
    LEFT JOIN reviews
    ON reviewers.id = reviews.reviewer_id
GROUP BY last_name,first_name
ORDER BY last_name;

------If Statment------
SELECT
    first_name, last_name, COUNT(rating) AS Count,
    IFNULL(MIN(rating),0) AS Min ,
    IFNULL(MAX(rating),0) AS Max,
    IFNULL(ROUND(AVG(rating),2),0) AS Avg, 
IF (COUNT(rating) >= 1, 'Active', 'Inactive') AS Status
FROM reviewers 
LEFT JOIN reviews 
ON reviewers.id = reviews.reviewer_id
GROUP BY last_name,first_name
ORDER BY last_name;
