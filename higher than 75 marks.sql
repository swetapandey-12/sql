Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. 
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

######-----m1
SELECT NAME FROM STUDENTS WHERE MARKS > 75 ORDER BY RIGHT(NAME, 3), ID ASC;
######-------m2
select name from students where marks >75 order by substr(name , -3 , len(name)) , id asc;
