drop database if exists qfbap_dws cascade;
create database qfbap_dws;
drop table if exists qfbap_dws.dws_user_visit_month1;
create table qfbap_dws.dws_user_visit_month1
(
   user_id              bigint ,
   type                 string,
   content              string,
   cnt                  bigint,
   rn                   bigint,
   dw_date              string
)
partitioned by (dt string)
location '/qfbap/dws/dws_user_visit_month1'
;
