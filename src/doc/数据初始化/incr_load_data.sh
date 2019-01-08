#!/bin/bash

sqoop job -exec incr_biz_trade
load data inpath '/qfbap/ods_tmp/ods_biz_trade' into table ods_biz_trade partition(dt="2019-01-08");


sqoop job -exec incr_cart
load data inpath '/qfbap/ods_tmp/ods_cart' into table ods_cart partition(dt="2019-01-08");


sqoop job -exec incr_order_delivery
load data inpath '/qfbap/ods_tmp/ods_order_delivery' into table ods_order_delivery partition(dt="2019-01-08");


