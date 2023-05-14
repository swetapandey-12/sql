Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

########################------------------------------------------------
select distinct from station where 
(city not in (select distinct form station where city like '%a' or city like '%e' or city like '%i' or city like '%o' or city like '%u'))
or
(city not in (select distinct form station where city like 'A%' or city like 'E%' or city like 'I%' or city like 'O%' or city like 'U%'));

########################----------------------------------------------------
