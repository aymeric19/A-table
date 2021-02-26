-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 26 fév. 2021 à 16:14
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `restaurant`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`) VALUES
(1),
(2),
(3),
(4);

-- --------------------------------------------------------

--
-- Structure de la table `flasher`
--

CREATE TABLE `flasher` (
  `id_flash` int(10) UNSIGNED NOT NULL,
  `date_flash` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `flasher`
--

INSERT INTO `flasher` (`id_flash`, `date_flash`) VALUES
(1, '2021-02-02 20:24:05'),
(2, '2021-02-04 20:24:05'),
(3, '2021-02-10 20:24:41'),
(4, '2021-02-18 20:24:41');

-- --------------------------------------------------------

--
-- Structure de la table `qrcode`
--

CREATE TABLE `qrcode` (
  `id_QRCode` int(10) UNSIGNED NOT NULL,
  `nom_QRCode` varchar(30) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `qrcode`
--

INSERT INTO `qrcode` (`id_QRCode`, `nom_QRCode`, `url`) VALUES
(1, 'menu1', 'aaze'),
(2, 'menu2', 'bidon'),
(3, 'menu3', 'azzer'),
(4, 'menu4', 'azrtyuio');

-- --------------------------------------------------------

--
-- Structure de la table `smartphone`
--

CREATE TABLE `smartphone` (
  `id_smartphone` int(10) UNSIGNED NOT NULL,
  `marque` varchar(20) NOT NULL,
  `langue` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `smartphone`
--

INSERT INTO `smartphone` (`id_smartphone`, `marque`, `langue`) VALUES
(1, 'apple', 'FR'),
(2, 'Huawei', 'EN'),
(3, 'samsung', 'FR'),
(4, 'nokia', 'EN');

-- --------------------------------------------------------

--
-- Structure de la table `table_resto`
--

CREATE TABLE `table_resto` (
  `id_table` int(10) UNSIGNED NOT NULL,
  `numero_table` int(4) NOT NULL,
  `luminosite` varchar(30) NOT NULL,
  `nbre_de_chaises` int(10) NOT NULL,
  `emplacement` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `table_resto`
--

INSERT INTO `table_resto` (`id_table`, `numero_table`, `luminosite`, `nbre_de_chaises`, `emplacement`) VALUES
(1, 1, 'soleil', 4, 'exterieur'),
(2, 2, 'ombre', 6, 'interieur'),
(3, 3, 'ombre', 5, 'interieur'),
(4, 4, 'soleil', 8, 'exterieur');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `flasher`
--
ALTER TABLE `flasher`
  ADD PRIMARY KEY (`id_flash`);

--
-- Index pour la table `qrcode`
--
ALTER TABLE `qrcode`
  ADD PRIMARY KEY (`id_QRCode`);

--
-- Index pour la table `smartphone`
--
ALTER TABLE `smartphone`
  ADD PRIMARY KEY (`id_smartphone`);

--
-- Index pour la table `table_resto`
--
ALTER TABLE `table_resto`
  ADD PRIMARY KEY (`id_table`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `flasher`
--
ALTER TABLE `flasher`
  MODIFY `id_flash` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `qrcode`
--
ALTER TABLE `qrcode`
  MODIFY `id_QRCode` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `smartphone`
--
ALTER TABLE `smartphone`
  MODIFY `id_smartphone` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `table_resto`
--
ALTER TABLE `table_resto`
  MODIFY `id_table` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
