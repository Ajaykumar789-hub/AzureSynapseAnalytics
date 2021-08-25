
#Synapse sql pool supports hash-distributed,round-robin and replicated tables

/*


HASH distributed: A hash distributed table uses the a hash algoritham to distribute the records among 60 distirbutions. In case
where the table size is more than 2gb and table as frequent INSERT,UPDATE AND DELETE operations, then  it recommend to use this distribute

ROUND-ROBIN: in these tables data is distributed evenly accrosee all distirbutions using round robin algoritham.
 this distirubtion is use for staging tables


 replicated TABLES: when our table is less than 2gb when compressed then we should use try using replicated tables instead of distributed tables

 in replicated tables full data is copied to each compute node so that it can br accessed by any compute node without any latency.

 small dimension tables ate best for replicated TABLES.


 */


 CREATE TABLE TABELNAME(

 COLUMN1 VARCHAR(10),
 COLUMN2 ....
 ....
 ....
 ...

 )
 with
 (
 CLUSTERED COLUMNSTORE INDEX
,DISTRIBUTION= HASH(COLUMN NAME)
|DISTRIBUTION=ROUND-ROBIN -----DEFAULT FOR AZURE SYNAPSE ANALYTICS
|DISTRIBUTION=REPLICATE ---DEFAULT FOR parallel for data warehouse

 );
