-- Table: Cliente
INSERT INTO Cliente (ClienteId, Nome, Email) VALUES (1, 'José Silva', 'jose.silva@email.com');
INSERT INTO Cliente (ClienteId, Nome, Email) VALUES (2, 'Maria dos Santos', 'maria.santos@email.com');
INSERT INTO Cliente (ClienteId, Nome, Email) VALUES (3, 'Magno Santos', 'magnosjc22@gmail.com');
INSERT INTO Cliente (ClienteId, Nome, Email) VALUES (4, 'Melissa Nunes', 'melissa.nunes@gmail.com');

-- Table: DescricaoStatus
INSERT INTO DescricaoStatus (StatusEntregaId, Descricao) VALUES (1, 'PROCESSANDO PAGAMENTO');
INSERT INTO DescricaoStatus (StatusEntregaId, Descricao) VALUES (2, 'EM SEPARAÇÃO');
INSERT INTO DescricaoStatus (StatusEntregaId, Descricao) VALUES (3, 'AGUARDANDO EXPEDIÇÃO');
INSERT INTO DescricaoStatus (StatusEntregaId, Descricao) VALUES (4, 'EM TRANSPORTE');
INSERT INTO DescricaoStatus (StatusEntregaId, Descricao) VALUES (5, 'ENTREGUE');
INSERT INTO DescricaoStatus (StatusEntregaId, Descricao) VALUES (6, 'DEVOLVIDO');
INSERT INTO DescricaoStatus (StatusEntregaId, Descricao) VALUES (7, 'CANCELADO');

-- Table: Pedido
INSERT INTO Pedido (PedidoId, ClienteId, DataPedido) VALUES (2, 3, '2023-03-28');

-- Table: Produto
INSERT INTO Produto (ProdutoId, Codigo, Descricao) VALUES (41, 'C001', 'TELEVISÃO');
INSERT INTO Produto (ProdutoId, Codigo, Descricao) VALUES (42, 'C002', 'BICICLETA');
INSERT INTO Produto (ProdutoId, Codigo, Descricao) VALUES (43, 'C003', 'NOTEBOOK');
INSERT INTO Produto (ProdutoId, Codigo, Descricao) VALUES (44, 'C004', 'MESA DE MADEIRA');
INSERT INTO Produto (ProdutoId, Codigo, Descricao) VALUES (45, 'C005', 'MESA DE PEDRA');
INSERT INTO Produto (ProdutoId, Codigo, Descricao) VALUES (46, 'C006', 'CADEIRA DE MADEIRA');
INSERT INTO Produto (ProdutoId, Codigo, Descricao) VALUES (47, 'C007', 'PAINEL DE TV');
INSERT INTO Produto (ProdutoId, Codigo, Descricao) VALUES (48, 'C008', 'CHROMECAST');
INSERT INTO Produto (ProdutoId, Codigo, Descricao) VALUES (49, 'C009', 'AMAZON FIRE STICK');
INSERT INTO Produto (ProdutoId, Codigo, Descricao) VALUES (50, 'C010', 'SKATE');

-- Table: ProdutoPedido
INSERT INTO ProdutoPedido (ProdutoPedidoId, PedidoId, ProdutoId, Quantidade) VALUES (1, 2, 48, 2);

-- Table: StatusPedido
INSERT INTO StatusPedido (StatusPedidoId, PedidoId, StatusEntregaId) VALUES (1, 2, 4);
