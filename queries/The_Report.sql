SELECT CASE
    WHEN grades.grade > 7 THEN students.name
    ELSE NULL
    end AS names,
    grades.grade,
    students.marks
FROM students 
    JOIN grades 
    ON students.marks BETWEEN grades.min_mark AND grades.max_mark
ORDER  BY grades.grade DESC,
    names ASC,
    students.marks ASC;