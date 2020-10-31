
/* mysql command Import CSV table

LOAD DATA INFILE 'E:/Quick_Audit/SAP_Sayer/conflicts_c.csv'
INTO TABLE conflicts_c
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

/* To Delete DBs with Prefix e.g dynamic*/


SELECT CONCAT('DROP DATABASE `',schema_name,'` ;') AS `-- stmt`
  FROM information_schema.schemata
 WHERE schema_name LIKE 'dynamic\_%' ESCAPE '\\'
ORDER BY schema_name 

SHOW Warnings;

/* listing Global Variables */

show GLOBAL VARIABLES

 /* ---- Tables involved in Role Build Procedure ---- */

 /*	1 tab_users
	2 adrp
	3 ust04
	4 ust10c
	5 agr_1016
	6 agr_users
	7 usr02
	8 usr21
	9 ust10s
	10 ust12
	11 tstct
	12 usobx_c
	13 usobt_c
	14 user_details
	15 conflicts_value_a as a
	16 conflicts_value_bl as b
	17 conflicts_value_flbl as f
	18 conflicts_value_notcd as N
*/


/*
	Adrp is a User Base persnumber,first_name,last_name,valid_from,valid_to
	usr21 relation between user's persnumber and user's name
	

*/