CLASSPATH=build/ycsb.jar
for jar in db/cassandra-0.8/lib/*.jar; do
    CLASSPATH=$CLASSPATH:$jar
done

WORKLOAD=$1
java -cp $CLASSPATH com.yahoo.ycsb.Client -t -db com.yahoo.ycsb.db.CassandraClient8 \
    -P workloads/$1 \
    -P hosts-list \
    -P config \
    -s
