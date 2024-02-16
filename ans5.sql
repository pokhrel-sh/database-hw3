-- this selects everything from the tracks table where
--  the genre is not in the top 5 genres by average duration
SELECT * 
    FROM tracks
WHERE tracks.GenreId NOT IN (
    SELECT gid
    FROM (
        SELECT
            genres.GenreId gid,
            AVG(Milliseconds) AS avg_duration   
        FROM genres
        JOIN tracks 
        GROUP BY genres.GenreId
        ORDER BY avg_duration DESC
        LIMIT (5)
    )
);
