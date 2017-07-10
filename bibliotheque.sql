-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 10, 2017 at 03:13 PM
-- Server version: 5.7.18-0ubuntu0.17.04.1
-- PHP Version: 7.0.18-0ubuntu0.17.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bibliotheque`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `id_administrator` int(11) NOT NULL,
  `admin_firstname` varchar(30) NOT NULL,
  `admin_lastname` varchar(30) NOT NULL,
  `admin_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id_administrator`, `admin_firstname`, `admin_lastname`, `admin_password`) VALUES
(1, 'Francois', 'Bois', 'hgsfa93g'),
(2, 'Ghislaine', 'Esnault', 'aijeu8hp');

-- --------------------------------------------------------

--
-- Table structure for table `appartient_a`
--

CREATE TABLE `appartient_a` (
  `id_livre` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id_author` int(11) NOT NULL,
  `author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id_author`, `author`) VALUES
(1, 'CLEMENT Nathalie & Yves-Marie'),
(2, 'TORTOLINI Luca');

-- --------------------------------------------------------

--
-- Table structure for table `destine_a`
--

CREATE TABLE `destine_a` (
  `id_age` int(11) NOT NULL,
  `id_livre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `editor`
--

CREATE TABLE `editor` (
  `id_editor` int(11) NOT NULL,
  `editor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `editor`
--

INSERT INTO `editor` (`id_editor`, `editor`) VALUES
(2, 'Notari'),
(1, 'Pourquoi pas ?');

-- --------------------------------------------------------

--
-- Table structure for table `Emprunt`
--

CREATE TABLE `Emprunt` (
  `date_emprunt` date NOT NULL,
  `date_retour` date DEFAULT NULL,
  `id_users` int(11) NOT NULL,
  `id_livre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `favoris`
--

CREATE TABLE `favoris` (
  `id_users` int(11) NOT NULL,
  `id_livre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(11) NOT NULL,
  `genre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id_genre`, `genre`) VALUES
(2, 'Album'),
(1, 'Roman');

-- --------------------------------------------------------

--
-- Table structure for table `illustrator`
--

CREATE TABLE `illustrator` (
  `id_illustrator` int(11) NOT NULL,
  `illustrator` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `illustrator`
--

INSERT INTO `illustrator` (`id_illustrator`, `illustrator`) VALUES
(2, 'ARAYA Rocio'),
(1, 'BAILLY Simon');

-- --------------------------------------------------------

--
-- Table structure for table `illustre`
--

CREATE TABLE `illustre` (
  `id_illustrator` int(11) NOT NULL,
  `id_livre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `livres`
--

CREATE TABLE `livres` (
  `id_livre` int(11) NOT NULL,
  `ISBN` varchar(25) NOT NULL,
  `title` varchar(50) NOT NULL,
  `year` date NOT NULL,
  `cover` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `number` int(11) DEFAULT NULL,
  `id_author` int(11) DEFAULT NULL,
  `id_editor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `livres`
--

INSERT INTO `livres` (`id_livre`, `ISBN`, `title`, `year`, `cover`, `description`, `number`, `id_author`, `id_editor`) VALUES
(1, '9782889083367', 'Le petit prince de Calais', '2016-08-01', 'https://images-na.ssl-images-amazon.com/images/I/61qGBg0zbZL.jpg', 'Jonas, 15 ans, vit avec sa famille en Erythrée. Sa passion : les poissons. Son rêve : quitter l’école et accompagner son père à la pêche. Le maître croit libérer son élève de la corvée scolaire en le faisant enrôler dans l’armée. Les parents de Jonas, connaissant la violence exercée sur les recrues, enjoignent leur fils de partir au plus vite en Europe. Après un voyage très difficile où on lui vole des vêtements et sa carte d’identité, il arrive à Calais, objectif l’Angleterre où l’accueillera un cousin', 1, 1, 1),
(2, '9782970106852', 'Pénélope ne parle pas', '2017-04-15', 'https://www.livralire.org/wp-content/uploads/2017/05/penelope.jpg', 'La baleine bleue : une silhouette de 30 m de long, un coeur de 600 kilos, une langue de 3 tonnes et un œil de 15 cm ! Le plus gros mammifère de la planète qui mange jusque 4 tonnes de nourriture par jour, bon nageur mais qui ne peut respirer sous l’eau et dort par intermittence. Un animal intelligent, longtemps chassé, heureusement protégé depuis 1966.', 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tri_age`
--

CREATE TABLE `tri_age` (
  `id_age` int(11) NOT NULL,
  `age` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tri_age`
--

INSERT INTO `tri_age` (`id_age`, `age`) VALUES
(2, 'Benjamin'),
(1, 'Junior');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `user_firstname` varchar(25) NOT NULL,
  `user_lastname` varchar(25) NOT NULL,
  `age` varchar(25) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `birthdate` varchar(25) NOT NULL,
  `inscription` varchar(25) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `user_firstname`, `user_lastname`, `age`, `adress`, `birthdate`, `inscription`, `user_password`, `email`) VALUES
(1, 'Ines', 'Leroux', '16', '21 rue Fraiches Alès', '11/05/2001', '23/05/2016', 'wbraan16', 'ines-socapa@yopmail.com'),
(2, 'Sylvain', 'Baudry', '12', '8 rue du Bas Poitou Alès', '11/05/2005', '23/05/2016', 'ihwwyf1h', 'sulvain-voqiv@yopmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id_administrator`);

--
-- Indexes for table `appartient_a`
--
ALTER TABLE `appartient_a`
  ADD PRIMARY KEY (`id_livre`,`id_genre`),
  ADD KEY `FK_appartient_a_id_genre` (`id_genre`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id_author`),
  ADD UNIQUE KEY `author` (`author`);

--
-- Indexes for table `destine_a`
--
ALTER TABLE `destine_a`
  ADD PRIMARY KEY (`id_age`,`id_livre`),
  ADD KEY `FK_destine_a_id_livre` (`id_livre`);

--
-- Indexes for table `editor`
--
ALTER TABLE `editor`
  ADD PRIMARY KEY (`id_editor`),
  ADD UNIQUE KEY `editor` (`editor`);

--
-- Indexes for table `Emprunt`
--
ALTER TABLE `Emprunt`
  ADD PRIMARY KEY (`id_users`,`id_livre`),
  ADD KEY `FK_Emprunt_id_livre` (`id_livre`);

--
-- Indexes for table `favoris`
--
ALTER TABLE `favoris`
  ADD PRIMARY KEY (`id_users`,`id_livre`),
  ADD KEY `FK_favoris_id_livre` (`id_livre`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`),
  ADD UNIQUE KEY `genre` (`genre`);

--
-- Indexes for table `illustrator`
--
ALTER TABLE `illustrator`
  ADD PRIMARY KEY (`id_illustrator`),
  ADD UNIQUE KEY `illustrator` (`illustrator`);

--
-- Indexes for table `illustre`
--
ALTER TABLE `illustre`
  ADD PRIMARY KEY (`id_illustrator`,`id_livre`),
  ADD KEY `FK_illustre_id_livre` (`id_livre`);

--
-- Indexes for table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`id_livre`),
  ADD UNIQUE KEY `ISBN` (`ISBN`,`cover`),
  ADD KEY `FK_livres_id_author` (`id_author`),
  ADD KEY `FK_livres_id_editor` (`id_editor`);

--
-- Indexes for table `tri_age`
--
ALTER TABLE `tri_age`
  ADD PRIMARY KEY (`id_age`),
  ADD UNIQUE KEY `age` (`age`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id_administrator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id_author` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `editor`
--
ALTER TABLE `editor`
  MODIFY `id_editor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `illustrator`
--
ALTER TABLE `illustrator`
  MODIFY `id_illustrator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `livres`
--
ALTER TABLE `livres`
  MODIFY `id_livre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tri_age`
--
ALTER TABLE `tri_age`
  MODIFY `id_age` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `appartient_a`
--
ALTER TABLE `appartient_a`
  ADD CONSTRAINT `FK_appartient_a_id_genre` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`),
  ADD CONSTRAINT `FK_appartient_a_id_livre` FOREIGN KEY (`id_livre`) REFERENCES `livres` (`id_livre`);

--
-- Constraints for table `destine_a`
--
ALTER TABLE `destine_a`
  ADD CONSTRAINT `FK_destine_a_id_age` FOREIGN KEY (`id_age`) REFERENCES `tri_age` (`id_age`),
  ADD CONSTRAINT `FK_destine_a_id_livre` FOREIGN KEY (`id_livre`) REFERENCES `livres` (`id_livre`);

--
-- Constraints for table `Emprunt`
--
ALTER TABLE `Emprunt`
  ADD CONSTRAINT `FK_Emprunt_id_livre` FOREIGN KEY (`id_livre`) REFERENCES `livres` (`id_livre`),
  ADD CONSTRAINT `FK_Emprunt_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`);

--
-- Constraints for table `favoris`
--
ALTER TABLE `favoris`
  ADD CONSTRAINT `FK_favoris_id_livre` FOREIGN KEY (`id_livre`) REFERENCES `livres` (`id_livre`),
  ADD CONSTRAINT `FK_favoris_id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`);

--
-- Constraints for table `illustre`
--
ALTER TABLE `illustre`
  ADD CONSTRAINT `FK_illustre_id_illustrator` FOREIGN KEY (`id_illustrator`) REFERENCES `illustrator` (`id_illustrator`),
  ADD CONSTRAINT `FK_illustre_id_livre` FOREIGN KEY (`id_livre`) REFERENCES `livres` (`id_livre`);

--
-- Constraints for table `livres`
--
ALTER TABLE `livres`
  ADD CONSTRAINT `FK_livres_id_author` FOREIGN KEY (`id_author`) REFERENCES `author` (`id_author`),
  ADD CONSTRAINT `FK_livres_id_editor` FOREIGN KEY (`id_editor`) REFERENCES `editor` (`id_editor`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
