
#use following python syntax to load cosmos db data to SPARK DATAFRAME


df=spark.read.format("cosmos.olap")\
    .option("spark.synapse.linkedservice","<enter linked service name>")\
    .option("spark.cosmos.","<enter container name>")\
    .load()











