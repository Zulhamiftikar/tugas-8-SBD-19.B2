Microsoft Windows [Version 10.0.19041.1052]
(c) Microsoft Corporation. All rights reserved.

C:\Users\zulham ifikar>cd ../..

C:\>cd xampp/mysql/bin

C:\xampp\mysql\bin>mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 39
Server version: 10.4.14-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use zulhamiftikar_311910537 ;
Database changed
MariaDB [zulhamiftikar_311910537]> create database belajar ;
Query OK, 1 row affected (0.131 sec)

MariaDB [zulhamiftikar_311910537]> use belajar l
Database changed
MariaDB [belajar]>  CREATE TABLE kategori (
    ->  id int PRIMARY Key AUTO_INCREMENT,
    ->  nama varchar(15)
    ->  );
Query OK, 0 rows affected (1.104 sec)

MariaDB [belajar]> CREATE TABLE rak (
    ->  id int PRIMARY Key AUTO_INCREMENT,
    ->  nama varchar(15)
    ->  );
Query OK, 0 rows affected (0.488 sec)

MariaDB [belajar]>  CREATE TABLE film (
    ->   id int(11) NOT NULL AUTO_INCREMENT,
    ->   nama varchar(50) NOT NULL,
    ->   id_rak int(11) NOT NULL,
    ->   id_kategori int(11) NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   KEY id_rak (`id_rak`),
    ->   KEY id_kategori (`id_kategori`),
    ->   CONSTRAINT id_kategori FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id`),
    ->   CONSTRAINT id_rak FOREIGN KEY (`id_rak`) REFERENCES `rak` (`id`)
    -> );
Query OK, 0 rows affected (0.487 sec)

MariaDB [belajar]>  INSERT INTO kategori VALUES
    ->  (NULL, 'fiksi'),
    ->  (NULL, 'drama'),
    ->  (NULL, 'horor'),
    ->  (NULL, 'komedi'),
    ->   (NULL, 'action');
Query OK, 5 rows affected (0.280 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [belajar]> SELECT * FROM kategori;
+----+--------+
| id | nama   |
+----+--------+
|  1 | fiksi  |
|  2 | drama  |
|  3 | horor  |
|  4 | komedi |
|  5 | action |
+----+--------+
5 rows in set (0.062 sec)

MariaDB [belajar]> INSERT INTO `rak` (`id`, `nama`) VALUES ('1', 'Coujuring 3'), ('2', 'a Quiet place'), ('3', 'Jakarta Vs Everybody'), ('4', 'Boss Idiot'), ('5', 'Drama queen');
Query OK, 5 rows affected, 1 warning (0.048 sec)
Records: 5  Duplicates: 0  Warnings: 1

MariaDB [belajar]> INSERT INTO `kategori` (`id`, `nama`) VALUES ('1', 'horror'), ('2', 'fiksi'), ('3', 'action'), ('4', 'drama'), ('5', 'comedy');
Query OK, 5 rows affected (0.065 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [belajar]> INSERT INTO `film` (`id`, `nama`, `id_rak`, `id_kategori`) VALUES ('1', 'Coujuring 3', '1', '1'), ('2', 'a Quiet place', '2', '2'), ('3', 'Jakarta Vs Everybody', '3', '3'), ('4', 'Boss Idiot', '4', '4'), ('5', 'Drama queen', '5', '5');
Query OK, 5 rows affected (0.073 sec)
Records: 5  Duplicates: 0  Warnings: 0

