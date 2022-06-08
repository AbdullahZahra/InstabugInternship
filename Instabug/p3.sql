SELECT c.name AS name
FROM students s JOIN grades g
ON s.id  = g.student_id 
JOIN courses c
ON c.id = g.course_id 
GROUP BY  c.name 
HAVING count(s.name) = (SELECT count(s.name)
FROM students s JOIN grades g
ON s.id  = g.student_id 
JOIN courses c
ON c.id = g.course_id 
GROUP BY  c.name
ORDER BY count(s.name) DESC
LIMIT 1
)
ORDER BY c.name
LIMIT 1;