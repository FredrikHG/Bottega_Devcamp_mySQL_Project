USE devcamp_mysql_project;

SELECT AVG(teachers_courses_grades_avg)
FROM teachers_has_courses
WHERE teachers_teachers_name = " Jim Woodsman";

SELECT AVG(teachers_courses_grades_avg)
FROM teachers_has_courses
WHERE teachers_teachers_name = "John Hunt";

SELECT AVG(teachers_courses_grades_avg)
FROM teachers_has_courses
WHERE teachers_teachers_name = "Kate Schmidt";

SELECT students_students_name
FROM students_has_courses
GROUP BY courses_courses;

SELECT courses_courses, teachers_courses_grades_avg
FROM teachers_has_courses
ORDER BY teachers_courses_grades_avg  DESC;

 SELECT * 
 FROM students_has_courses
 INNER JOIN teachers_has_courses
 ON students_has_courses.courses_courses = teachers_has_courses.courses_courses;

