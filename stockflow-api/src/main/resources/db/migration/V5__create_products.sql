CREATE TABLE products (
    id BIGSERIAL PRIMARY KEY,
    category_id BIGINT NOT NULL,
    supplier_id BIGINT,
    sku VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(150) NOT NULL,
    description VARCHAR(255),
    unit VARCHAR(30) NOT NULL,
    minimum_stock INTEGER NOT NULL DEFAULT 0,
    current_stock INTEGER NOT NULL DEFAULT 0,
    active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP,

    CONSTRAINT fk_products_category
        FOREIGN KEY (category_id)
        REFERENCES categories(id),

    CONSTRAINT fk_products_supplier
        FOREIGN KEY (supplier_id)
        REFERENCES suppliers(id),

    CONSTRAINT chk_products_minimum_stock
        CHECK (minimum_stock >= 0),

    CONSTRAINT chk_products_current_stock
        CHECK (current_stock >= 0)
);

CREATE INDEX idx_products_name
ON products(name);

CREATE INDEX idx_products_sku
ON products(sku);

CREATE INDEX idx_products_category_id
ON products(category_id);