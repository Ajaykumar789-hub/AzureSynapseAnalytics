/*
A surrogate key on a table is a column with unique identifier for each row. This is key is not generated
from table data.
you can use identity property yo achieve this goal.

Surrogate key can applied only in dedicated sql pool not serverless sql pool
*/

CREATE TABLE TABLENAME(
C1 INT IDENTITY(1,1).
C2 VARCHAR(50)

)
WITH (

    DISTRIBUTION=HASH(C2),
    CREATE COLUMNSTORE INDEX

);


#In azure syanapse analytics each control node contain 60 distributions
#has algoritham will take care of in which distribution we store data


#to know table definition inside Azure syanapse

DBC POW_SHOWSPACEUSED('SCHEMANAME.TABLENANAME');


#EXPLICITLY INSERTING VALUES INTO IDENTITY COLUMN
SET IDENTITY_INSERT <YOURTABLE> ON|OFF

#LIMITATIONS
i. when the column data type is not INT or BIGINT
ii. when the column is also distribution key
iii. when the table is external table