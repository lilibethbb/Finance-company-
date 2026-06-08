-- 1. SELECT: View all transactions
SELECT * FROM transactions;

-- 2. WHERE: Find transactions over $50
SELECT description, amount, transaction_date
FROM transactions
WHERE amount > 50;

-- 3. JOIN: Transaction history with category names
SELECT t.transaction_date, t.description, t.amount, sc.category_name
FROM transactions t
JOIN spending_categories sc ON t.category_id = sc.category_id;

-- 4. GROUP BY: Spending by category (spending trends)
SELECT sc.category_name, SUM(t.amount) AS total_spent
FROM transactions t
JOIN spending_categories sc ON t.category_id = sc.category_id
WHERE t.transaction_type = 'debit'
GROUP BY sc.category_name
ORDER BY total_spent DESC;

-- 5. Account balances per customer
SELECT c.first_name, c.last_name, a.account_type, a.balance
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id;

-- 6. Transaction history for one customer
SELECT c.first_name, t.transaction_date, t.description, t.amount
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
JOIN transactions t ON a.account_id = t.account_id
WHERE c.customer_id = 1
ORDER BY t.transaction_date DESC;
