CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

DROP TABLE IF EXISTS Authors;
CREATE TABLE Authors (
  author_id int DEFAULT NULL,
  author_name varchar(215) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES authors WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
  book_id int DEFAULT NULL,
  title varchar(130) DEFAULT NULL,
  author_id int DEFAULT NULL,
  price double DEFAULT NULL,
  publication_date date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES books WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_name VARCHAR(215),
  email VARCHAR(215),
  address TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES customers WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS Order_details;
CREATE TABLE Order_details (
order_id INT,
  order_date DATE,
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES order_details WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
orderdetailid INT NOT NULL AUTO_INCREMENT,
  order_id INT,
  book_id INT,
  quantity DOUBLE,
  PRIMARY KEY (orderdetailid),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (book_id) REFERENCES Books(book_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES orders WRITE;
UNLOCK TABLES;