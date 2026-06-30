CREATE TABLE stock_transactions (
    id BIGSERIAL PRIMARY KEY,
    product_id BIGINT NOT NULL,
    transaction_type VARCHAR(20) NOT NULL,
    quantity INTEGER NOT NULL,
    stock_before INTEGER NOT NULL,
    stock_after INTEGER NOT NULL,
    notes VARCHAR(255),
    created_by BIGINT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_stock_transactions_product
        FOREIGN KEY (product_id)
        REFERENCES products(id),

    CONSTRAINT fk_stock_transactions_created_by
        FOREIGN KEY (created_by)
        REFERENCES users(id),

    CONSTRAINT chk_stock_transactions_quantity
        CHECK (quantity > 0),

    CONSTRAINT chk_stock_transactions_type
        CHECK (transaction_type IN ('STOCK_IN', 'STOCK_OUT', 'ADJUSTMENT')),

    CONSTRAINT chk_stock_transactions_stock_before
        CHECK (stock_before >= 0),

    CONSTRAINT chk_stock_transactions_stock_after
        CHECK (stock_after >= 0)
);

CREATE INDEX idx_stock_transactions_product_id
ON stock_transactions(product_id);

CREATE INDEX idx_stock_transactions_created_at
ON stock_transactions(created_at);

CREATE INDEX idx_stock_transactions_type
ON stock_transactions(transaction_type);