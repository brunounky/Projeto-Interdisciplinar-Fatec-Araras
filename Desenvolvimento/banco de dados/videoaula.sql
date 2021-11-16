-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Nov-2021 às 00:44
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `videoaula`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `adm` int(1) NOT NULL DEFAULT 0,
  `token` varchar(32) NOT NULL,
  `confirmado` int(1) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`email`, `senha`, `nome`, `adm`, `token`, `confirmado`, `id`) VALUES
('obbeatriz4@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'tobias', 0, 'HU5ER3L6ZQKJ8EFA', 0, 52),
('obbeatriz4@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'caluzeira', 0, '9TDBRERAQ0V5FE6V', 0, 53),
('obbeatriz4@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'caluzeira', 0, 'LGMQ34091CG0IMW6', 0, 54),
('obbeatriz4@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'caluzeira', 0, 'PFZY8HW2UXQ5DNO5', 0, 55),
('obbeatriz4@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'santos', 0, '7IHIHQ6EAVAWK255', 0, 56),
('obbeatriz4@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'santos', 0, 'A07204Z5A3EQLNRI', 0, 57),
('obbeatriz4@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'santos', 0, 'RL1WK9RU087SDJ4R', 0, 58);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
