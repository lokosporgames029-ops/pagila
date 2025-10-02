INSERT INTO Remetente (nome, telefone, email, endereco)
VALUES 
('Maria Souza', '99999-0000', 'maria@email.com', 'Rua A, 123'),
('Pedro Costa', '98888-2222', 'pedro@email.com', 'Rua B, 456');

INSERT INTO Destinatario (nome, telefone, email, endereco)
VALUES 
('João Silva', '98888-1111', 'joao@email.com', 'Av. C, 789'),
('Ana Lima', '97777-3333', 'ana@email.com', 'Rua D, 321');

INSERT INTO Entregador (nome, cpf, placa_veiculo, tipo_veiculo)
VALUES 
('Carlos Lima', '123.456.789-00', 'ABC1234', 'Moto'),
('Fernanda Rocha', '987.654.321-00', 'XYZ9876', 'Carro');

INSERT INTO Pacote (numero_rastreamento, conteudo, destino, id_remetente, id_destinatario, id_entregador)
VALUES
('R123456789BR', 'Caixa de livros', 'Av. C, 789', 1, 1, 1),
('R987654321BR', 'Eletrônicos', 'Rua D, 321', 2, 2, 2);