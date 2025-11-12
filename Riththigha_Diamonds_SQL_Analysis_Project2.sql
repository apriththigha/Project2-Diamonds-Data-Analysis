# PROJECT 2_diamonds

USE `diamonds_project2`;

# View all records (preview the table)
SELECT * FROM `diamonds (cleaned)`;

# View the first few rows
SELECT * FROM `diamonds (cleaned)` LIMIT 10;

# Check total records
SELECT COUNT(*) FROM `diamonds (cleaned)`;

# Basic summary statistics
SELECT 
    AVG(price) AS avg_price,
    MIN(price) AS min_price,
    MAX(price) AS max_price
FROM `diamonds (cleaned)`;

# View only selected columns
SELECT `Carat Weight`, `Cut`, `Color`, `Price`
FROM `diamonds (cleaned)`
LIMIT 10;

# Sort diamonds by price (highest first)
SELECT `Carat Weight`, `Cut`, `Color`, `Price`
FROM `diamonds (cleaned)`
ORDER BY price DESC
LIMIT 10;

# Filter diamonds with specific color
SELECT * FROM `diamonds (cleaned)`
WHERE color = 'E';

# Calculate the average price
SELECT AVG(price) AS average_price
FROM `diamonds (cleaned)`;

# Find the minimum and maximum price
SELECT MIN(price) AS min_price,
       MAX(price) AS max_price
FROM `diamonds (cleaned)`;

# Count how many diamonds of each cut
SELECT cut, COUNT(*) AS total_diamonds
FROM  `diamonds (cleaned)`
GROUP BY cut;

# Diamonds above a certain price
SELECT * FROM `diamonds (cleaned)`
WHERE price > 10000
ORDER BY price DESC;

# Show only unique colors
SELECT DISTINCT `Color`
FROM `diamonds (cleaned)`;

# Count how many unique cuts are there
SELECT COUNT(DISTINCT `Cut`) AS unique_cuts
FROM `diamonds (cleaned)`;

# Count total diamonds for each color
SELECT `Color`, COUNT(*) AS total_diamonds
FROM `diamonds (cleaned)`
GROUP BY `Color`;

# Find diamonds with “Ideal” or “Premium” cut
SELECT *
FROM `diamonds (cleaned)`
WHERE `Cut` IN ('Ideal', 'Premium');

# Sort all diamonds by color (alphabetically)
SELECT `Color`, `Cut`, `Price`
FROM `diamonds (cleaned)`
ORDER BY `Color` ASC;

# Find average price of all diamonds
SELECT ROUND(AVG(`Price`), 2) AS avg_price
FROM `diamonds (cleaned)`;
