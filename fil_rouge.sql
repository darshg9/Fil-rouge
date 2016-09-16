-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 16 Septembre 2016 à 12:01
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `fil_rouge`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE IF NOT EXISTS `acteur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auteur_proposition_id` int(11) DEFAULT NULL,
  `Nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Nationalite` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Date_naissance` datetime DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_EAFAD3625E7250B` (`auteur_proposition_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Contenu de la table `acteur`
--

INSERT INTO `acteur` (`id`, `auteur_proposition_id`, `Nom`, `Prenom`, `Nationalite`, `Date_naissance`, `url`) VALUES
(1, 2, 'Coster-Waldau', 'Nikolaj ', 'Americaine', '1970-07-21 04:05:00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrCDCrtfeBrVkLcgKJJSzX8v0o5WqFdOpQG_jWCka2O56rrxOpmQ'),
(2, 1, 'Turner', 'Sophie', 'Americaine', '1996-02-21 00:00:00', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTQWWq_H8zWWLImRpoY4jKLj5fxG6jk-lLz8VLtt6lVwZEh_gQHJQ'),
(3, 2, 'Headey', 'Lena', 'Americaine', '1973-10-03 00:00:00', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSfh-Od719C73aI3cVl3J2QhW87HC2xAUFYAte15atIG_BPgPlhZQ'),
(4, 1, 'Dinklage', 'Peter', 'Americaine', '1969-06-11 00:00:00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQASaJkOE84vKzlQzD4obk8n4S54L9xoxDmdumX8n9pEBr1Fc_G'),
(5, 1, 'Williams', 'Maisie', 'Americaine', '1997-04-15 00:00:00', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQHqDUWdqDgoDDo0r8E-y-e_WahqkTMQQi9ySmL-OAy2Cz0II73'),
(6, 1, 'Fimmel', 'Travis ', 'Australienne', '1979-07-15 00:00:00', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRSLoafm6WBngSIMnHfmcNgejpCJu81eLmol3GP5Akeu3yEqIMYjQ'),
(7, 2, 'Winnick', 'Katheryn', 'Americaine', '1977-12-17 00:00:00', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSJ-eg8LPbJMWeZWscYFsc7pqbzVU_kwnCicmsl_VG9rqIqEShk'),
(8, 1, 'Standen', 'Clive ', 'Britannique ', '1981-07-22 00:00:00', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS-F04lg-JXcn0CJds9Skk4EVW2JwVJ8Uw-vIRmL9rGMcSkrSFkNg');

-- --------------------------------------------------------

--
-- Structure de la table `critique`
--

CREATE TABLE IF NOT EXISTS `critique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serie_id` int(11) DEFAULT NULL,
  `auteur_id` int(11) DEFAULT NULL,
  `Contenu` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Date_critique` datetime NOT NULL,
  `Note` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1F950324D94388BD` (`serie_id`),
  KEY `IDX_1F95032460BB6FE6` (`auteur_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `critique`
--

INSERT INTO `critique` (`id`, `serie_id`, `auteur_id`, `Contenu`, `Date_critique`, `Note`) VALUES
(1, 1, 2, 'Le Lorem Ipsum est simplement du faux texte employé dans la ', '2016-09-01 00:00:00', 4),
(2, 2, 1, 'On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions.', '2016-09-01 00:00:00', 2);

-- --------------------------------------------------------

--
-- Structure de la table `episode`
--

CREATE TABLE IF NOT EXISTS `episode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `saison_id` int(11) DEFAULT NULL,
  `auteur_proposition_id` int(11) DEFAULT NULL,
  `Titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Duree` time DEFAULT NULL,
  `Resume` longtext COLLATE utf8_unicode_ci,
  `Diffusions_futures` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_DDAA1CDAF965414C` (`saison_id`),
  KEY `IDX_DDAA1CDA5E7250B` (`auteur_proposition_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `episode`
--

INSERT INTO `episode` (`id`, `saison_id`, `auteur_proposition_id`, `Titre`, `Duree`, `Resume`, `Diffusions_futures`) VALUES
(2, 1, 1, 'Les vacances', '00:00:55', 'Le Lorem Ipsum est simplement du faux texte employé dans la. ', 'Prévue pour novembre 2016'),
(3, 1, 1, 'La revanche', '00:00:55', 'par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'Prévue pour Décembre 2016');

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE IF NOT EXISTS `realisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_47933EFE54231355` (`Nom`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Contenu de la table `realisateur`
--

INSERT INTO `realisateur` (`id`, `Nom`) VALUES
(2, 'Cameron'),
(6, 'Chan'),
(3, 'Mctiernan'),
(5, 'Rhee'),
(4, 'Singer'),
(1, 'Tarantino');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acteur_id` int(11) DEFAULT NULL,
  `serie_id` int(11) DEFAULT NULL,
  `Nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_57698A6ADA6F574A` (`acteur_id`),
  KEY `IDX_57698A6AD94388BD` (`serie_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Contenu de la table `role`
--

INSERT INTO `role` (`id`, `acteur_id`, `serie_id`, `Nom`) VALUES
(1, 1, 1, 'Jaime Lannister'),
(2, 2, 1, 'Sansa Stark'),
(3, 3, 1, 'Cersei Lannister'),
(4, 4, 1, 'Tyrion Lannister'),
(5, 5, 1, 'Arya Stark'),
(6, 6, 1, 'Ragnar Lothbrok'),
(7, 7, 2, 'Lagertha'),
(8, 8, 2, 'Rollo, le frère de Ragnar');

-- --------------------------------------------------------

--
-- Structure de la table `saison`
--

CREATE TABLE IF NOT EXISTS `saison` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serie_id` int(11) DEFAULT NULL,
  `Denomination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C0D0D586D94388BD` (`serie_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `saison`
--

INSERT INTO `saison` (`id`, `serie_id`, `Denomination`) VALUES
(1, 1, 'Aventures');

-- --------------------------------------------------------

--
-- Structure de la table `serie`
--

CREATE TABLE IF NOT EXISTS `serie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realisateur_id` int(11) DEFAULT NULL,
  `auteur_proposition_id` int(11) DEFAULT NULL,
  `Titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Pays` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Annee_debut` int(11) DEFAULT NULL,
  `Status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Note` double DEFAULT NULL,
  `Synopsis` longtext COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_AA3A9334F1D8422E` (`realisateur_id`),
  KEY `IDX_AA3A93345E7250B` (`auteur_proposition_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `serie`
--

INSERT INTO `serie` (`id`, `realisateur_id`, `auteur_proposition_id`, `Titre`, `Pays`, `Annee_debut`, `Status`, `Note`, `Synopsis`, `url`) VALUES
(1, 1, 1, 'Game of thrones', 'Amerique', 2012, 'En cours', 5, 'La série suit l’histoire des membres de plusieurs familles nobles, dans une guerre civile pour conquérir le Trône de Fer', NULL),
(2, 3, 2, 'Viking', 'Amerique', 2009, 'En cours', 4, 'La série suit les exploits d''un groupe de Vikings mené par Ragnar Lothbrok.', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Pseudo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Nom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Prenom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Date_naissance` datetime DEFAULT NULL,
  `Ville` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1D1C63B381604CAB` (`Pseudo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `Pseudo`, `Nom`, `Prenom`, `Mail`, `Date_naissance`, `Ville`, `Twitter`, `Facebook`, `Avatar`, `Signature`, `Description`) VALUES
(1, 'Dupjean', 'Dupond', 'Jean', 'dupond.jean@yahoo.fr', '2016-02-02 00:00:00', 'Lille', 'dupond.jean@twitter.com', 'dupond.jean@facebook.com', 'Dupond', 'Dupond', 'Passioné de série depuis toujours.'),
(2, 'OlivAtt', 'Atton', 'Olivier', 'atton.olivier@hotmail.fr', '2016-09-12 00:00:00', 'Lyon', 'atton.olivier@twitter.com', 'atton.olivier@facebook.com', 'Atton', 'Atton', 'J''adore les séries.');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur_episode`
--

CREATE TABLE IF NOT EXISTS `utilisateur_episode` (
  `utilisateur_id` int(11) NOT NULL,
  `episode_id` int(11) NOT NULL,
  PRIMARY KEY (`utilisateur_id`,`episode_id`),
  KEY `IDX_A7A1EB48FB88E14F` (`utilisateur_id`),
  KEY `IDX_A7A1EB48362B62A0` (`episode_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `utilisateur_episode`
--

INSERT INTO `utilisateur_episode` (`utilisateur_id`, `episode_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur_serie`
--

CREATE TABLE IF NOT EXISTS `utilisateur_serie` (
  `utilisateur_id` int(11) NOT NULL,
  `serie_id` int(11) NOT NULL,
  PRIMARY KEY (`utilisateur_id`,`serie_id`),
  KEY `IDX_6CFFCBEAFB88E14F` (`utilisateur_id`),
  KEY `IDX_6CFFCBEAD94388BD` (`serie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `utilisateur_serie`
--

INSERT INTO `utilisateur_serie` (`utilisateur_id`, `serie_id`) VALUES
(1, 2);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD CONSTRAINT `FK_EAFAD3625E7250B` FOREIGN KEY (`auteur_proposition_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `critique`
--
ALTER TABLE `critique`
  ADD CONSTRAINT `FK_1F95032460BB6FE6` FOREIGN KEY (`auteur_id`) REFERENCES `utilisateur` (`id`),
  ADD CONSTRAINT `FK_1F950324D94388BD` FOREIGN KEY (`serie_id`) REFERENCES `serie` (`id`);

--
-- Contraintes pour la table `episode`
--
ALTER TABLE `episode`
  ADD CONSTRAINT `FK_DDAA1CDA5E7250B` FOREIGN KEY (`auteur_proposition_id`) REFERENCES `utilisateur` (`id`),
  ADD CONSTRAINT `FK_DDAA1CDAF965414C` FOREIGN KEY (`saison_id`) REFERENCES `saison` (`id`);

--
-- Contraintes pour la table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `FK_57698A6AD94388BD` FOREIGN KEY (`serie_id`) REFERENCES `serie` (`id`),
  ADD CONSTRAINT `FK_57698A6ADA6F574A` FOREIGN KEY (`acteur_id`) REFERENCES `acteur` (`id`);

--
-- Contraintes pour la table `saison`
--
ALTER TABLE `saison`
  ADD CONSTRAINT `FK_C0D0D586D94388BD` FOREIGN KEY (`serie_id`) REFERENCES `serie` (`id`);

--
-- Contraintes pour la table `serie`
--
ALTER TABLE `serie`
  ADD CONSTRAINT `FK_AA3A93345E7250B` FOREIGN KEY (`auteur_proposition_id`) REFERENCES `utilisateur` (`id`),
  ADD CONSTRAINT `FK_AA3A9334F1D8422E` FOREIGN KEY (`realisateur_id`) REFERENCES `realisateur` (`id`);

--
-- Contraintes pour la table `utilisateur_episode`
--
ALTER TABLE `utilisateur_episode`
  ADD CONSTRAINT `FK_A7A1EB48362B62A0` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A7A1EB48FB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `utilisateur_serie`
--
ALTER TABLE `utilisateur_serie`
  ADD CONSTRAINT `FK_6CFFCBEAD94388BD` FOREIGN KEY (`serie_id`) REFERENCES `serie` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6CFFCBEAFB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
