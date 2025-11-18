-- This retrieves the names of all American female artists who have at least one artwork classified specifically as 'Photography'. 
SELECT DISTINCT
    A.display_name AS Artist_Name,
    A.nationality,
    A.gender
FROM
    Artists A
JOIN
    Artworks W ON A.artist_id = W.artist_id
JOIN
    ArtworkClassifications AC ON W.object_id = AC.object_id
JOIN
    Classifications C ON AC.classification_id = C.classification_id
WHERE
    A.nationality = 'American'
    AND A.gender = 'Female'
    AND C.classification_name = 'Photography';

-- It generates a report for the Acquisitions team showing the top 5 artists based on the total
-- number of artworks they have in the collection and its earliest date of work.
    SELECT
    A.display_name AS Artist_Name,
    COUNT(W.object_id) AS Total_Artworks_Count,
    MIN(W.date_made) AS Oldest_Work_Date
FROM
    Artists A
JOIN
    Artworks W ON A.artist_id = W.artist_id
GROUP BY
    A.display_name
ORDER BY
    Total_Artworks_Count DESC
LIMIT 5;

-- Data maintenance task: it will update the 'is_public_domain' status to TRUE for all artworks that
-- were created before the year 1970, in case they aren't already marked as public domain.

UPDATE
    AcquisitionDetails AD
SET
    is_public_domain = TRUE
FROM
    Artworks W
WHERE
    AD.object_id = W.object_id
    AND W.date_made < '1970'
    AND AD.is_public_domain = FALSE;