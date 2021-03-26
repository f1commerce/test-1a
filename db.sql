DROP TABLE IF EXISTS produtos;
CREATE TABLE produtos (
    id INTEGER NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    codigo VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL DEFAULT 0.0,
    PRIMARY KEY (id),
    UNIQUE KEY (codigo)
);

DROP TABLE IF EXISTS campos_adicionais_produtos;
CREATE TABLE campos_adicionais_produtos (
    id_produto INTEGER NOT NULL,
    campo VARCHAR(255) NOT NULL,
    valor VARCHAR(255) NULL,
    PRIMARY KEY (id_produto, campo),
    CONSTRAINT fk_produto FOREIGN KEY (id_produto) REFERENCES produtos (id)
);

DROP TABLE IF EXISTS estoques_produtos;
CREATE TABLE estoques_produtos (
    id_produto INTEGER NOT NULL,
    cod_deposito VARCHAR(255) NOT NULL,
    estoque INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY (id_produto, cod_deposito),
    CONSTRAINT fk_produto_estoque FOREIGN KEY (id_produto) REFERENCES produtos (id)
);

INSERT INTO produtos (id, nome, codigo, preco) VALUES
(1, 'Caneta tinteiro metal', 'CT01', 120.0),
(2, 'Caneta tinteiro plástico', 'CT02', 120.0),
(3, 'Lápis 2B', 'L2B', 5.0),
(4, 'Lápis 2HB', 'L2HB', 5.0),
(5, 'Vaso de vidro transparente', 'V001', 30.0),
(6, 'Balde plástico 8,5L', 'BP001', 20.0),
(7, 'Cabide Versátil Plástico', 'CP001', 10.0),
(8, 'Mouse Optico Gamer Preto', 'MOG001', 640.0),
(9, 'Gerador de Energia Solar - 3,04 KWP', 'GES001', 12000.0),
(10, 'Gabinete ATX Preto Wise Case - Composto', 'GATX001', 498.0);

INSERT INTO campos_adicionais_produtos (id_produto, campo, valor) VALUES
(1, 'Cor da tinta', 'preta'),
(1, 'Material', 'metal'),
(1, 'Espessura da ponta', '0.9mm'),
(1, 'Cor', 'cinza'),
(2, 'Cor da tinta', 'preta'),
(2, 'Material', 'plástico'),
(2, 'Espessura da ponta', '1mm'),
(2, 'Cor', 'branca'),
(3, 'Cor', 'preta'),
(3, 'Número', '2B'),
(3, 'Quantidade embalagem', '3'),
(4, 'Cor', 'preta'),
(4, 'Número', '2HB'),
(4, 'Quantidade embalagem', '4'),
(5, 'Peso', '2kg'),
(5, 'Altura', '30cm'),
(5, 'Largura', '15cm'),
(5, 'Profundidade', '15cm'),
(6, 'Peso', '0,5kg'),
(6, 'Cor', 'azul'),
(6, 'Altura', '40cm'),
(6, 'Largura', '30cm'),
(6, 'Profundidade', '30cm'),
(7, 'Peso', '0,2kg'),
(7, 'Cor', 'preta'),
(7, 'Altura', '10cm'),
(7, 'Largura', '40cm'),
(7, 'Profundidade', '2cm'),
(7, 'Material', 'plástico'),
(8, 'Sensor', '800 - 12.000 DPI'),
(8, 'Altura', '11,6cm'),
(8, 'Largura', '6,2cm'),
(8, 'Profundidade', '3,8cm'),
(8, 'Comprimento do cabo', '2,1m'),
(9, 'Potência', '3kw'),
(9, 'Altura', '100cm'),
(9, 'Largura', '100cm'),
(9, 'Profundidade', '100cm'),
(9, 'Peso', '600kg'),
(10, 'Cooler incluso', 'Não'),
(10, 'Quantidade de baias', '4'),
(10, 'Cor', 'preta'),
(10, 'Coolers suportados', '2'),
(10, 'Altura', '39cm'),
(10, 'Largura', '40cm'),
(10, 'Profundidade', '20cm'),
(10, 'Peso', '5kg');

INSERT INTO estoques_produtos (id_produto, cod_deposito, estoque) VALUES
(1, 'RS1', 120),
(1, 'RS2', 30),
(1, 'RS3', -1),
(2, 'RS1', 300),
(2, 'RS2', 140),
(3, 'RS1', 40),
(3, 'RS2', 22),
(3, 'RS3', 55),
(4, 'RS1', 32),
(4, 'RS2', 56),
(4, 'RS3', 122),
(5, 'RS1', -100),
(5, 'RS2', -20),
(5, 'RS3', 50),
(6, 'RS1', 20),
(6, 'RS2', 0),
(6, 'RS3', 0),
(7, 'RS1', 300),
(8, 'RS1', 10),
(8, 'RS2', 40),
(8, 'RS3', 25),
(9, 'RS1', 1),
(9, 'RS2', 1),
(9, 'RS3', -2),
(10, 'RS1', 0),
(10, 'RS2', 0),
(10, 'RS3', 0);
