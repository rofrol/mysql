dbuser=${1}
dbname=${2}
#drop all tables in mysql from command line
mysqldump -u${dbuser} -p ${dbname}|grep ^DROP > drop_tables.sql
#|mysql -uroot -p dbase
mysql -u${dbuser} -p ${dbname} < drop_tables.sql
rm drop_tables.sql
#http://knaddison.com/technology/mysql-drop-all-tables-database-using-single-command-line-command#comment-4230

#if foreign keys used, probably add SET FOREIGN_KEY_CHECKS=0; to head of that pipe (alphabetical order)
#http://www.thingy-ma-jig.co.uk/blog/10-10-2006/mysql-drop-all-tables#comment-3873
