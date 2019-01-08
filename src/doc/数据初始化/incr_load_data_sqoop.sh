#!/bin/bash


#############################
####1、每天凌晨两点定时增量到入表数据
####2、仅执行一次，为生成sqoop的job
################################

#sqoop import ods_biz_trade
#sqoop import --connect jdbc:mysql://hadoop01:3306/szbap_ods \
sqoop job --create incr_biz_trade -- import --connect jdbc:mysql://hadoop01:3306/szbap_ods \
--driver com.mysql.jdbc.Driver \
--username root \
--password root \
--table biz_trade \
--target-dir /qfbap/ods_tmp/ods_biz_trade \
--fields-terminated-by "\\01" \
-m 1 \
--check-column trade_id \
--incremental append \
--last-value 0 \
;


#sqoop import cart
#sqoop import --connect jdbc:mysql://hadoop01:3306/szbap_ods \
sqoop job --create incr_cart -- import --connect jdbc:mysql://hadoop01:3306/szbap_ods \
--driver com.mysql.jdbc.Driver \
--username root \
--password root \
--table cart \
--target-dir /qfbap/ods_tmp/ods_cart \
--fields-terminated-by "\\01" \
-m 1 \
--check-column cart_id \
--incremental append \
--last-value 0 \
;

#sqoop import order_delivery
#sqoop import --connect jdbc:mysql://hadoop01:3306/szbap_ods \
sqoop job --create incr_order_delivery -- import --connect jdbc:mysql://hadoop01:3306/szbap_ods \
--driver com.mysql.jdbc.Driver \
--username root \
--password root \
--table order_delivery \
--target-dir /qfbap/ods_tmp/ods_order_delivery \
--fields-terminated-by "\\01" \
-m 1 \
--check-column update_time \
--incremental append \
--last-value "2019-01-08 15:20:47" \
;




