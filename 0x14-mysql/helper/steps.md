# Steps:

## Resources:
- [install mysql 5.7 on ubuntu 20.04](https://computingforgeeks.com/how-to-install-mysql-on-ubuntu-focal/?expand_article=1)

## Task 0: Installing MySQL 5.7 on Ubuntu 20.04

- Log into your web-server and do the following
```
sudo apt-get update
sudo apt-get install wget -y
wget https://dev.mysql.com/get/mysql-apt-config_0.8.12-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.12-1_all.deb
```

- In the prompt, choose Ubuntu Bionic and click Ok
- The next prompt shows MySQL 8.0 chosen by default. Choose the first option and click OK
- In the next prompt, select MySQL 5.7 server and click OK.
- The next prompt selects MySQL5.7 by default. Choose the last otpion Ok and click OK
- Then `sudo apt-get update`.
    - If you see an error like `The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 467B942D3A79BD29` add the server key e.g `sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 467B942D3A79BD29`,
- Then search for MySQL 5,7 using apt-cache (If you can see MySQl 5.7.31-1ubuntu18.04 is appearing in the list. then move to the next step):

```
sudo apt-cache policy mysql-server
```
- Install MySQL 5.7 on Ubuntu 20.04: `sudo apt-get install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7*`

- Confirm its installed: `mysql --version`.

## Task 1:
```
sudo mysql
GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost' IDENTIFIED BY 'projectcorrection280hbtn';
FLUSH PRIVILEGES;
```

## Task 2:
```
sudo mysql
CREATE DATABASE tyrell_corp;
USE tyrell_corp;
CREATE TABLE nexus6 (id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(255));
INSERT INTO nexus6 (name) VALUES ('Leon');
GRANT SELECT ON tyrell_corp.nexus6 TO 'holberton_user'@'localhost';
FLUSH PRIVILEGES;
```

## Task 3: ?
```
sudo mysql
CREATE USER 'replica_user'@'%' IDENTIFIED BY '<password>';
GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%';
GRANT SELECT ON mysql.user TO 'holberton_user'@'localhost';
FLUSH PRIVILEGES;
```