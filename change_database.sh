#!/bin/bash
cfgfile="$NEO4J_HOME/conf/neo4j-server.properties"
dbvar="org.neo4j.server.database.location"
dir="/home/yangke/Program/Fabian-Yamaguchi/evdata"
line=13
db=$1
config="$dbvar=$dir/$db"
sed "$line s/^/#/g" -i $cfgfile &&sed "$line i$config" -i $cfgfile
#neo4j restart
