CREATE TABLE Remetente (
 id_remetente SERIAL PRIMARY KEY,
 nome VARCHAR (100) NOT NULL,
 telefone VARCHAR (20),
 email VARCHAR (100),
 endereco VARCHAR (200)
 );

CREATE TABLE Destinatario (
 id_destinatario SERIAL PRIMARY KEY,
 nome VARCHAR (100) NOT NULL,
 telefone VARCHAR (20),
 email VARCHAR(100),
 endereco VARCHAR (200)
 );
 CREATE TABLE Entregador (
id_entregador SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
cpf VARCHAR (14),
placa_veiculo VARCHAR(10),
tipo_veiculo VARCHAR(50)
);
CREATE TABLE Pacote (
id_pacote SERIAL PRIMARY KEY,
numero_rastreamento VARCHAR(50) UNIQUE NOT NULL,
conteudo VARCHAR(200),
destino VARCHAR (200),
id_remetente INT REFERENCES Remetente(id_remetente),
id_destinatario INT REFERENCES Destinatario (id_destinatario),
id_entregador INT REFERENCES Entregador(id_entregador)
);