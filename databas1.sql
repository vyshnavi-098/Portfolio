mysql> select user,host from mysql.user;
+------+-----------+
| user | host      |
+------+-----------+
| root | localhost |
+------+-----------+

mysql> create user 'sample1'@'localhost' identified by'12345';
Query OK, 0 rows affected (0.11 sec)

mysql> grant all privileges on *.* to 'sample1'@'localhost';
Query OK, 0 rows affected (0.00 sec)

mysql> flush privileges;
Query OK, 0 rows affected (0.02 sec)

mysql> show grants for 'sample1'@'localhost';
+-------------------------------------------------------------------------------------------------------------------------+
| Grants for sample1@localhost
                                                          |
+-------------------------------------------------------------------------------------------------------------------------+
| GRANT ALL PRIVILEGES ON *.* TO 'sample1'@'localhost' IDENTIFIED BY PASSWORD '*00A51F3F48415C7D4E8908980D443C29C69B60C9' |
+-------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> revoke all privileges,grant option from'sample1'@'localhost';
Query OK, 0 rows affected (0.00 sec)

mysql> drop user'sample1'@'localhost';
Query OK, 0 rows affected (0.00 sec)

mysql>exit;

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mydb               |
| mysql              |
| pos                |
| sample             |
| test               |
| vyshnavi           |
+--------------------+

