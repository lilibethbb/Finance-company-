-- Create the 4 tables mentioned on your resume

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT,
    created_date TEXT
);

CREATE TABLE accounts (
    account_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    account_type TEXT,       -- 'checking', 'savings', etc.
    balance REAL DEFAULT 0,
    opened_date TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE spending_categories (
    category_id INTEGER PRIMARY KEY,
    category_name TEXT NOT NULL   -- 'Food', 'Rent', 'Entertainment', etc.
);

CREATE TABLE transactions (
    transaction_id INTEGER PRIMARY KEY,
    account_id INTEGER,
    category_id INTEGER,
    amount REAL NOT NULL,
    transaction_type TEXT,   -- 'debit' or 'credit'
    description TEXT,
    transaction_date TEXT,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id),
    FOREIGN KEY (category_id) REFERENCES spending_categories(category_id)
);
