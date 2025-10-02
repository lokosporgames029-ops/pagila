CREATE TYPE status_atividade AS ENUM ('Ativo', 'Inativo');

CREATE TABLE clients (

	ID_client SERIAL PRIMARY KEY,
	clients_name VARCHAR(100),
	clients_email VARCHAR(100) UNIQUE,
	data_cadastro DATE NOT NULL,
	atividade status_atividade NOT NULL
	
)

INSERT INTO clients(clients_name,clients_email, data_cadastro, atividade)
	VALUES  
		('Arthur', 'arthur@gmail.com', CURRENT_DATE, 'Ativo'),
    	('Tiago', 'tiaguin@gmail.com', CURRENT_DATE, 'Inativo'),
    	('Manel', 'manelzin_viado@gmail.com', CURRENT_DATE, 'Ativo'),
    	('4', '4@gmail.com', CURRENT_DATE, 'Ativo'),
    	('5', '5@gmail.com', CURRENT_DATE, 'Ativo');

SELECT * FROM clients;

