SELECT COUNT(created_at) AS count
FROM bugs
WHERE DATE(created_at) = "2019-03-01";

-------------------------------------------

SELECT COUNT(created_at) AS count
FROM bugs
WHERE DATE(created_at) BETWEEN "2019-03-01" AND SYS_DATE;

-------------------------------------------

SELECT COUNT(*)
FROM bugs
WHERE DATE(created_at) >= "2019-03-01";

-------------------------------------------

SELECT count(created_at) 
FROM bugs 
WHERE  id > 0 AND created_at BETWEEN '2019-03-01' AND SYS_DATE();