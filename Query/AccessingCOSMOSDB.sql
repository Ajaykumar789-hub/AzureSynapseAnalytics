
# we will be using the OPENROWSET function to read data from the cosmos db container

follow below instructions to query your data using synapse:

1.Go to synapse workspace in azure portal and click synapse studio.
2.click on the develop tab and create a new sql script
3.pase the following command in the cell and replace values for SECRET and CONNECTION with values of YOUR cosmosdb acct



SELECT TOP 10 * 
FROM OPENROWSET(
	'cosmosdb'
     'Account=cosmosdbacctnamexxxxxxx;Database=nameofdbxxx;key=xxxxxxxxxxxxxxxxxxxxxx',
	 DATA
	 )with (column1 varchar(20),column2 bigint, column3 varchar(30)) as  rows