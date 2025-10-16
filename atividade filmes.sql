CREATE TABLE films (
	ID_film SERIAL PRIMARY KEY,
	title VARCHAR(100) UNIQUE,
	duration INTERVAL NOT NULL,
	category TEXT[] NOT NULL,
	total_rentals BIGINT DEFAULT 0,
	rental_price NUMERIC
);

SELECT * FROM films

INSERT INTO films (title, duration, category, total_rentals, rental_price)
	VALUES 
	('Oppenheimer', '3 hours 0 minutes', ARRAY['Drama', 'Histórico', 'Suspense'], 8500000, 14.90),
	('Duna: Parte Dois', '2 hours 46 minutes', ARRAY['Ficção Científica', 'Aventura', 'Épico'], 7900000, 13.90),
	('Tudo em Todo Lugar ao Mesmo Tempo', '2 hours 19 minutes', ARRAY['Ficção Científica', 'Aventura', 'Épico'], 7900000, 13.90),
	('Parasita', '2 hours 12 minutes', ARRAY['Drama', 'Thriller', 'Suspense Social'], 7200000, 9.90),
	('A Ilha do Medo', '2h 18min', ARRAY['Mistério', 'Suspense', 'Psicológico'], 6950000, 8.90),
	('Interestelar', '2h 49min', ARRAY['Ficção Científica', 'Drama', 'Aventura'], 6800000, 11.90),
	('Clube da Luta', '2h 19min', ARRAY['Drama', 'Psicológico', 'Crime'], 6500000, 7.90),
	('O Cavaleiro das Trevas', '2h 32min', ARRAY['Ação', 'Crime', 'Drama'], 6300000, 10.90),
	('Whiplash', '1h 46min', ARRAY['Drama', 'Música', 'Psicológico'], 6000000, 8.90),
	('Blade Runner 2049', '2h 44min', ARRAY['Ficção Científica', 'Neo-noir', 'Drama'], 5700000, 9.90)
	


DELETE FROM films
WHERE id_film = 1

SELECT title, sum(duration) AS duracao
FROM films
GROUP BY title
HAVING SUM(duration) > '2 hours'
ORDER BY duracao DESC

SELECT title, category
FROM films

SELECT title, sum(total_rentals) AS TOTAL
FROM films
GROUP BY title
ORDER BY TOTAL DESC
LIMIT 5

CREATE TABLE clients (
	ID_client SERIAL PRIMARY KEY,
	client_name VARCHAR(100) NOT NULL
);

CREATE TABLE payments (
    ID_payment SERIAL PRIMARY KEY,
    ID_client INT REFERENCES clients(ID_client),
    amount NUMERIC(10,2) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO clients (client_name) VALUES
('Maria Silva'),
('João Pereira'),
('Ana Costa'),
('Carlos Souza'),
('Fernanda Lima');

INSERT INTO payments (ID_client, amount) VALUES
(1, 150.00),
(1, 200.00),
(2, 320.00),
(3, 275.50),
(4, 100.00),
(4, 50.00),
(5, 80.00);

SELECT 
    c.client_name,
    SUM(p.amount) AS total_gasto
FROM clients c
JOIN payments p ON c.ID_client = p.ID_client
GROUP BY c.client_name
ORDER BY total_gasto DESC;

SELECT 
	cat AS categoria,
    SUM(total_rentals * rental_price) AS receita_total
FROM 
    films,
    unnest(category) AS cat
GROUP BY 
    cat
ORDER BY 
    receita_total DESC;