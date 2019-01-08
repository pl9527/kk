#!/bin/bash

#sqoop import code_category
sqoop import --connect jdbc:mysql://hadoop01:3306/szbap_ods \
 --driver com.mysql.jdbc.Driver \
 --username root \
 --password root \
 --table code_category \
 --target-dir hdfs://hadoop01:9000/qfbap/ods/ods_code_category \
 --delete-target-dir \
 --fields-terminated-by "\\01" \
 -m 1 \
;


 #sqoop import user
 sqoop import --connect jdbc:mysql://hadoop01:3306/szbap_ods \
 --driver com.mysql.jdbc.Driver \
 --username root \
 --password root \
 --table user \
 --target-dir hdfs://hadoop01:9000/qfbap/ods/ods_user \
 --delete-target-dir \
 --fields-terminated-by "\\01" \
 -m 1 \
 ;


#sqoop import user_addr
sqoop import --connect jdbc:mysql://hadoop01:3306/szbap_ods \
 --driver com.mysql.jdbc.Driver \
 --username root \
 --password root \
 --table user_addr \
 --target-dir hdfs://hadoop01:9000/qfbap/ods/ods_user_addr \
 --delete-target-dir \
 --fields-terminated-by "\\01" \
 -m 1 \
;


 #sqoop import user_extend
 sqoop import --connect jdbc:mysql://hadoop01:3306/szbap_ods \
 --driver com.mysql.jdbc.Driver \
 --username root \
 --password root \
 --table user_extend \
 --target-dir hdfs://hadoop01:9000/qfbap/ods/ods_user_extend \
 --delete-target-dir \
 --fields-terminated-by "\\01" \
 -m 1 \
 ;