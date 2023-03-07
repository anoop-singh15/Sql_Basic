# Hacckerank Question


# Find the difference between the total number of CITY
# entries in the table and the number of distinct CITY
# entries in the table.

#Solution
select ( count(CITY)-count(distinct CITY)) from STATION;