ALTER TABLE orders
ADD order_status VARCHAR(30) DEFAULT 'PENDING';

--changeset dev:004-create-order-status-index
CREATE INDEX idx_orders_status
ON orders(order_status);