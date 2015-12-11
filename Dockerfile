FROM mysql:5.7.9
MAINTAINER Mario <mario@mss.io>

COPY my.cnf /etc/mysql/my.cnf

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 3306
CMD ["mysqld"]
