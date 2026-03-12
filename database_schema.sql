CREATE TABLE parts_master (
part_id TEXT PRIMARY KEY,
part_name TEXT,
oem TEXT,
manufacturer_part_number TEXT,
category TEXT,
location_id TEXT,
quantity_in_stock INTEGER,
minimum_stock_level INTEGER,
unit_cost NUMERIC,
supplier_id TEXT,
critical_spare BOOLEAN,
lead_time_days INTEGER
);

CREATE TABLE stock_movements (
movement_id SERIAL PRIMARY KEY,
part_id TEXT,
movement_type TEXT,
quantity_change INTEGER,
user_name TEXT,
date_time TIMESTAMP,
notes TEXT
);

CREATE TABLE locations (
location_id TEXT PRIMARY KEY,
location_name TEXT,
description TEXT
);

CREATE TABLE suppliers (
supplier_id TEXT PRIMARY KEY,
supplier_name TEXT,
contact_email TEXT,
phone TEXT
);

CREATE TABLE purchase_orders (
po_number TEXT PRIMARY KEY,
supplier_id TEXT,
part_id TEXT,
quantity_ordered INTEGER,
order_date DATE,
expected_delivery DATE,
status TEXT
);
