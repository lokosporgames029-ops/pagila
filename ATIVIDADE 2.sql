CREATE TABLE products (

	ID_product SERIAL PRIMARY KEY,
	product_name VARCHAR(100) NOT NULL,
	price REAL NOT NULL,
	stock INT DEFAULT 0,
	category VARCHAR(100)
	
)

INSERT INTO products (product_name, price, category)
	VALUES 
		('Arroz', 10.5, 'Alimentos'),
		('Feijão', 11.2, 'Alimentos'),
		('Maquita Eletrica', 235.99, 'Itens Essenciais')

UPDATE products
SET price = price * 1.1
WHERE category = 'Alimentos'

SELECT * FROM products