dbuser=${1}
dbhost=${2}
dbname=${3}
time mysqldump --skip-opt --add-drop-table --default-character-set=utf8 -u${dbuser} -h ${dbhost} -p ${dbname} > dump.sql
