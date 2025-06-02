-- 事务隔离级别
set session transaction isolation level read committed;
SET GLOBAL tx_isolation='READ-COMMITTED';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'Eisoo.com123' WITH GRANT OPTION;
CREATE USER canal IDENTIFIED BY 'canal';  
GRANT SELECT, REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'canal'@'%';
FLUSH PRIVILEGES;
