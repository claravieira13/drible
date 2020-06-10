-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10-Jun-2020 às 10:41
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `drible`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `nome`, `email`, `password`) VALUES
(41, 'teste', 'adm@gmail.com', '123456'),
(45, 'Ana Clara Torres Vieira', 'anaclaravieira10@hotmail.com', '123456');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL DEFAULT '',
  `descricao` varchar(255) NOT NULL DEFAULT '',
  `valor` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `valor`) VALUES
(1, 'PORTATIL ASUS F512DA-R5AV8SB1', 'AMD Ryzen 5 3500U 2.1 GHz ( Ate: 3.7 GHz )12 GB1 TB + 256 GB SSDAMD Radeon Vega 8', 599.9),
(18, 'LED ELECTRONIA LD 32 APO VII SM W', '1366 x 768 81 cm LED HD Smart OPERA', 139),
(19, 'ASPIRADOR ROBOT ROWENTA RR6925', 'Sensor Anti-queda', 179);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payment_method` enum('stripe') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'stripe',
  `stripe_subscription_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_customer_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_plan_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `plan_amount` float(10,2) NOT NULL,
  `plan_amount_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `plan_interval` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `plan_interval_count` tinyint(2) NOT NULL,
  `payer_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `plan_period_start` datetime NOT NULL,
  `plan_period_end` datetime NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
