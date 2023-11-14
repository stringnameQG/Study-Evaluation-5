CREATE USER 'SuperAdmin-user' IDENTIFIED BY 'SuperAdmin-user';
GRANT ALL PRIVILEGES ON cinema_database . * TO 'SuperAdmin-user'@'localhost';
FLUSH PRIVILEGES;

CREATE USER 'Admin-user' IDENTIFIED BY 'Admin-user';
GRANT CREATE, SELECT, INSERT, UPDATE, DELETE, DROP ON cinema_database . seances TO 'Admin-user'@'localhost'; 
GRANT CREATE, SELECT, INSERT, UPDATE, DELETE, DROP ON cinema_database . salles TO 'Admin-user'@'localhost'; 
FLUSH PRIVILEGES;