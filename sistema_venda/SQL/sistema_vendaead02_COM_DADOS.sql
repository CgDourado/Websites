-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Maio-2023 às 21:44
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_vendaead02`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairro`
--

CREATE TABLE `bairro` (
  `idbairro` int(11) NOT NULL,
  `idcidade` int(11) NOT NULL,
  `nome_bairro` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `bairro`
--

INSERT INTO `bairro` (`idbairro`, `idcidade`, `nome_bairro`) VALUES
(1, 1, 'Vila Santa Izabel'),
(2, 2, 'Centro'),
(3, 3, 'Alto Boqueirão'),
(4, 4, 'Bonsucesso'),
(5, 4, 'Madureira'),
(6, 4, 'Ipanema'),
(7, 5, 'Céu Azul'),
(8, 6, 'Vila Ubirajara'),
(9, 7, 'Jardim Londrilar'),
(11, 1, 'Zona 05'),
(12, 1, 'Jardim Leblom');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE `cidade` (
  `idcidade` int(11) NOT NULL,
  `idestado` int(11) NOT NULL,
  `nome_cidade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`idcidade`, `idestado`, `nome_cidade`) VALUES
(1, 1, 'Maringá'),
(2, 2, 'São Paulo'),
(3, 1, 'Curitiba'),
(4, 3, 'Rio de Janeiro'),
(5, 4, 'Belo Horizonte'),
(6, 2, 'Fernandópolis'),
(7, 1, 'Londrina');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nome_cliente` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nome_cliente`) VALUES
(32, 'willian'),
(33, 'carlos'),
(34, 'senai'),
(35, 'Klayton'),
(36, 'Douglas'),
(37, 'Joao'),
(38, 'Allan'),
(39, 'Gabriel'),
(40, 'Sesi'),
(41, 'Sabrina Toller'),
(42, 'Fernando Correia Borges');

-- --------------------------------------------------------

--
-- Estrutura da tabela `conta_receber`
--

CREATE TABLE `conta_receber` (
  `idconta_receber` int(11) NOT NULL,
  `idvenda` int(11) NOT NULL,
  `valor_conta_receber` float NOT NULL,
  `data_vencimento` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `conta_receber`
--

INSERT INTO `conta_receber` (`idconta_receber`, `idvenda`, `valor_conta_receber`, `data_vencimento`, `status`) VALUES
(3, 2, 42500, '2023-01-05', 'ABERTO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `crm`
--

CREATE TABLE `crm` (
  `idcrm` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `texto_crm` text NOT NULL,
  `data_crm` date NOT NULL,
  `titulo_crm` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `dados_clientes_pessoa_fisica`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `dados_clientes_pessoa_fisica` (
`nome_cliente` varchar(255)
,`cpf` varchar(255)
,`rg` varchar(255)
,`data_nascimento` date
,`numero_telefone` varchar(255)
,`endereco_email` varchar(255)
,`logradouro` varchar(255)
,`numero_endereco` varchar(255)
,`nome_bairro` varchar(255)
,`nome_cidade` varchar(255)
,`nome_estado` varchar(255)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `dados_pedido`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `dados_pedido` (
`idpedido` int(11)
,`nome_produto` varchar(255)
,`descricao_produto` varchar(255)
,`preco` float
,`quantidade` int(11)
,`valor_produto_pedido` float
,`data_pedido` date
,`total_itens` int(11)
,`total_pedido` float
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `email`
--

CREATE TABLE `email` (
  `idemail` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `endereco_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `email`
--

INSERT INTO `email` (`idemail`, `idcliente`, `endereco_email`) VALUES
(1, 32, 'williansenai74@gmail.com'),
(2, 39, 'gabriel@gmail.com'),
(3, 36, 'douglas@gmail.com'),
(4, 40, 'sesi@gmail.com'),
(5, 34, 'senai@gmail.com'),
(6, 41, 'sabrina@gmail.com'),
(7, 42, 'fernando@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `idendereco` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idbairro` int(11) NOT NULL,
  `logradouro` varchar(255) NOT NULL,
  `numero_endereco` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`idendereco`, `idcliente`, `idbairro`, `logradouro`, `numero_endereco`) VALUES
(2, 32, 1, 'Avenida Mandacaru', '89'),
(3, 33, 1, 'Avenida Mandacaru', '22'),
(5, 33, 2, 'Galeria Prestes Maia', '212'),
(6, 33, 3, 'Praça Nei Gonçalves de Paula', '234'),
(7, 32, 3, 'Praça Rudolfo Miguel Hansel', '200'),
(8, 37, 4, 'Rua Cardoso de Morais', '456'),
(9, 38, 5, 'Estrada do Portela', '234'),
(10, 36, 6, 'Rua Visconde de Pirajá', '545'),
(11, 35, 7, 'Rua Engenheiro Schnoor', '234'),
(12, 39, 7, 'Rua Engenheiro Schnoor', '345'),
(13, 41, 8, 'Rua 7 de Setembro', '123'),
(14, 42, 9, 'Avenida Duque de Caxias', '234'),
(15, 40, 11, 'Ver. Nelson Abrão', '80'),
(16, 34, 12, 'José Corrêa de Águiar', '361');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE `estado` (
  `idestado` int(11) NOT NULL,
  `nome_estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estado`
--

INSERT INTO `estado` (`idestado`, `nome_estado`) VALUES
(1, 'PR'),
(2, 'SP'),
(3, 'RJ'),
(4, 'MG');

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `estoque`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `estoque` (
`nome_produto` varchar(255)
,`preco` float
,`quantidade_estoque` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque_produto`
--

CREATE TABLE `estoque_produto` (
  `idestoque_produto` int(11) NOT NULL,
  `idproduto` int(11) DEFAULT NULL,
  `quantidade_estoque` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estoque_produto`
--

INSERT INTO `estoque_produto` (`idestoque_produto`, `idproduto`, `quantidade_estoque`) VALUES
(1, 3, 100),
(2, 1, 150),
(3, 2, 249),
(4, 4, 870),
(5, 5, 590),
(6, 6, 325),
(7, 7, 91);

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota_fiscal`
--

CREATE TABLE `nota_fiscal` (
  `idnota_fiscal` int(11) NOT NULL,
  `idvenda` int(11) NOT NULL,
  `numero_nota_fiscal` int(11) NOT NULL,
  `data_emissao` date NOT NULL,
  `data_saida` date NOT NULL,
  `valor_nota_fical` float NOT NULL,
  `total_impostos` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `data_pedido` date NOT NULL,
  `total_pedido` float NOT NULL,
  `total_itens` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`idpedido`, `idcliente`, `data_pedido`, `total_pedido`, `total_itens`) VALUES
(1, 35, '2022-11-24', 42500, 3),
(2, 38, '2022-07-13', 15000, 2),
(3, 40, '2001-11-24', 253000, 3),
(4, 34, '1998-11-09', 310000, 2),
(5, 33, '2018-12-06', 9990, 3),
(6, 33, '2015-12-08', 19680, 2),
(7, 38, '2022-12-07', 5000, 1),
(8, 38, '2022-12-07', 5000, 1);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `pedidos`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `pedidos` (
`nome_cliente` varchar(255)
,`idpedido` int(11)
,`data_pedido` date
,`total_pedido` float
,`total_itens` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `pedidos_carlos`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `pedidos_carlos` (
`nome_cliente` varchar(255)
,`data_pedido` date
,`total_pedido` float
,`total_itens` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `pedidos_clientes`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `pedidos_clientes` (
`idpedido` int(11)
,`nome_cliente` varchar(255)
,`endereco_email` varchar(255)
,`numero_telefone` varchar(255)
,`nome_produto` varchar(255)
,`preco_unitario_produto` float
,`data_pedido` date
,`total_de_itens` int(11)
,`total_do_pedido` float
,`quantidade_do_item` int(11)
,`total_do_produto` float
,`quantidade_estoque` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa_fisica`
--

CREATE TABLE `pessoa_fisica` (
  `idpessoa_fisica` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `rg` varchar(255) NOT NULL,
  `data_nascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pessoa_fisica`
--

INSERT INTO `pessoa_fisica` (`idpessoa_fisica`, `idcliente`, `cpf`, `rg`, `data_nascimento`) VALUES
(1, 32, '23', '3123', '1987-02-12'),
(2, 33, '423423432', '23423', '2001-10-10'),
(3, 35, '789787987987', '7897987', '2009-10-10'),
(4, 36, '35345345', '1323123', '2003-08-15'),
(5, 37, '534545', '4234234', '2001-06-19'),
(6, 38, '5345345', '432423', '2003-03-29'),
(7, 39, '4234234', '4234234', '2001-12-10'),
(8, 41, '5345345', '4234234', '2003-01-10'),
(9, 42, '42343', '423423', '2001-10-10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa_juridica`
--

CREATE TABLE `pessoa_juridica` (
  `idpessoa_juridica` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `cnpj` varchar(255) NOT NULL,
  `razao_social` varchar(255) NOT NULL,
  `inscricao_estadual` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pessoa_juridica`
--

INSERT INTO `pessoa_juridica` (`idpessoa_juridica`, `idcliente`, `cnpj`, `razao_social`, `inscricao_estadual`) VALUES
(1, 34, '3123', 'senai 2022', '312312321'),
(2, 40, ' 03.779.133/0001-04', 'SERVICO SOCIAL DA INDUSTRIA ', '424234');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idproduto` int(11) NOT NULL,
  `nome_produto` varchar(255) NOT NULL,
  `descricao_produto` varchar(255) NOT NULL,
  `preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idproduto`, `nome_produto`, `descricao_produto`, `preco`) VALUES
(1, 'TV TCL', '80 Polegadas 4K', 8500),
(2, 'Computador i7', '32GB de Ram ', 4500),
(3, 'Mesa para Computador', '90 Centimetros', 750),
(4, 'Teclado ', 'Teclado Gamer', 250),
(5, 'Mouse gamer', 'Mouse gamer', 280),
(6, 'Monitor ', 'Monitor Curvo para Games', 1360),
(7, 'placa de video ', 'gtx 1080', 1900);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_pedido`
--

CREATE TABLE `produto_pedido` (
  `idproduto_pedido` int(11) NOT NULL,
  `idproduto` int(11) NOT NULL,
  `idpedido` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor_produto_pedido` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto_pedido`
--

INSERT INTO `produto_pedido` (`idproduto_pedido`, `idproduto`, `idpedido`, `quantidade`, `valor_produto_pedido`) VALUES
(1, 1, 1, 2, 17000),
(2, 3, 1, 4, 3000),
(3, 2, 1, 5, 22500),
(4, 2, 2, 3, 13500),
(5, 3, 2, 2, 1500),
(6, 3, 3, 30, 22500),
(7, 1, 3, 25, 212500),
(8, 2, 3, 4, 18000),
(9, 2, 4, 50, 225000),
(10, 1, 4, 10, 85000),
(11, 7, 5, 2, 3800),
(12, 4, 5, 3, 750),
(13, 6, 5, 4, 5440),
(14, 5, 6, 6, 1680),
(15, 2, 6, 4, 18000),
(20, 2, 8, 1, 4500);

--
-- Acionadores `produto_pedido`
--
DELIMITER $$
CREATE TRIGGER `TR_CONTROLA_ESTOQUE_PRODUTO` AFTER INSERT ON `produto_pedido` FOR EACH ROW UPDATE ESTOQUE_PRODUTO 
SET QUANTIDADE_ESTOQUE = QUANTIDADE_ESTOQUE 
- NEW.QUANTIDADE
WHERE IDPRODUTO = NEW.IDPRODUTO
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE `telefone` (
  `idtelefone` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `numero_telefone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `telefone`
--

INSERT INTO `telefone` (`idtelefone`, `idcliente`, `numero_telefone`) VALUES
(2, 32, '44997338983'),
(3, 33, '4234234234'),
(4, 35, '4234234234'),
(5, 36, '534645654'),
(6, 37, '53453454'),
(7, 34, '4324234234'),
(8, 40, '42342343'),
(9, 41, '4498982525'),
(10, 42, '4234234');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nome_usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nome_usuario`, `senha`) VALUES
(1, 'will', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `idvenda` int(11) NOT NULL,
  `idpedido` int(11) NOT NULL,
  `data_venda` date NOT NULL,
  `valor_venda` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`idvenda`, `idpedido`, `data_venda`, `valor_venda`) VALUES
(2, 1, '2022-12-06', 42500);

--
-- Acionadores `venda`
--
DELIMITER $$
CREATE TRIGGER `TR_INSERE_CONTAS_RECEBER` AFTER INSERT ON `venda` FOR EACH ROW INSERT INTO CONTA_RECEBER 
(IDVENDA, VALOR_CONTA_RECEBER, DATA_VENCIMENTO, STATUS)
VALUES 
(NEW.IDVENDA, NEW.VALOR_VENDA, NOW() + INTERVAL 30 DAY,
"ABERTO")
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para vista `dados_clientes_pessoa_fisica`
--
DROP TABLE IF EXISTS `dados_clientes_pessoa_fisica`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dados_clientes_pessoa_fisica`  AS SELECT `c`.`nome_cliente` AS `nome_cliente`, `pf`.`cpf` AS `cpf`, `pf`.`rg` AS `rg`, `pf`.`data_nascimento` AS `data_nascimento`, `t`.`numero_telefone` AS `numero_telefone`, `em`.`endereco_email` AS `endereco_email`, `ed`.`logradouro` AS `logradouro`, `ed`.`numero_endereco` AS `numero_endereco`, `b`.`nome_bairro` AS `nome_bairro`, `ci`.`nome_cidade` AS `nome_cidade`, `es`.`nome_estado` AS `nome_estado` FROM (((((((`cliente` `c` join `pessoa_fisica` `pf` on(`c`.`idcliente` = `pf`.`idcliente`)) left join `telefone` `t` on(`c`.`idcliente` = `t`.`idcliente`)) left join `email` `em` on(`c`.`idcliente` = `em`.`idcliente`)) left join `endereco` `ed` on(`c`.`idcliente` = `ed`.`idcliente`)) join `bairro` `b` on(`ed`.`idbairro` = `b`.`idbairro`)) join `cidade` `ci` on(`b`.`idcidade` = `ci`.`idcidade`)) join `estado` `es` on(`ci`.`idestado` = `es`.`idestado`))  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `dados_pedido`
--
DROP TABLE IF EXISTS `dados_pedido`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dados_pedido`  AS SELECT `ped`.`idpedido` AS `idpedido`, `p`.`nome_produto` AS `nome_produto`, `p`.`descricao_produto` AS `descricao_produto`, `p`.`preco` AS `preco`, `pp`.`quantidade` AS `quantidade`, `pp`.`valor_produto_pedido` AS `valor_produto_pedido`, `ped`.`data_pedido` AS `data_pedido`, `ped`.`total_itens` AS `total_itens`, `ped`.`total_pedido` AS `total_pedido` FROM ((`produto` `p` join `produto_pedido` `pp` on(`p`.`idproduto` = `pp`.`idproduto`)) join `pedido` `ped` on(`pp`.`idpedido` = `ped`.`idpedido`))  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `estoque`
--
DROP TABLE IF EXISTS `estoque`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `estoque`  AS SELECT `p`.`nome_produto` AS `nome_produto`, `p`.`preco` AS `preco`, `es`.`quantidade_estoque` AS `quantidade_estoque` FROM (`produto` `p` join `estoque_produto` `es` on(`p`.`idproduto` = `es`.`idproduto`))  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `pedidos`
--
DROP TABLE IF EXISTS `pedidos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pedidos`  AS SELECT `c`.`nome_cliente` AS `nome_cliente`, `ped`.`idpedido` AS `idpedido`, `ped`.`data_pedido` AS `data_pedido`, `ped`.`total_pedido` AS `total_pedido`, `ped`.`total_itens` AS `total_itens` FROM (`pedido` `ped` join `cliente` `c` on(`ped`.`idcliente` = `c`.`idcliente`))  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `pedidos_carlos`
--
DROP TABLE IF EXISTS `pedidos_carlos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pedidos_carlos`  AS SELECT `c`.`nome_cliente` AS `nome_cliente`, `ped`.`data_pedido` AS `data_pedido`, `ped`.`total_pedido` AS `total_pedido`, `ped`.`total_itens` AS `total_itens` FROM (`pedido` `ped` join `cliente` `c` on(`ped`.`idcliente` = `c`.`idcliente`)) WHERE `c`.`idcliente` = 3333  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `pedidos_clientes`
--
DROP TABLE IF EXISTS `pedidos_clientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pedidos_clientes`  AS SELECT `ped`.`idpedido` AS `idpedido`, `c`.`nome_cliente` AS `nome_cliente`, `em`.`endereco_email` AS `endereco_email`, `t`.`numero_telefone` AS `numero_telefone`, `p`.`nome_produto` AS `nome_produto`, `p`.`preco` AS `preco_unitario_produto`, `ped`.`data_pedido` AS `data_pedido`, `ped`.`total_itens` AS `total_de_itens`, `ped`.`total_pedido` AS `total_do_pedido`, `pp`.`quantidade` AS `quantidade_do_item`, `pp`.`valor_produto_pedido` AS `total_do_produto`, `es`.`quantidade_estoque` AS `quantidade_estoque` FROM ((((((`pedido` `ped` join `produto_pedido` `pp` on(`ped`.`idpedido` = `pp`.`idpedido`)) join `produto` `p` on(`pp`.`idproduto` = `p`.`idproduto`)) join `estoque_produto` `es` on(`p`.`idproduto` = `es`.`idproduto`)) join `cliente` `c` on(`ped`.`idcliente` = `c`.`idcliente`)) left join `email` `em` on(`c`.`idcliente` = `em`.`idcliente`)) left join `telefone` `t` on(`c`.`idcliente` = `t`.`idcliente`)) ORDER BY `ped`.`idpedido` ASC  ;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bairro`
--
ALTER TABLE `bairro`
  ADD PRIMARY KEY (`idbairro`),
  ADD KEY `fk_bairro_cidade1_idx` (`idcidade`);

--
-- Índices para tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`idcidade`),
  ADD KEY `fk_cidade_estado1_idx` (`idestado`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Índices para tabela `conta_receber`
--
ALTER TABLE `conta_receber`
  ADD PRIMARY KEY (`idconta_receber`),
  ADD KEY `fk_conta_receber_venda1_idx` (`idvenda`);

--
-- Índices para tabela `crm`
--
ALTER TABLE `crm`
  ADD PRIMARY KEY (`idcrm`),
  ADD KEY `fk_crm_cliente1_idx` (`idcliente`);

--
-- Índices para tabela `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`idemail`),
  ADD KEY `fk_email_cliente1_idx` (`idcliente`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idendereco`),
  ADD KEY `fk_endereco_cliente1_idx` (`idcliente`),
  ADD KEY `fk_endereco_bairro1_idx` (`idbairro`);

--
-- Índices para tabela `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`idestado`);

--
-- Índices para tabela `estoque_produto`
--
ALTER TABLE `estoque_produto`
  ADD PRIMARY KEY (`idestoque_produto`),
  ADD KEY `fk_estoque_produto_produto1_idx` (`idproduto`);

--
-- Índices para tabela `nota_fiscal`
--
ALTER TABLE `nota_fiscal`
  ADD PRIMARY KEY (`idnota_fiscal`),
  ADD KEY `fk_nota_fiscal_venda1_idx` (`idvenda`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `fk_pedido_cliente1_idx` (`idcliente`);

--
-- Índices para tabela `pessoa_fisica`
--
ALTER TABLE `pessoa_fisica`
  ADD PRIMARY KEY (`idpessoa_fisica`),
  ADD KEY `fk_pessoa_fisica_cliente_idx` (`idcliente`);

--
-- Índices para tabela `pessoa_juridica`
--
ALTER TABLE `pessoa_juridica`
  ADD PRIMARY KEY (`idpessoa_juridica`),
  ADD KEY `fk_pessoa_juridica_cliente1_idx` (`idcliente`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idproduto`);

--
-- Índices para tabela `produto_pedido`
--
ALTER TABLE `produto_pedido`
  ADD PRIMARY KEY (`idproduto_pedido`),
  ADD KEY `fk_produto_has_pedido_pedido1_idx` (`idpedido`),
  ADD KEY `fk_produto_has_pedido_produto1_idx` (`idproduto`);

--
-- Índices para tabela `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`idtelefone`),
  ADD KEY `fk_telefone_cliente1_idx` (`idcliente`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`idvenda`),
  ADD KEY `fk_venda_pedido1_idx` (`idpedido`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bairro`
--
ALTER TABLE `bairro`
  MODIFY `idbairro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `cidade`
--
ALTER TABLE `cidade`
  MODIFY `idcidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `conta_receber`
--
ALTER TABLE `conta_receber`
  MODIFY `idconta_receber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `crm`
--
ALTER TABLE `crm`
  MODIFY `idcrm` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `email`
--
ALTER TABLE `email`
  MODIFY `idemail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idendereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `estado`
--
ALTER TABLE `estado`
  MODIFY `idestado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `estoque_produto`
--
ALTER TABLE `estoque_produto`
  MODIFY `idestoque_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `nota_fiscal`
--
ALTER TABLE `nota_fiscal`
  MODIFY `idnota_fiscal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `pessoa_fisica`
--
ALTER TABLE `pessoa_fisica`
  MODIFY `idpessoa_fisica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `pessoa_juridica`
--
ALTER TABLE `pessoa_juridica`
  MODIFY `idpessoa_juridica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `produto_pedido`
--
ALTER TABLE `produto_pedido`
  MODIFY `idproduto_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `telefone`
--
ALTER TABLE `telefone`
  MODIFY `idtelefone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `idvenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `bairro`
--
ALTER TABLE `bairro`
  ADD CONSTRAINT `fk_bairro_cidade1` FOREIGN KEY (`idcidade`) REFERENCES `cidade` (`idcidade`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `cidade`
--
ALTER TABLE `cidade`
  ADD CONSTRAINT `fk_cidade_estado1` FOREIGN KEY (`idestado`) REFERENCES `estado` (`idestado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `conta_receber`
--
ALTER TABLE `conta_receber`
  ADD CONSTRAINT `fk_conta_receber_venda1` FOREIGN KEY (`idvenda`) REFERENCES `venda` (`idvenda`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `crm`
--
ALTER TABLE `crm`
  ADD CONSTRAINT `fk_crm_cliente1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `email`
--
ALTER TABLE `email`
  ADD CONSTRAINT `fk_email_cliente1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `fk_endereco_bairro1` FOREIGN KEY (`idbairro`) REFERENCES `bairro` (`idbairro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_endereco_cliente1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `estoque_produto`
--
ALTER TABLE `estoque_produto`
  ADD CONSTRAINT `fk_estoque_produto_produto1` FOREIGN KEY (`idproduto`) REFERENCES `produto` (`idproduto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `nota_fiscal`
--
ALTER TABLE `nota_fiscal`
  ADD CONSTRAINT `fk_nota_fiscal_venda1` FOREIGN KEY (`idvenda`) REFERENCES `venda` (`idvenda`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_pedido_cliente1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pessoa_fisica`
--
ALTER TABLE `pessoa_fisica`
  ADD CONSTRAINT `fk_pessoa_fisica_cliente` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pessoa_juridica`
--
ALTER TABLE `pessoa_juridica`
  ADD CONSTRAINT `fk_pessoa_juridica_cliente1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `produto_pedido`
--
ALTER TABLE `produto_pedido`
  ADD CONSTRAINT `fk_produto_has_pedido_pedido1` FOREIGN KEY (`idpedido`) REFERENCES `pedido` (`idpedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_produto_has_pedido_produto1` FOREIGN KEY (`idproduto`) REFERENCES `produto` (`idproduto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `telefone`
--
ALTER TABLE `telefone`
  ADD CONSTRAINT `fk_telefone_cliente1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `fk_venda_pedido1` FOREIGN KEY (`idpedido`) REFERENCES `pedido` (`idpedido`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
