-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Nov-2019 às 04:18
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `newblog`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `curtidas`
--

CREATE TABLE `curtidas` (
  `id` int(11) NOT NULL,
  `idUSU` int(11) DEFAULT NULL,
  `idTexto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `seguidores`
--

CREATE TABLE `seguidores` (
  `id` int(11) NOT NULL,
  `idSeguidor` int(11) DEFAULT NULL,
  `Idseguido` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `seguidores`
--

INSERT INTO `seguidores` (`id`, `idSeguidor`, `Idseguido`) VALUES
(2, NULL, 18),
(3, 15, 18);

-- --------------------------------------------------------

--
-- Estrutura da tabela `texto`
--

CREATE TABLE `texto` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `texto` text DEFAULT NULL,
  `idusua` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `texto`
--

INSERT INTO `texto` (`id`, `titulo`, `texto`, `idusua`) VALUES
(1, 'Ttstst', 'vjfjfvjhfvjf uvufvuf uvyfuvyfu uvyfuvyfu uvfyvufyvuf uvyfuvyuf ufvyufvy ', NULL),
(2, 'Talita', 'Talita', 15),
(3, 'Talita', 'Sai daqui', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `textodesativado`
--

CREATE TABLE `textodesativado` (
  `id` int(11) NOT NULL,
  `idtexto` int(11) DEFAULT NULL,
  `hor` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `descricao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `sobrenome`, `email`, `senha`, `descricao`) VALUES
(14, '', '', '', '', NULL),
(15, 'Eduardo', 'Santos Silva', 'd@d.com', 'talita', NULL),
(16, 'Cara de pau da silva ', NULL, 'l@l.com', 'nedcdecnejncjue', NULL),
(17, 'Cara de pau da silva ', NULL, 'd@d12.com', 'dnndfjnd', NULL),
(18, 'Eduardo', 'Silva', 'email@email.com', 'talita', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `curtidas`
--
ALTER TABLE `curtidas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUSU` (`idUSU`),
  ADD KEY `idTexto` (`idTexto`);

--
-- Índices para tabela `seguidores`
--
ALTER TABLE `seguidores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idSeguidor` (`idSeguidor`),
  ADD KEY `Idseguido` (`Idseguido`);

--
-- Índices para tabela `texto`
--
ALTER TABLE `texto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idusua` (`idusua`);

--
-- Índices para tabela `textodesativado`
--
ALTER TABLE `textodesativado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idtexto` (`idtexto`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `curtidas`
--
ALTER TABLE `curtidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `seguidores`
--
ALTER TABLE `seguidores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `texto`
--
ALTER TABLE `texto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `textodesativado`
--
ALTER TABLE `textodesativado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `curtidas`
--
ALTER TABLE `curtidas`
  ADD CONSTRAINT `curtidas_ibfk_1` FOREIGN KEY (`idUSU`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `curtidas_ibfk_2` FOREIGN KEY (`idTexto`) REFERENCES `texto` (`id`);

--
-- Limitadores para a tabela `seguidores`
--
ALTER TABLE `seguidores`
  ADD CONSTRAINT `seguidores_ibfk_1` FOREIGN KEY (`idSeguidor`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `seguidores_ibfk_2` FOREIGN KEY (`Idseguido`) REFERENCES `usuarios` (`id`);

--
-- Limitadores para a tabela `texto`
--
ALTER TABLE `texto`
  ADD CONSTRAINT `texto_ibfk_1` FOREIGN KEY (`idusua`) REFERENCES `usuarios` (`id`);

--
-- Limitadores para a tabela `textodesativado`
--
ALTER TABLE `textodesativado`
  ADD CONSTRAINT `textodesativado_ibfk_1` FOREIGN KEY (`idtexto`) REFERENCES `texto` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
