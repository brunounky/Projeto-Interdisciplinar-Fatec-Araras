-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Nov-2021 às 00:29
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
  `nome` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `cpf` int(11) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `telefone` varchar(9) NOT NULL,
  `idade` int(2) NOT NULL,
  `peso` float NOT NULL,
  `altura` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `logininicial`
--

INSERT INTO `logininicial` (`id`, `nome`, `email`, `senha`, `cpf`, `endereco`, `telefone`, `idade`, `peso`, `altura`) VALUES
(6, 'Bruno', 'bruno_unky@hotmail.com', 'teste', 0, '', '', 0, 0, 0),
(7, 'Bruno', 'teste@teste.com', 'teste', 0, '', '', 0, 0, 0),
(8, 'teste', 'teste1@teste', 'teste', 0, '', '', 0, 0, 0),
(9, 'bruno', 'bruno_unky@hotmail.com', 'teste', 0, '', '', 0, 0, 0),
(10, 'teste', 'teste@11', 'oi', 0, '', '', 0, 0, 0),
(11, 'testee', 'hh@gf', '67765\'', 0, '', '', 0, 0, 0),
(12, 'testee', 'hh@gf1', '67765\'', 0, '', '', 0, 0, 0),
(13, 'testee', 'hh@gf1ww', '67765\'', 0, '', '', 0, 0, 0),
(14, 'ss', 'ss@ww', 'oi', 0, '', '', 0, 0, 0),
(15, 'ss', 'ss@ww', 'oi', 0, '', '', 0, 0, 0),
(16, 'ss', 'ss@ww', 'oi', 0, '', '', 0, 0, 0),
(17, 'ss', 'ss@ww', 'oi', 0, '', '', 0, 0, 0),
(18, 'ss', 'ss@ww', 'oi', 0, '', '', 0, 0, 0),
(19, 'ss', 'ss@ww', 'oi', 0, '', '', 0, 0, 0),
(20, 'ss', 'ss@ww', 'oi', 0, '', '', 0, 0, 0),
(21, 'errr', 'rr@llo', 'teste', 0, '', '', 0, 0, 0),
(22, 'eee', 'l@e', 'ç', 0, '', '', 0, 0, 0),
(23, 'eee', 'l@e', 'ç', 0, '', '', 0, 0, 0),
(24, 'ss', 'g@ee', 'w', 0, '', '', 0, 0, 0),
(25, 'ss', 'g@ee', 'w', 0, '', '', 0, 0, 0),
(26, 'd', 'd@www', 'w', 0, '', '', 0, 0, 0),
(27, 'd', 'd@www', 'w', 0, '', '', 0, 0, 0),
(28, 'ssss', 'hh@rr', 'hh', 0, '', '', 0, 0, 0),
(29, 'xx', 'xx@ee', 'ee', 0, '', '', 0, 0, 0),
(30, 'eee', 'ee@wqaa', 'a', 0, '', '', 0, 0, 0),
(31, '222', 'ghj@g', 'g', 0, '', '', 0, 0, 0),
(32, '222', 'ghj@g', 'g', 0, '', '', 0, 0, 0),
(33, '222', 'ghj@g', 'g', 0, '', '', 0, 0, 0),
(34, '222', 'ghj@g', 'g', 0, '', '', 0, 0, 0),
(35, 'cançado', 'cancado@uol.com', 'teste', 0, '', '', 0, 0, 0),
(36, 'cançado', 'cancado@uol.com', 'www', 0, '', '', 0, 0, 0),
(37, 'cançado', 'cancado@uol.com', 'www', 0, '', '', 0, 0, 0),
(38, 'teste', 'teste@g', 'ii', 0, '', '', 0, 0, 0),
(39, '55', '55@r', 'rr', 0, '', '', 0, 0, 0),
(40, '55', '55@r', 'ww', 0, '', '', 0, 0, 0),
(41, '55', '55@r', 'w', 0, '', '', 0, 0, 0),
(42, '55', '55@r', 'w', 0, '', '', 0, 0, 0),
(43, 'ww', 'ww@tt', 't', 0, '', '', 0, 0, 0),
(44, 'testte\'', 't@rr', 'r', 0, '', '', 0, 0, 0),
(45, 'testte\'', 't@rr', 'r', 0, '', '', 0, 0, 0),
(46, '22', '22@d', '2d', 0, '', '', 0, 0, 0),
(47, 'eee', 'ee@2', 'ddd', 0, '', '', 0, 0, 0),
(48, 'eee', 'ee@2', 'ddd', 0, '', '', 0, 0, 0),
(49, 'wwww', 'bruno@t', 'tt', 0, '', '', 0, 0, 0),
(50, 'wwww', 'bruno@t', 'tt', 0, '', '', 0, 0, 0),
(51, 'wwww', 'bruno@t', 'tt', 0, '', '', 0, 0, 0),
(52, 'wwww', 'bruno@t', 'tt', 0, '', '', 0, 0, 0),
(53, 'eee', 'ee@gg', 'g', 0, '', '', 0, 0, 0),
(54, 'ff', 'hdedu@enekn', 'e', 0, '', '', 0, 0, 0),
(55, 'd', 'd@d', 'd', 0, '', '', 0, 0, 0),
(56, 'wwww', 'bruno@d', 'bbebeb', 0, '', '', 0, 0, 0),
(57, 'Bru o', 'brunounkystreaming01@gmail.com', 'hshe', 0, '', '', 0, 0, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
