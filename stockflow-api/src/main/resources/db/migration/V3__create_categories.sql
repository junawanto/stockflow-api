CREATE TABLE categories (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    description VARCHAR(255),
    active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP
);

INSERT INTO categories(name, description)
VALUES
('Electronics', 'Electronic devices and accessories'),
('Stationery', 'Office stationery and supplies'),
('Furniture', 'Office furniture and fixtures');