/*
Ranking functions are used to assign a rank to each row in a partition or set of rows and return an aggregated value for
each partition.

we can use RANK,DENSE_RANK,ROW_NUMBER and NTILE Ranking functions in azure synapse analytics.



Rank: retuns the 1 plus the number of ranks that comes before the row in question and it provide same numeric values for ties

ROW_NUMBER: it assign rank for the first row and increment the value by 1 for each row, even if a row has similar values it still assgin
unique rank

DENSE_RANK:it similar to RANK function only difference it assign same rank for duplicate or similar values

NTILE: is used to divide records into specified number of groups and each group will be assigned a rank as per specified condtion.
note: in NTILE we need to specify the number of groups as parameter to NTILE function. e.g NTILE(3)

*/

#EXAMPLE query with ranking functions

SELECT B.FIRSTNAME,B.LASTNAME,
ROW_NUMBER() OVER(PARTITON BY postalcode order by salesytd DESC) AS "ROW NUMBER",
RANK() OVER(ORDER BY POSTALCODE) AS Rank,
DENSE_RANK() OVER(ORDER BY POSTALCODE) AS "DENSE RANK",
NTILE(4) OVER(ORDER BY POSTALCODE) AS NTILE,
A.SALESYTD,A.postalcode

FROM SALESPERSON A JOIN PERSON B ON A.BUSINESSID=B.BUSINESSID
