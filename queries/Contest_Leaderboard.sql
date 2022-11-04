SELECT 
    hacker_id, name,
    SUM(max_score) AS total_score
    FROM (
            SELECT 
                Hackers.hacker_id, Hackers.name, 
                Submissions.challenge_id, MAX(score) AS max_score 
            FROM Hackers
            JOIN Submissions
                ON Hackers.hacker_id = Submissions.hacker_id
            GROUP BY Hackers.hacker_id, Hackers.name, Submissions.challenge_id
    ) AS temp
GROUP BY hacker_id, name
HAVING total_score > 0
ORDER BY total_score DESC, hacker_id ASC;