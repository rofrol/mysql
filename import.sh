#doesn't work from script, have to run from shell directly
dbuser=${1}
dbname=${2}
mysql -u${dbuser} -p ${dbname} --default-character-set=utf8 < dump.sql
