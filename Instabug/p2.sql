SELECT s.name AS name , c.name course, g.grade grade 
FROM students s 
JOIN grades g 
ON s.id  = g.student_id  
JOIN courses c 
ON c.id = g.course_id  
GROUP BY  s.name , c.name, g.grade 
ORDER BY  s.name , c.name, g.grade