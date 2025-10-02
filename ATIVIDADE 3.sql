CREATE TABLE requests (

	ID_request SERIAL PRIMARY KEY,
	request_date DATE NOT NULL,
	total_value REAL DEFAULT 0,
	ID_client INT NOT NULL,
	CONSTRAINT FK_client FOREIGN KEY (ID_client) REFERENCES clients (ID_client);
)

INSERT INTO requests (request_date, total_value, ID_client)
	VALUES 
		(CURRENT_DATE, 100, 1),
		(CURRENT_DATE, 222, 2),
		(CURRENT_DATE, 1929, 3)

DELETE FROM requests r
USING clients c
WHERE r.ID_client = c.ID_client
AND c.atividade = 'Inativo'

SELECT * FROM requests