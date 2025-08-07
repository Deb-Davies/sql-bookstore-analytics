-- 💣 Drop tables if they exist
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS books;

-- 📚 Create books table
CREATE TABLE books (
    book_id INTEGER PRIMARY KEY,
    title TEXT,
    author TEXT,
    price REAL,
    published_year INTEGER
);

-- 👤 Create customers table
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT,
    city TEXT
);

-- 🛒 Create orders table
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    book_id INTEGER,
    quantity INTEGER,
    order_date TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

-- 📥 Insert sample books
INSERT INTO books (book_id, title, author, price, published_year) VALUES
(1, 'The Art of SQL', 'Stephane Faroult', 30.99, 2006),
(2, 'SQL for Dummies', 'Allen Taylor', 25.50, 2018),
(3, 'Learning SQL', 'Alan Beaulieu', 22.99, 2020),
(4, 'Database Systems', 'Thomas Connolly', 45.00, 2015);

-- 📥 Insert sample customers
INSERT INTO customers (customer_id, name, city) VALUES
(1, 'Alice Smith', 'Denver'),
(2, 'Bob Johnson', 'Boulder'),
(3, 'Carol White', 'Denver');

-- 📥 Insert sample orders
INSERT INTO orders (order_id, customer_id, book_id, quantity, order_date) VALUES
(1, 1, 2, 1, '2022-07-01'),
(2, 2, 1, 2, '2022-07-02'),
(3, 1, 3, 1, '2022-07-03'),
(4, 3, 4, 1, '2022-07-03');
