

DROP TABLE IF EXISTS Cliente;
CREATE TABLE Cliente (
    ClienteId INTEGER       PRIMARY KEY AUTOINCREMENT 
							NOT NULL,
    Nome      VARCHAR (200) NOT NULL,
    Email     VARCHAR (100) 
);


DROP TABLE IF EXISTS Produto;
CREATE TABLE Produto (
    ProdutoId INTEGER       PRIMARY KEY AUTOINCREMENT
                            NOT NULL,
    Codigo    VARCHAR (20)  NOT NULL,
    Descricao VARCHAR (100) NOT NULL
);


DROP TABLE IF EXISTS Pedido;
CREATE TABLE Pedido (
    PedidoId   INTEGER PRIMARY KEY AUTOINCREMENT
                       NOT NULL,
    ClienteId  INTEGER CONSTRAINT FK_Pedido_Cliente REFERENCES Cliente (ClienteId) 
                       NOT NULL,
    DataPedido DATE    NOT NULL
                       DEFAULT (date() ) 
);


DROP TABLE IF EXISTS DescricaoStatus;
CREATE TABLE DescricaoStatus (
    StatusEntregaId INTEGER      PRIMARY KEY AUTOINCREMENT
                                 NOT NULL,
    Descricao       VARCHAR (60) NOT NULL
);


DROP TABLE IF EXISTS ProdutoPedido;
CREATE TABLE ProdutoPedido (
    ProdutoPedidoId INTEGER PRIMARY KEY AUTOINCREMENT
                            NOT NULL,
    PedidoId        INTEGER CONSTRAINT FK_ProdutoPedido_Pedido REFERENCES Pedido (PedidoId) 
                            NOT NULL,
    ProdutoId       INTEGER CONSTRAINT FK_ProdutoPedido_Produto REFERENCES Produto (ProdutoId) 
                            NOT NULL,
    Quantidade      INTEGER NOT NULL
);


DROP TABLE IF EXISTS StatusPedido;
CREATE TABLE StatusPedido (
    StatusPedidoId  INTEGER PRIMARY KEY AUTOINCREMENT
                            NOT NULL,
    PedidoId        INTEGER CONSTRAINT FK_StatusPedido_Pedido REFERENCES Pedido (PedidoId) 
                            NOT NULL,
    StatusEntregaId INTEGER CONSTRAINT FK_StatusPedido_DescricaoStatus REFERENCES DescricaoStatus (StatusEntregaId) 
                            NOT NULL
);