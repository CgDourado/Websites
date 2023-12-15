-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/05/2023 às 23:16
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno`
--

CREATE TABLE `aluno` (
  `idaluno` int(11) NOT NULL,
  `nome_aluno` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `ra` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `autor`
--

CREATE TABLE `autor` (
  `idautor` int(11) NOT NULL,
  `nome_autor` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `autor_livro`
--

CREATE TABLE `autor_livro` (
  `idautor_livro` int(11) NOT NULL,
  `autor_idautor` int(11) NOT NULL,
  `livro_idlivro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `editora`
--

CREATE TABLE `editora` (
  `ideditora` int(11) NOT NULL,
  `nome_editora` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `emprestimo_livro`
--

CREATE TABLE `emprestimo_livro` (
  `idemprestimo_livro` int(11) NOT NULL,
  `idexemplar_livro` int(11) NOT NULL,
  `idaluno` int(11) NOT NULL,
  `data_emprestimo` date DEFAULT NULL,
  `data_devolucao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `exemplar_livro`
--

CREATE TABLE `exemplar_livro` (
  `idexemplar_livro` int(11) NOT NULL,
  `idlivro` int(11) NOT NULL,
  `numero_exemplar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `livro`
--

CREATE TABLE `livro` (
  `idlivro` int(11) NOT NULL,
  `ideditora` int(11) NOT NULL,
  `nome_livro` varchar(45) DEFAULT NULL,
  `ano_publicacao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nome_usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nome_usuario`, `senha`) VALUES
(1, 'cida', '8801BCA1D3C9F99E6794578752938FE83C8C1288DC2700D8C04229FA289EAC20');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`idaluno`);

--
-- Índices de tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`idautor`);

--
-- Índices de tabela `autor_livro`
--
ALTER TABLE `autor_livro`
  ADD PRIMARY KEY (`idautor_livro`),
  ADD KEY `fk_autor_has_livro_livro1_idx` (`livro_idlivro`),
  ADD KEY `fk_autor_has_livro_autor1_idx` (`autor_idautor`);

--
-- Índices de tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`ideditora`);

--
-- Índices de tabela `emprestimo_livro`
--
ALTER TABLE `emprestimo_livro`
  ADD PRIMARY KEY (`idemprestimo_livro`),
  ADD KEY `fk_exemplar_livro_has_aluno_aluno1_idx` (`idaluno`),
  ADD KEY `fk_exemplar_livro_has_aluno_exemplar_livro1_idx` (`idexemplar_livro`);

--
-- Índices de tabela `exemplar_livro`
--
ALTER TABLE `exemplar_livro`
  ADD PRIMARY KEY (`idexemplar_livro`),
  ADD KEY `fk_exemplar_livro_livro1_idx` (`idlivro`);

--
-- Índices de tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`idlivro`),
  ADD KEY `fk_livro_editora1_idx` (`ideditora`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `idaluno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `autor`
--
ALTER TABLE `autor`
  MODIFY `idautor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `autor_livro`
--
ALTER TABLE `autor_livro`
  MODIFY `idautor_livro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `editora`
--
ALTER TABLE `editora`
  MODIFY `ideditora` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `emprestimo_livro`
--
ALTER TABLE `emprestimo_livro`
  MODIFY `idemprestimo_livro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `exemplar_livro`
--
ALTER TABLE `exemplar_livro`
  MODIFY `idexemplar_livro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `idlivro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `autor_livro`
--
ALTER TABLE `autor_livro`
  ADD CONSTRAINT `fk_autor_has_livro_autor1` FOREIGN KEY (`autor_idautor`) REFERENCES `autor` (`idautor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_autor_has_livro_livro1` FOREIGN KEY (`livro_idlivro`) REFERENCES `livro` (`idlivro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `emprestimo_livro`
--
ALTER TABLE `emprestimo_livro`
  ADD CONSTRAINT `fk_exemplar_livro_has_aluno_aluno1` FOREIGN KEY (`idaluno`) REFERENCES `aluno` (`idaluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_exemplar_livro_has_aluno_exemplar_livro1` FOREIGN KEY (`idexemplar_livro`) REFERENCES `exemplar_livro` (`idexemplar_livro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `exemplar_livro`
--
ALTER TABLE `exemplar_livro`
  ADD CONSTRAINT `fk_exemplar_livro_livro1` FOREIGN KEY (`idlivro`) REFERENCES `livro` (`idlivro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `fk_livro_editora1` FOREIGN KEY (`ideditora`) REFERENCES `editora` (`ideditora`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
