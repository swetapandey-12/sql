SELECT 
    MAX(CASE WHEN occupation = 'Doctor' THEN name ELSE NULL END) AS Doctor,
    MAX(CASE WHEN occupation = 'Professor' THEN name ELSE NULL END) AS Professor,
    MAX(CASE WHEN occupation = 'Singer' THEN name ELSE NULL END) AS Singer,
    MAX(CASE WHEN occupation = 'Actor' THEN name ELSE NULL END) AS Actor
FROM (
    SELECT 
        name,
        occupation,
        ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) AS row_num
    FROM occupations
) AS pivot
GROUP BY row_num;

https://mode.com/sql-tutorial/sql-window-functions/-------------usefull
