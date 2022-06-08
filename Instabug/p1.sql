-- Ascend lexographic order

SELECT name
FROM students
ORDER BY name ASC;

---------------------------------

SELECT AVG(grade) AS average_grade
FROM grades
WHERE STUDENT_ID = grades.STUDENT_ID
ORDER BY average_grade DESC;

---------------------------------

SELECT s.name name, avg(grade) AS Average_grade
FROM students s 
JOIN grades g 
ON s.id  = g.student_id  
JOIN courses c 
ON c.id = g.course_id  
GROUP BY  s.name, s.id 
ORDER BY  avg(grade) DESC ,  s.name ASC  LIMIT 100;