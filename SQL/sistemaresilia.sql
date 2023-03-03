-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Mar-2023 às 12:31
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
-- Banco de dados: `sistemaresilia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `matricula` int(11) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `genero` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cod_cursos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`matricula`, `cpf`, `nome`, `data_nascimento`, `genero`, `email`, `cod_cursos`) VALUES
(1, '167.345.456-78', 'Pietro Rodrigues da Silva', '1991-05-20', 'Masculino', 'pietrorodrigues@gmail.com', 1),
(2, '165.457.487-89', 'Ana Carolina de Jesus', '1995-09-01', 'Feminino', 'anacarolinajesus@gmail.com', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `cod_cursos` int(11) NOT NULL,
  `nome_curso` varchar(70) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `duracao` varchar(30) NOT NULL,
  `modo_ensino` varchar(20) NOT NULL,
  `cod_instituicao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`cod_cursos`, `nome_curso`, `descricao`, `duracao`, `modo_ensino`, `cod_instituicao`) VALUES
(1, 'Desenvolvimento Web Full Stack', 'Nas hard skills trabalhamos as principais linguagens de programação para entrada no mercado como Dev Jr., com muitos projetos mão na massa e criação de portfólio do ZERO. Além disso, ensinamos a caprichar nas soft skills, competências comportamentais mais valorizadas pelo mercado.', '6 meses', 'Presencial', 1),
(2, 'Programação em Python', 'Torne-se um Programador full stack (front-end + back-end) aprendendo a desenvolver desde a base da lógica de programação até a capacidade de programar aplicações web utilizando a linguagem Python.', '3 meses e 17 dias', 'Remoto', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `facilitador`
--

CREATE TABLE `facilitador` (
  `cod_facilitador` int(11) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `genero` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `formacao` varchar(70) NOT NULL,
  `cod_cursos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `facilitador`
--

INSERT INTO `facilitador` (`cod_facilitador`, `cpf`, `nome`, `genero`, `email`, `formacao`, `cod_cursos`) VALUES
(1, '168.467.567-69', 'Luís Carlos Ferreira', 'Masculino', 'luiscarlos@gmail.com', 'Engenheiro da Computação', 1),
(2, '165.477.448-21', 'Maria dos Anjos Santos', 'Feminino', 'mariaanjos@gmail.com', 'Engenheira de Software', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `facilitador_turmas`
--

CREATE TABLE `facilitador_turmas` (
  `cod_facilitador` int(11) DEFAULT NULL,
  `cod_turmas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `facilitador_turmas`
--

INSERT INTO `facilitador_turmas` (`cod_facilitador`, `cod_turmas`) VALUES
(1, 2),
(2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `instituicao`
--

CREATE TABLE `instituicao` (
  `cod_instituicao` int(11) NOT NULL,
  `cnpj` varchar(35) NOT NULL,
  `razao_social` varchar(80) NOT NULL,
  `endereco` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `instituicao`
--

INSERT INTO `instituicao` (`cod_instituicao`, `cnpj`, `razao_social`, `endereco`) VALUES
(1, '03.672.347/0009-26', 'SERVICO NACIONAL DE APRENDIZAGEM COMERCIAL - SENAC ARRJ', 'R BARCELOS DOMINGOS, 58\nBairro CAMPO GRANDE\nCidade Rio de Janeiro\nCEP 23.080-020'),
(2, '03.672.347/0029-70', 'SERVICO NACIONAL DE APRENDIZAGEM COMERCIAL - SENAC ARRJ', 'R EWBANK DA CAMARA, 91\nBairro MADUREIRA\nCidade Rio de Janeiro\nCEP 21.310-150');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turmas`
--

CREATE TABLE `turmas` (
  `cod_turmas` int(11) NOT NULL,
  `num_turma` varchar(15) NOT NULL,
  `sala` varchar(20) NOT NULL,
  `periodo` varchar(10) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_termino` date NOT NULL,
  `cod_cursos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turmas`
--

INSERT INTO `turmas` (`cod_turmas`, `num_turma`, `sala`, `periodo`, `data_inicio`, `data_termino`, `cod_cursos`) VALUES
(1, 'T7', '110', 'Manhã', '2022-10-10', '2023-03-31', 1),
(2, 'T2', 'Remoto', 'Tarde', '2022-08-01', '2022-11-30', 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`matricula`),
  ADD KEY `cursam` (`cod_cursos`);

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`cod_cursos`),
  ADD KEY `disponibiliza` (`cod_instituicao`);

--
-- Índices para tabela `facilitador`
--
ALTER TABLE `facilitador`
  ADD PRIMARY KEY (`cod_facilitador`),
  ADD KEY `possuem` (`cod_cursos`);

--
-- Índices para tabela `facilitador_turmas`
--
ALTER TABLE `facilitador_turmas`
  ADD KEY `facilitador_turmas` (`cod_facilitador`),
  ADD KEY `turmas_facilitador` (`cod_turmas`);

--
-- Índices para tabela `instituicao`
--
ALTER TABLE `instituicao`
  ADD PRIMARY KEY (`cod_instituicao`);

--
-- Índices para tabela `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`cod_turmas`),
  ADD KEY `tem` (`cod_cursos`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `cod_cursos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `facilitador`
--
ALTER TABLE `facilitador`
  MODIFY `cod_facilitador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `instituicao`
--
ALTER TABLE `instituicao`
  MODIFY `cod_instituicao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `turmas`
--
ALTER TABLE `turmas`
  MODIFY `cod_turmas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `cursam` FOREIGN KEY (`cod_cursos`) REFERENCES `cursos` (`cod_cursos`);

--
-- Limitadores para a tabela `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `disponibiliza` FOREIGN KEY (`cod_instituicao`) REFERENCES `instituicao` (`cod_instituicao`);

--
-- Limitadores para a tabela `facilitador`
--
ALTER TABLE `facilitador`
  ADD CONSTRAINT `possuem` FOREIGN KEY (`cod_cursos`) REFERENCES `cursos` (`cod_cursos`);

--
-- Limitadores para a tabela `facilitador_turmas`
--
ALTER TABLE `facilitador_turmas`
  ADD CONSTRAINT `facilitador_turmas` FOREIGN KEY (`cod_facilitador`) REFERENCES `facilitador` (`cod_facilitador`),
  ADD CONSTRAINT `turmas_facilitador` FOREIGN KEY (`cod_turmas`) REFERENCES `turmas` (`cod_turmas`);

--
-- Limitadores para a tabela `turmas`
--
ALTER TABLE `turmas`
  ADD CONSTRAINT `tem` FOREIGN KEY (`cod_cursos`) REFERENCES `cursos` (`cod_cursos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
