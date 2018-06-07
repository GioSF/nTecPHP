-- phpMyAdmin SQL Dump
-- version 4.4.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 25-Jun-2015 às 11:33
-- Versão do servidor: 5.6.24
-- PHP Version: 5.5.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sistemaNoticias`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE IF NOT EXISTS `noticias` (
  `idNoticia` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `texto` text NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`idNoticia`, `titulo`, `texto`, `imagem`, `idUsuario`) VALUES
(1, 'Teste de Noticia', 'No no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono.\r\nNo no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono.\r\n', 'imagem01.jpg', 1),
(2, 'Outra noticia do Sandro', 'No no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono.No no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono.', 'imagem02.jpg', 1),
(3, 'Noticia do João', 'No no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono.No no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono no non nono.', 'imagem03.jpg', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `login` varchar(10) NOT NULL,
  `senha` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nome`, `login`, `senha`) VALUES
(1, 'Sandro R. Fernandes', 'srf', 'srf'),
(2, 'João da Silva', 'jds', 'jds');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`idNoticia`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idUsuario_2` (`idUsuario`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `idNoticia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
