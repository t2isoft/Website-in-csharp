-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 10 Août 2015 à 12:52
-- Version du serveur :  5.6.21
-- Version de PHP :  5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `boutique`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
`CartId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cart`
--

INSERT INTO `cart` (`CartId`, `UserId`) VALUES
(1, 4),
(2, 7),
(3, 10),
(4, 11),
(5, 12),
(6, 13),
(7, 14),
(8, 15),
(9, 16);

-- --------------------------------------------------------

--
-- Structure de la table `cartitem`
--

CREATE TABLE IF NOT EXISTS `cartitem` (
`ItemId` int(12) NOT NULL,
  `CartId` int(12) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cartitem`
--

INSERT INTO `cartitem` (`ItemId`, `CartId`, `ProductId`, `Quantity`) VALUES
(2, 4, 2, 1),
(3, 4, 2, 1),
(7, 4, 1, 1),
(8, 4, 2, 1),
(9, 4, 2, 1),
(10, 4, 2, 1),
(11, 4, 3, 1),
(12, 4, 3, 1),
(13, 4, 2, 1),
(14, 5, 3, 1),
(15, 5, 1, 1),
(16, 5, 2, 1),
(17, 5, 2, 1),
(18, 4, 3, 1),
(19, 4, 2, 1),
(20, 4, 2, 1),
(21, 6, 1, 1),
(22, 6, 2, 1),
(23, 6, 3, 1),
(24, 6, 1, 1),
(25, 4, 1, 1),
(26, 4, 3, 1),
(27, 7, 2, 1),
(28, 7, 3, 1),
(29, 8, 1, 1),
(30, 8, 3, 1),
(31, 8, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`ProductId` int(12) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(4) NOT NULL,
  `Level` varchar(12) NOT NULL,
  `imagePath` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `product`
--

INSERT INTO `product` (`ProductId`, `name`, `description`, `price`, `Level`, `imagePath`) VALUES
(1, 'Boite de 1000 kapla', 'Coffret de 1000 Kapla avec un livret de modeles de construction', 250, '3 - 6 ans', 'kapla.png'),
(2, 'Lego', 'Boite de 650 lego', 50, '6 - 9 ans', 'lego.png'),
(3, 'Premiers origami', 'Livre d''initiation aux origamis pour les enfants.', 5, '3 - 6 ans', 'origami.png');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`UserId` int(12) NOT NULL,
  `login` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(30) NOT NULL,
  `lastname` int(30) NOT NULL,
  `mail` int(50) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`UserId`, `login`, `password`, `name`, `lastname`, `mail`, `phone`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'test1', 0, 0, ''),
(2, 'toto', 'f71dbe52628a3f83a77ab494817525c6', 'test2', 0, 0, ''),
(3, 'tutu', 'bdb8c008fa551ba75f8481963f2201da', 'test3', 0, 0, ''),
(4, 'test', 'test', 'test', 0, 0, '0123456789'),
(6, 'karl', 'karl', 'karl', 0, 0, '0123456789'),
(7, 'amine', 'admin', 'amin', 0, 0, '0123456789'),
(8, 'amin', 'admin', 'amin', 0, 0, '0123456789'),
(9, 'amin', 'admin', 'amin', 0, 0, '0123456789'),
(10, 'dimitri', 'dimitri', 'dimitri', 0, 0, '061234578'),
(11, 'spoutil', '6d28d2c32e8083c5f56b52ef827cb239', 'spoutil', 0, 0, '0123456789'),
(12, 'robert', '684c851af59965b680086b7b4896ff98', 'robert', 0, 0, '0123456789'),
(13, 'roland', 'ee21d5f27a8401788147f6f6184ddb11', 'roland', 0, 0, '12345678910'),
(14, 'test28', 'f4f4f99191ca681c2abe4e9cf07843b5', 'aaaa', 0, 0, '1234567891'),
(15, 'elsa', '783833680e6da5cf6cd7481a44d8fa4c', 'elsa', 0, 0, '0123459789'),
(16, '', 'd41d8cd98f00b204e9800998ecf8427e', '', 0, 0, '');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
 ADD PRIMARY KEY (`CartId`), ADD KEY `UserId` (`UserId`);

--
-- Index pour la table `cartitem`
--
ALTER TABLE `cartitem`
 ADD PRIMARY KEY (`ItemId`), ADD KEY `ProductId` (`ProductId`), ADD KEY `CartId` (`CartId`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`ProductId`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
MODIFY `CartId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `cartitem`
--
ALTER TABLE `cartitem`
MODIFY `ItemId` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
MODIFY `ProductId` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
MODIFY `UserId` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `cart`
--
ALTER TABLE `cart`
ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserId`);

--
-- Contraintes pour la table `cartitem`
--
ALTER TABLE `cartitem`
ADD CONSTRAINT `cartitem_ibfk_2` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`),
ADD CONSTRAINT `cartitem_ibfk_3` FOREIGN KEY (`CartId`) REFERENCES `cart` (`CartId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
