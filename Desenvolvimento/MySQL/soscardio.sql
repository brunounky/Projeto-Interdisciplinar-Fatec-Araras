-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Nov-2021 às 02:49
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `soscardio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `logininicial`
--

CREATE TABLE `logininicial` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `telefone` varchar(9) DEFAULT NULL,
  `idade` int(2) DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `altura` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `logininicial`
--

INSERT INTO `logininicial` (`id`, `nome`, `email`, `senha`, `cpf`, `endereco`, `telefone`, `idade`, `peso`, `altura`) VALUES
(60, 'bruno', 'hh@f', 'h', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'e', 'e@d', 'd', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'teste', 'bruno@e', 'e', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'brbjjkb', 'hh@g', 'g', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `logininicial`
--
ALTER TABLE `logininicial`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `logininicial`
--
ALTER TABLE `logininicial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
