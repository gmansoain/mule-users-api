-- 25 sample products for the Products API.
-- This file is auto-executed by the postgres:16-alpine image
-- the FIRST time the data volume is created.

DROP TABLE IF EXISTS products;

CREATE TABLE products (
    id          SERIAL PRIMARY KEY,
    name        VARCHAR        NOT NULL,
    price       INTEGER        NOT NULL,
    is_sale     BOOLEAN        NOT NULL DEFAULT FALSE,
    inventory   INTEGER        NOT NULL DEFAULT 0,
    created_at  TIMESTAMPTZ    NOT NULL DEFAULT NOW()
);

INSERT INTO products (name, price, is_sale, inventory, created_at) VALUES
('Apple iPhone 15 Pro 256GB Titanio Naturale',     1389, false, 42, '2026-01-12 09:15:00+01'),
('Samsung Galaxy S24 Ultra 512GB Titanium Black',  1469, true,  28, '2026-01-18 11:30:00+01'),
('Sony PlayStation 5 Slim Disc Edition',            549, false, 75, '2026-02-03 14:22:00+01'),
('Microsoft Xbox Series X 1TB',                     499, true,  33, '2026-02-09 10:45:00+01'),
('Nintendo Switch OLED Bianca',                     349, false, 60, '2026-02-15 16:10:00+01'),
('LG OLED evo C4 65" 4K Smart TV',                 1999, true,  15, '2026-02-22 12:00:00+01'),
('Samsung QLED Q80D 55" 4K',                       1099, false, 22, '2026-03-01 08:30:00+01'),
('MacBook Air M3 13" 256GB Mezzanotte',            1349, false, 38, '2026-03-07 15:05:00+01'),
('Dell XPS 15 Intel Core i7 16GB 1TB',             1899, true,  12, '2026-03-14 09:50:00+01'),
('HP Pavilion 15 Ryzen 7 16GB 512GB',               799, true,  45, '2026-03-20 13:25:00+01'),
('Apple iPad Air 11" M2 128GB Wi-Fi',               719, false, 50, '2026-03-28 11:15:00+01'),
('Samsung Galaxy Tab S9 FE 128GB',                  549, true,  30, '2026-04-02 10:00:00+02'),
('AirPods Pro 2 con MagSafe USB-C',                 279, false, 90, '2026-04-08 14:40:00+02'),
('Sony WH-1000XM5 Cuffie Wireless',                 379, true,  25, '2026-04-15 16:55:00+02'),
('Bose QuietComfort Ultra Headphones',              449, false, 18, '2026-04-22 09:30:00+02'),
('JBL Charge 5 Speaker Bluetooth',                  159, true,  80, '2026-04-30 12:20:00+02'),
('Dyson V15 Detect Absolute Aspirapolvere',         799, false, 20, '2026-05-05 15:45:00+02'),
('De Longhi Magnifica Evo Macchina Caffe',          449, true,  35, '2026-05-12 08:50:00+02'),
('Bosch Serie 6 Lavatrice 9kg WAU28PH9IT',          699, false, 14, '2026-05-18 11:35:00+02'),
('Whirlpool Frigorifero Combinato 462L',            899, true,   9, '2026-05-25 13:10:00+02'),
('Rowenta X-Plorer Serie 95 Robot Aspirapolvere',   599, false, 27, '2026-05-29 10:25:00+02'),
('GoPro HERO12 Black Action Cam',                   429, true,  40, '2026-06-01 09:00:00+02'),
('Canon EOS R50 Mirrorless 18-45mm',                849, false, 16, '2026-06-03 14:15:00+02'),
('Garmin Forerunner 265 Smartwatch',                499, true,  32, '2026-06-04 16:30:00+02'),
('Logitech MX Master 3S Mouse Wireless',            119, false, 100, '2026-06-06 11:50:00+02');