SELECT 
    Hackers.hacker_id, Hackers.name
FROM Hackers
JOIN Submissions
    ON Hackers.hacker_id = Submissions.hacker_id
JOIN Challenges
    ON Challenges.challenge_id = Submissions.challenge_id
JOIN Difficulty 
    ON Difficulty.difficulty_level = Challenges.difficulty_level
WHERE Difficulty.score = Submissions.score
GROUP BY Hackers.hacker_id, Hackers.name
HAVING COUNT(DISTINCT Submissions.Challenge_id) > 1
ORDER BY COUNT(DISTINCT Submissions.Challenge_id) DESC, Hackers.hacker_id ASC;