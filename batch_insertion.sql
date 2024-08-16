-- -----------------------------------------------------
-- Table `sapataria`.`clientes` -- INSERT
-- -----------------------------------------------------

INSERT INTO `sapataria`.`clientes` (id_cliente, nome, cpf, endereco, cep, email)
VALUES
('1', 'João Silva', '12345678901', 'Rua A, 123', '12345678', 'joao@gmail.com'),
('2', 'Maria Oliveira', '23456789012', 'Rua B, 234', '23456789', 'maria@hotmail.com'),
('3', 'Carlos Souza', '34567890123', 'Rua C, 345', '34567890', 'carlos@yahoo.com'),
('4', 'Ana Pereira', '45678901234', 'Rua D, 456', '45678901', 'ana@gmail.com'),
('5', 'Pedro Santos', '56789012345', 'Rua E, 567', '56789012', 'pedro@hotmail.com'),
('6', 'Fernanda Lima', '67890123456', 'Rua F, 678', '67890123', 'fernanda@gmail.com'),
('7', 'Ricardo Alves', '78901234567', 'Rua G, 789', '78901234', 'ricardo@yahoo.com'),
('8', 'Paula Costa', '89012345678', 'Rua H, 890', '89012345', 'paula@hotmail.com'),
('9', 'Bruno Rocha', '90123456789', 'Rua I, 901', '90123456', 'bruno@gmail.com'),
('10', 'Juliana Mendes', '01234567890', 'Rua J, 012', '01234567', 'juliana@hotmail.com');

-- -----------------------------------------------------
-- Table `sapataria`.`telefones_clientes` -- INSERT
-- -----------------------------------------------------
INSERT INTO `sapataria`.`telefones_clientes` (id_cliente, tipo, numero) 
VALUES 
(1, 'residencial', '1122334455'),
(2, 'celular', '9988776655'),
(3, 'trabalho', '3344556677');
-- -----------------------------------------------------
-- Table `sapataria`.`pedidos` -- INSERT
-- -----------------------------------------------------
INSERT INTO `sapataria`.`pedidos` (id_cliente, endereco, cep, valor_pago)
VALUES
('1', 'Rua A, 123', '12345678', 150.00),
('2', 'Rua B, 234', '23456789', 200.00),
('3', 'Rua C, 345', '34567890', 250.00),
('4', 'Rua D, 456', '45678901', 300.00),
('5', 'Rua E, 567', '56789012', 350.00),
('6', 'Rua F, 678', '67890123', 400.00),
('7', 'Rua G, 789', '78901234', 450.00),
('8', 'Rua H, 890', '89012345', 500.00),
('9', 'Rua I, 901', '90123456', 550.00),
('10', 'Rua J, 012', '01234567', 600.00);

-- -----------------------------------------------------
-- Table `sapataria`.`produtos` -- INSERT
-- -----------------------------------------------------
INSERT INTO `sapataria`.`produtos` (codigo, nome, modelo, fabricante, cor, tamanho)
VALUES
('A1', 'Tênis Esportivo', 'Running', 'Nike', 'Preto', 'M'),
('A2', 'Sapatilha', 'Casual', 'Adidas', 'Branco', 'P'),
('A3', 'Bota', 'Adventure', 'Timberland', 'Vermelho', 'G'),
('A4', 'Chinelo', 'Praia', 'Havaianas', 'Azul', 'M'),
('A5', 'Sapato Social', 'Formal', 'Vulcabras', 'Verde', 'G'),
('A6', 'Sandália', 'Verão', 'Arezzo', 'Rosa', 'M'),
('A7', 'Tênis Casual', 'Street', 'Puma', 'Cinza', 'G'),
('A8', 'Mocassim', 'Confort', 'Dockside', 'Amarelo', 'P'),
('A9', 'Chuteira', 'Futebol', 'Umbro', 'Amarelo', 'M'),
('A10', 'Bota de Cano Longo', 'Inverno', 'Gucci', 'Cinza', 'G');


-- -----------------------------------------------------
-- Table `sapataria`.`ItensPedido` -- INSERT
-- -----------------------------------------------------
INSERT INTO `sapataria`.`ItensPedido` (id_pedido, id_produto, quantidade)
VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 3),
(4, 4, 2),
(5, 5, 1),
(6, 6, 1),
(7, 7, 2),
(8, 8, 3),
(9, 9, 1),
(10, 10, 2);
