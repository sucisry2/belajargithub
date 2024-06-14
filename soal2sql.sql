-- Active: 1718369971017@@127.0.0.1@5432@dibimbing_day1@public
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

select item, count(item) as jumlah_pesanan
from item_bought
group by item
having count(item) < 3 and count(item) > 1; 