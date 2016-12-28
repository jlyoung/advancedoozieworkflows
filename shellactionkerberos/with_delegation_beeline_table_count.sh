#!/usr/bin/env bash
# This script gets a count of the number of tables in Hive's "default" database
# and outputs the count in Java Properties File Format for use in
# Oozie workflows as referenced from Oozie's actionData function. 
TABLECOUNT=`beeline -u "jdbc:hive2://jyoung-hdp234-2.openstacklocal:10000/default;auth=delegationToken" -e "show tables;" |& grep "rows selected" | cut -d' ' -f1`
echo "beelinetablecount=$TABLECOUNT"
