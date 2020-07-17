-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 17 juil. 2020 à 14:30
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bookshop`
--

-- --------------------------------------------------------

--
-- Structure de la table `book`
--

CREATE TABLE `book` (
  `Book_id` int(11) NOT NULL,
  `Id_category` int(11) NOT NULL,
  `Autor_name` varchar(255) NOT NULL,
  `Book_name` varchar(255) NOT NULL,
  `Book_image` varchar(255) NOT NULL,
  `Book_Summary` varchar(255) NOT NULL,
  `Book_price` double NOT NULL,
  `Book_Quantity` int(11) NOT NULL,
  `Books_availibility` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `book`
--

INSERT INTO `book` (`Book_id`, `Id_category`, `Autor_name`, `Book_name`, `Book_image`, `Book_Summary`, `Book_price`, `Book_Quantity`, `Books_availibility`) VALUES
(3, 2, 'omat', 'omph', 'C:UsersThoshibaeclipse-workspaceBook_siteWebContentimgFairy.png', 'ompvcrtc', 13, 2, 'Out of stock'),
(4, 2, 'hyb', 'pok', 'C:UsersThoshibaeclipse-workspaceBook_siteWebContentimgfan-3.png', 'ompareft', 23, 1, 'Out of stock'),
(5, 2, 'mery', 'the revenant', 'img.jpg', 'olma', 143, 5, 'In stock'),
(6, 1, 'iomp', 'Loups', 'C:UsersThoshibaeclipse-workspaceBook_siteWebContentimgfan-4.jpg', 'omapjksdj', 86, 12, 'In stock'),
(7, 1, 'omayma', 'vampire', 'C:UsersThoshibaeclipse-workspaceBook_siteWebContentimgfan-1.jpg', 'omaphjks', 333, 2, 'Out of stock'),
(8, 3, 'FRED', 'Loup chantants', 'C:UsersThoshibaDesktopimgfan-4.jpg', 'OM V', 453, 8, 'In stock'),
(9, 3, 'PEDRO', 'Heritier de trones', 'C:UsersThoshibaDesktopimgpic-4.jpg', 'OAM', 745, 9, 'In stock'),
(10, 1, 'TH', 'GMAIL', 'C:UsersThoshibaDesktopimgfan1-2.jpg', 'iuy', 23, 7, 'In stock'),
(11, 9, 'j', 'k', 'C:UsersThoshibaDesktopimgfan-1.jpg', 'OIN', 4, 7, 'In stock');

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `id_Cart` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `Image_book` varchar(255) NOT NULL,
  `Name_book` varchar(255) NOT NULL,
  `Price_book` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `Id_category` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`Id_category`, `type`) VALUES
(1, 'Romance'),
(2, 'Action'),
(3, 'Fantastic'),
(4, 'null'),
(5, 'Finance'),
(6, 'Art'),
(7, 'Drama'),
(8, 'Children'),
(9, 'Horror'),
(10, 'Fantasie'),
(11, 'Science');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `ref` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `ref`, `Nom`, `email`, `password`) VALUES
(2, 1, 'admin', 'admin@gmail.com', '1234'),
(6, 2, 'Laichir omayma', 'laichir@gmail.com', '1234'),
(8, 2, 'Ikrame LAICHIR', 'ikrame@gmail.com', '1234');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`Book_id`),
  ADD KEY `Id_category_fb` (`Id_category`);

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_Cart`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Id_category`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `book`
--
ALTER TABLE `book`
  MODIFY `Book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_Cart` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `Id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `Id_category_fb` FOREIGN KEY (`Id_category`) REFERENCES `category` (`Id_category`);

--
-- Contraintes pour la table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
