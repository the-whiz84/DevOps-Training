FROM mysql:8.4.7 
LABEL "Project"="Vprofile"
LABEL "Author"="The Whiz"

ENV MYSQL_ROOT_PASSWORD="vprodbpass"
ENV MYSQL_DATABASE="accounts"

ADD db_backup.sql /docker-entrypoint-initdb.d/db_backup.sql
EXPOSE 3306
