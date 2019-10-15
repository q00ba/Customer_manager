CREATE USER 'customeruser'@'localhost' IDENTIFIED BY 'customeruser';

GRANT ALL PRIVILEGES ON * . * TO 'customeruser'@'localhost';


# MySQL 8.0.4

ALTER USER 'customeruser'@'localhost' IDENTIFIED WITH mysql_native_password BY 'customeruser';