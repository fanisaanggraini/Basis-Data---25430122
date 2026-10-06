CREATE DATABASE IF NOT EXISTS kopma_122
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

CREATE USER IF NOT EXISTS'mhs_122'@'localhost'
IDENTIFIED BY '<password_kerja>';

GRANT ALL PRIVILEGES ON kopma_122.*
TO 'mhs_122'@'localhost';