mysql> drop database vyshnavi;
Query OK, 1 row affected (0.03 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mydb               |
| mysql              |
| pos                |
| sample             |
| test               |
+--------------------+


mysql> create database vyshnavi;
Query OK, 1 row affected (0.00 sec)

mysql> use vyshnavi;
Database changed

mysql> create table info(id int auto_increment,first_name varchar(20),last_name varchar(20),email varchar(20),password varchar(7),location varchar(20),dept varchar(10),is_admin TinyInt(1),register_date datetime,primary key(id));
Query OK, 0 rows affected (0.02 sec)
 
mysql> Insert into info(first_name,last_name,email,Password,location,dept,is_admin,register_date)values('vyshu','kyasa','vyshu@gamil.com','Vys_890','Hyderabad','CSE',1,'2020-05-12 12:10:8');
Query OK, 1 row affected (0.01 sec)

mysql> Insert into info(first_name,last_name,email,Password,location,dept,is_admin,register_date)values('vasu','kyasa','vasu@gamil.com','Vas_890','Banglore','CSE',0,'2021-06-12 01:10:8');
Query OK, 1 row affected (0.05 sec)

mysql> Insert into info(first_name,last_name,email,Password,location,dept,is_admin,register_date)values('rupa','mukka','rup@gamil.com','Rup_80','chennai','ECE',1,'2023-07-13 02:11:7');
Query OK, 1 row affected (0.02 sec)

mysql> Insert into info(first_name,last_name,email,Password,location,dept,is_admin,register_date)values('raju','mukka','raj@gmail.com','raj_098','pune','Mech',0,'2023-05-9 11:11:11');
Query OK, 1 row affected (0.02 sec)

mysql> Insert into info(first_name,last_name,email,Password,location,dept,is_admin,register_date)value('ayyappa','devudu','ayya@gmail.com','ayya@3','Tamilnadu','IT',1,'2022-09-8 12:12:12');
Query OK, 1 row affected (0.02 sec)

mysql> select * from info;
+----+------------+-----------+-----------------+----------+-----------+------+----------+---------------------+
| id | first_name | last_name | email           | password | location  | dept | is_admin | register_date       |
+----+------------+-----------+-----------------+----------+-----------+------+----------+---------------------+
|  1 | vyshu      | kyasa     | vyshu@gamil.com | Vys_890  | Hyderabad | CSE  |        1 | 2020-05-12 12:10:08 |
|  2 | vasu       | kyasa     | vasu@gamil.com  | Vas_890  | Banglore  | CSE  |        0 | 2021-06-12 01:10:08 |
|  6 | rupa       | mukka     | rup@gamil.com   | Rup_80   | chennai   | ECE  |        1 | 2023-07-13 02:11:07 |
|  7 | raju       | mukka     | raj@gmail.com   | raj_098  | pune      | Mech |        0 | 2023-05-09 11:11:11 |
|  8 | ayyappa    | devudu    | ayya@gmail.com  | ayya@3   | Tamilnadu | IT   |        1 | 2022-09-08 12:12:12 |
+----+------------+-----------+-----------------+----------+-----------+------+----------+---------------------+

mysql> select first_name,last_name from info;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| vyshu      | kyasa     |
| vasu       | kyasa     |
| rupa       | mukka     |
| raju       | mukka     |
| ayyappa    | devudu    |
+------------+-----------+

mysql> select * from info where location='tamilnadu';
+----+------------+-----------+----------------+----------+-----------+------+----------+---------------------+
| id | first_name | last_name | email          | password | location  | dept | is_admin | register_date       |
+----+------------+-----------+----------------+----------+-----------+------+----------+---------------------+
|  8 | ayyappa    | devudu    | ayya@gmail.com | ayya@3   | Tamilnadu | IT   |        1 | 2022-09-08 12:12:12 |
+----+------------+-----------+----------------+----------+-----------+------+----------+---------------------+

mysql> select * from info where location='tamilnadu' and dept='cse';
Empty set (0.00 sec)

mysql> select * from info where location='tamilnadu' and dept='It';
+----+------------+-----------+----------------+----------+-----------+------+----------+---------------------+
| id | first_name | last_name | email          | password | location  | dept | is_admin | register_date       |
+----+------------+-----------+----------------+----------+-----------+------+----------+---------------------+
|  8 | ayyappa    | devudu    | ayya@gmail.com | ayya@3   | Tamilnadu | IT   |        1 | 2022-09-08 12:12:12 |
+----+------------+-----------+----------------+----------+-----------+------+----------+---------------------+

mysql> select * from info where is_admin>1;
Empty set (0.00 sec)

mysql> select * from info where is_admin=1;
+----+------------+-----------+-----------------+----------+-----------+------+----------+---------------------+
| id | first_name | last_name | email           | password | location  | dept | is_admin | register_date       |
+----+------------+-----------+-----------------+----------+-----------+------+----------+---------------------+
|  1 | vyshu      | kyasa     | vyshu@gamil.com | Vys_890  | Hyderabad | CSE  |        1 | 2020-05-12 12:10:08 |
|  6 | rupa       | mukka     | rup@gamil.com   | Rup_80   | chennai   | ECE  |        1 | 2023-07-13 02:11:07 |
|  8 | ayyappa    | devudu    | ayya@gmail.com  | ayya@3   | Tamilnadu | IT   |        1 | 2022-09-08 12:12:12 |
+----+------------+-----------+-----------------+----------+-----------+------+----------+---------------------+

mysql> delete from info where id=1;
Query OK, 1 row affected (0.00 sec)

mysql> select * from info;
+----+------------+-----------+----------------+----------+-----------+------+----------+---------------------+
| id | first_name | last_name | email          | password | location  | dept | is_admin | register_date       |
+----+------------+-----------+----------------+----------+-----------+------+----------+---------------------+
|  2 | vasu       | kyasa     | vasu@gamil.com | Vas_890  | Banglore  | CSE  |        0 | 2021-06-12 01:10:08 |
|  6 | rupa       | mukka     | rup@gamil.com  | Rup_80   | chennai   | ECE  |        1 | 2023-07-13 02:11:07 |
|  7 | raju       | mukka     | raj@gmail.com  | raj_098  | pune      | Mech |        0 | 2023-05-09 11:11:11 |
|  8 | ayyappa    | devudu    | ayya@gmail.com | ayya@3   | Tamilnadu | IT   |        1 | 2022-09-08 12:12:12 |
+----+------------+-----------+----------------+----------+-----------+------+----------+---------------------+


mysql> update info set email ='ayyappa@gmail.com' where id=8;
Query OK, 1 row affected (0.01 sec)
 

mysql> select * from info;
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+
| id | first_name | last_name | email             | password | location  | dept | is_admin | register_date       |
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+
|  2 | vasu       | kyasa     | vasu@gamil.com    | Vas_890  | Banglore  | CSE  |        0 | 2021-06-12 01:10:08 |
|  6 | rupa       | mukka     | rup@gamil.com     | Rup_80   | chennai   | ECE  |        1 | 2023-07-13 02:11:07 |
|  7 | raju       | mukka     | raj@gmail.com     | raj_098  | pune      | Mech |        0 | 2023-05-09 11:11:11 |
|  8 | ayyappa    | devudu    | ayyappa@gmail.com | ayya@3   | Tamilnadu | IT   |        1 | 2022-09-08 12:12:12 |
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+

mysql> alter table info add age varchar(2);
Query OK, 4 rows affected (0.03 sec)

mysql> alter table info modify column age int(4);
Query OK, 4 rows affected (0.05 sec)

mysql> select * from info;
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+------+
| id | first_name | last_name | email             | password | location  | dept | is_admin | register_date       | age  |
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+------+
|  2 | vasu       | kyasa     | vasu@gamil.com    | Vas_890  | Banglore  | CSE  |        0 | 2021-06-12 01:10:08 | NULL |
|  6 | rupa       | mukka     | rup@gamil.com     | Rup_80   | chennai   | ECE  |        1 | 2023-07-13 02:11:07 | NULL |
|  7 | raju       | mukka     | raj@gmail.com     | raj_098  | pune      | Mech |        0 | 2023-05-09 11:11:11 | NULL |
|  8 | ayyappa    | devudu    | ayyappa@gmail.com | ayya@3   | Tamilnadu | IT   |        1 | 2022-09-08 12:12:12 | NULL |
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+------+


mysql> select * from info order by last_name asc;
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+------+
| id | first_name | last_name | email             | password | location  | dept | is_admin | register_date       | age  |
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+------+
|  8 | ayyappa    | devudu    | ayyappa@gmail.com | ayya@3   | Tamilnadu | IT   |        1 | 2022-09-08 12:12:12 | NULL |
|  2 | vasu       | kyasa     | vasu@gamil.com    | Vas_890  | Banglore  | CSE  |        0 | 2021-06-12 01:10:08 | NULL |
|  6 | rupa       | mukka     | rup@gamil.com     | Rup_80   | chennai   | ECE  |        1 | 2023-07-13 02:11:07 | NULL |
|  7 | raju       | mukka     | raj@gmail.com     | raj_098  | pune      | Mech |        0 | 2023-05-09 11:11:11 | NULL |
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+------+

mysql> select * from info order by last_name desc;
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+------+
| id | first_name | last_name | email             | password | location  | dept | is_admin | register_date       | age  |
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+------+
|  6 | rupa       | mukka     | rup@gamil.com     | Rup_80   | chennai   | ECE  |        1 | 2023-07-13 02:11:07 | NULL |
|  7 | raju       | mukka     | raj@gmail.com     | raj_098  | pune      | Mech |        0 | 2023-05-09 11:11:11 | NULL |
|  2 | vasu       | kyasa     | vasu@gamil.com    | Vas_890  | Banglore  | CSE  |        0 | 2021-06-12 01:10:08 | NULL |
|  8 | ayyappa    | devudu    | ayyappa@gmail.com | ayya@3   | Tamilnadu | IT   |        1 | 2022-09-08 12:12:12 | NULL |
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+------+

mysql> select concat(first_name,' ',last_name)as 'name',dept from info;
+----------------+------+
| name           | dept |
+----------------+------+
| vasu kyasa     | CSE  |
| rupa mukka     | ECE  |
| raju mukka     | Mech |
| ayyappa devudu | IT   |
+----------------+------+

mysql> select distinct location from info;
+-----------+
| location  |
+-----------+
| Banglore  |
| chennai   |
| pune      |
| Tamilnadu |
+-----------+

mysql> update info set age=23 where id=2;
Query OK, 1 row affected (0.05 sec) 

mysql> update info set age=40 where id=6;
Query OK, 1 row affected (0.00 sec)

mysql> update info set age=42 where id=7;
Query OK, 1 row affected (0.01 sec)

mysql> update info set age=44 where id=8;
Query OK, 1 row affected (0.01 sec)

mysql> select * from info;
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+------+
| id | first_name | last_name | email             | password | location  | dept | is_admin | register_date       | age  |
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+------+
|  2 | vasu       | kyasa     | vasu@gamil.com    | Vas_890  | Banglore  | CSE  |        0 | 2021-06-12 01:10:08 |   23 |
|  6 | rupa       | mukka     | rup@gamil.com     | Rup_80   | chennai   | ECE  |        1 | 2023-07-13 02:11:07 |   40 |
|  7 | raju       | mukka     | raj@gmail.com     | raj_098  | pune      | Mech |        0 | 2023-05-09 11:11:11 |   42 |
|  8 | ayyappa    | devudu    | ayyappa@gmail.com | ayya@3   | Tamilnadu | IT   |        1 | 2022-09-08 12:12:12 |   44 |
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+------+

mysql> select * from info where age between 20 and 45;
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+------+
| id | first_name | last_name | email             | password | location  | dept | is_admin | register_date       | age  |
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+------+
|  2 | vasu       | kyasa     | vasu@gamil.com    | Vas_890  | Banglore  | CSE  |        0 | 2021-06-12 01:10:08 |   23 |
|  6 | rupa       | mukka     | rup@gamil.com     | Rup_80   | chennai   | ECE  |        1 | 2023-07-13 02:11:07 |   40 |
|  7 | raju       | mukka     | raj@gmail.com     | raj_098  | pune      | Mech |        0 | 2023-05-09 11:11:11 |   42 |
|  8 | ayyappa    | devudu    | ayyappa@gmail.com | ayya@3   | Tamilnadu | IT   |        1 | 2022-09-08 12:12:12 |   44 |
+----+------------+-----------+-------------------+----------+-----------+------+----------+------------------
mysql> select * from info where dept like 'd%';

mysql> select * from info where dept in('cse','It');
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+------+
| id | first_name | last_name | email             | password | location  | dept | is_admin | register_date       | age  |
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+------+
|  2 | vasu       | kyasa     | vasu@gamil.com    | Vas_890  | Banglore  | CSE  |        0 | 2021-06-12 01:10:08 |   23 |
|  8 | ayyappa    | devudu    | ayyappa@gmail.com | ayya@3   | Tamilnadu | IT   |        1 | 2022-09-08 12:12:12 |   44 |
+----+------------+-----------+-------------------+----------+-----------+------+----------+-----------------

mysql> create index Lindex on info(location);
Query OK, 4 rows affected (0.04 sec)

mysql> select * from info;
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+------+
| id | first_name | last_name | email             | password | location  | dept | is_admin | register_date       | age  |
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+------+
|  2 | vasu       | kyasa     | vasu@gamil.com    | Vas_890  | Banglore  | CSE  |        0 | 2021-06-12 01:10:08 |   23 |
|  6 | rupa       | mukka     | rup@gamil.com     | Rup_80   | chennai   | ECE  |        1 | 2023-07-13 02:11:07 |   40 |
|  7 | raju       | mukka     | raj@gmail.com     | raj_098  | pune      | Mech |        0 | 2023-05-09 11:11:11 |   42 |
|  8 | ayyappa    | devudu    | ayyappa@gmail.com | ayya@3   | Tamilnadu | IT   |        1 | 2022-09-08 12:12:12 |   44 |
+----+------------+-----------+-------------------+----------+-----------+------+----------+---------------------+------+








