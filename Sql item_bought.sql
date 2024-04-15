CREATE TABLE item_bought (
    buyer TEXT NOT NULL,
    item TEXT NOT NULL
);

INSERT INTO item_bought (buyer, item) VALUES
('A', 'Asus'),
('B', 'Lenovo'),
('C', 'Lenovo'),
('D', 'Acer'),
('E', 'Acer'),
('F', 'Acer');

SELECT * FROM item_bought 

WITH ItemCounts AS (
    SELECT item, COUNT(*) AS count
    FROM item_bought
    GROUP BY item
)
SELECT item
FROM ItemCounts
WHERE count > (SELECT MIN(count) FROM ItemCounts)
  AND count < (SELECT MAX(count) FROM ItemCounts);
