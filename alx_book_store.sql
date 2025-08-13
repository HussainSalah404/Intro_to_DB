CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

DROP TABLE IF EXISTS authors;
CREATE TABLE authors (
  author_id int DEFAULT NULL,
  author_name varchar(215) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES authors WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS books;
CREATE TABLE books (
  book_id int DEFAULT NULL,
  title varchar(130) DEFAULT NULL,
  author_id int DEFAULT NULL,
  price double DEFAULT NULL,
  publication_date date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES books WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
  customer_id int DEFAULT NULL,
  customer_name varchar(215) DEFAULT NULL,
  email varchar(215) DEFAULT NULL,
  address text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES customers WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS order_details;
CREATE TABLE order_details (
  orderdetailid int NOT NULL AUTO_INCREMENT,
  order_id int DEFAULT NULL,
  book_id int DEFAULT NULL,
  quantity double DEFAULT NULL,
  PRIMARY KEY (orderdetailid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES order_details WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  order_id int DEFAULT NULL,
  custumer_id int DEFAULT NULL,
  order_date date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES orders WRITE;
UNLOCK TABLES;