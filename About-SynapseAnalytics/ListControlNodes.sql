#below query will list number of COMPUTE and CONTROL nodes in SQL POOL inside azure synapse Analytics

select * 

from sys.dm_pdw_nodes
group by Type


#this query will give both compute and control nodes in sql pool
SELECT * FROM sys.dm_pdw_nodes


