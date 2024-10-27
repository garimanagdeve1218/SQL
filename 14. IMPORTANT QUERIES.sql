/*1. Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.*/
select distinct(CITY) from STATION where CITY REGEXP '^[^AEIOU]' or CITY REGEXP '[^AEIOU]$';


/*2. Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. 
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.*/
select Name from STUDENTS 
where Marks>75
ORDER BY RIGHT(name,3),ID ASC;


/**/
