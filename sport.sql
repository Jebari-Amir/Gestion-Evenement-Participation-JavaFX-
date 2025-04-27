-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 27 avr. 2025 à 07:41
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sport`
--

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE `evenement` (
  `id` int(11) NOT NULL,
  `nomEvenement` varchar(255) NOT NULL,
  `typeEvenement` varchar(255) NOT NULL,
  `dateEvenement` datetime NOT NULL,
  `localisation` varchar(255) NOT NULL,
  `prix` double NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `evenement`
--

INSERT INTO `evenement` (`id`, `nomEvenement`, `typeEvenement`, `dateEvenement`, `localisation`, `prix`, `image`) VALUES
(1, 'match koora', 'foot', '2025-04-30 00:00:00', 'hamamet', 20, 'C:\\Users\\Amirov\\Downloads\\cscc.png'),
(2, 'basket match', 'basket ball', '2025-04-28 00:00:00', 'Tunis', 12, 'C:\\Users\\Amirov\\Downloads\\aaaa.png'),
(3, 'hfdqsbbhfqd', 'jhfdbsqjhfdsq', '2025-05-02 00:00:00', 'tunis', 23, 'C:\\Users\\Amirov\\Downloads\\adidas.png'),
(4, 'vwdsfgds', 'hsfdgbhvsfdj', '2025-04-26 00:00:00', 'fqgsgf', 213, 'C:\\Users\\Amirov\\Downloads\\aa.png'),
(7, 'kooraaaaa', 'Foot salle', '2025-04-29 00:00:00', 'Nabeul', 20, 'C:\\Users\\Amirov\\Downloads\\aaa.png'),
(8, 'HandTunisie', 'Handball', '2025-05-01 00:00:00', 'tunis', 14, 'C:\\Users\\Amirov\\Downloads\\pexels-pixabay-209981.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `participer`
--

CREATE TABLE `participer` (
  `id` int(11) NOT NULL,
  `idEvenement` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `participer`
--

INSERT INTO `participer` (`id`, `idEvenement`, `status`, `role`) VALUES
(1, 1, 'dispo', 'joueur'),
(2, 3, 'confermé', 'joueur'),
(3, 7, 'confirmé', 'joueur'),
(4, 8, 'confirmé', 'joueur');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `participer`
--
ALTER TABLE `participer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_participation_evenement` (`idEvenement`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `participer`
--
ALTER TABLE `participer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `participer`
--
ALTER TABLE `participer`
  ADD CONSTRAINT `fk_participation_evenement` FOREIGN KEY (`idEvenement`) REFERENCES `evenement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
