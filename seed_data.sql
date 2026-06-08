-- Customers
INSERT INTO customers VALUES (1, 'Alex', 'Johnson', 'alex@email.com', '2023-01-15');
INSERT INTO customers VALUES (2, 'Maria', 'Garcia', 'maria@email.com', '2023-03-20');

-- Accounts
INSERT INTO accounts VALUES (1, 1, 'checking', 2400.00, '2023-01-15');
INSERT INTO accounts VALUES (2, 1, 'savings', 8500.00, '2023-01-15');
INSERT INTO accounts VALUES (3, 2, 'checking', 1200.00, '2023-03-20');

-- Spending Categories
INSERT INTO spending_categories VALUES (1, 'Food & Dining');
INSERT INTO spending_categories VALUES (2, 'Rent');
INSERT INTO spending_categories VALUES (3, 'Entertainment');
INSERT INTO spending_categories VALUES (4, 'Transportation');
INSERT INTO spending_categories VALUES (5, 'Utilities');

-- Transactions
INSERT INTO transactions VALUES (1, 1, 1, 45.00, 'debit', 'Grocery store', '2024-01-05');
INSERT INTO transactions VALUES (2, 1, 2, 1200.00, 'debit', 'Monthly rent', '2024-01-01');
INSERT INTO transactions VALUES (3, 1, 3, 15.99, 'debit', 'Netflix', '2024-01-10');
INSERT INTO transactions VALUES (4, 1, 4, 60.00, 'debit', 'Gas', '2024-01-12');
INSERT INTO transactions VALUES (5, 1, 1, 32.50, 'debit', 'Restaurant', '2024-01-14');
INSERT INTO transactions VALUES (6, 3, 1, 88.00, 'debit', 'Grocery store', '2024-01-06');
INSERT INTO transactions VALUES (7, 1, 5, 110.00, 'debit', 'Electric bill', '2024-01-08');
