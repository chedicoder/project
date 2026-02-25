CREATE TABLE orders (
    id BIGINT PRIMARY KEY,
    user_id BIGINT NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_orders_user
        FOREIGN KEY (user_id)
        REFERENCES user_account(id)
);