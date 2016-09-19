-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 19 Septembre 2016 à 15:10
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
  `valide` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_EAFAD3625E7250B` (`auteur_proposition_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Contenu de la table `acteur`
--

INSERT INTO `acteur` (`id`, `auteur_proposition_id`, `Nom`, `Prenom`, `Nationalite`, `Date_naissance`, `url`, `valide`) VALUES
(1, 1, 'Coster-Waldau', 'Nikolaj ', 'Americaine', '1970-07-21 04:05:00', 'http://cdn.wegotthiscovered.com/wp-content/uploads/Coster+Waldau+at+Mama+premiere+JPZdpmOnEWxl.jpg', 1),
(2, 1, 'Turner', 'Sophie', 'Americaine', '1996-02-21 00:00:00', 'http://www.comingsoon.net/assets/uploads/2015/05/Turner-Bar-640.jpg', 1),
(3, 1, 'Headey', 'Lena', 'Americaine', '1973-10-03 00:00:00', 'http://www.thevibe.fr/upload/external/thevibe577659973e2f9.jpg', 1),
(4, 1, 'Dinklage', 'Peter', 'Americaine', '1969-06-11 00:00:00', 'http://www.peterdinklage.tv/wp-content/uploads/2015/05/peter-dinklage2.jpg', 1),
(5, 1, 'Williams', 'Maisie', 'Americaine', '1997-04-15 00:00:00', 'http://www.ew.com/sites/default/files/styles/tout_image_612x380/public/i/2015/06/16/maisie-williams.jpg?itok=6lBByS7D', 1),
(6, 1, 'Fimmel', 'Travis ', 'Australienne', '1979-07-15 00:00:00', 'http://1.fwcdn.pl/ph/90/55/659055/553153_1.1.jpg', 0),
(7, 1, 'Winnick', 'Katheryn', 'Americaine', '1977-12-17 00:00:00', 'http://media.comicbook.com/uploads1/2014/11/katheryn-winnick-vikings-207-clips-history-111410.jpg', 0),
(8, 1, 'Standen', 'Clive ', 'Britannique ', '1981-07-22 00:00:00', 'http://cdn.history.com/sites/2/2015/03/vikings_s3e5_gallery_1.jpg', 0),
(9, 1, 'Chiklis', 'Michael', 'Américaine', '1963-09-30 00:00:00', 'http://cdn.hitfix.com/photos/5621653/Michael-Chiklis_article_story_large.jpg', 1),
(10, 1, 'Goggins', 'Walton', 'Américaine', '1971-11-10 00:00:00', 'http://walton-goggins.net/imgs/albums/SHOOTS/011/001~3.jpg', 0),
(11, 1, 'Johnson', 'Kenneth', 'Américaine', '1963-07-13 00:00:00', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjI1NzI2NzgwOV5BMl5BanBnXkFtZTcwOTk1MDQ5OQ@@._V1_.jpg', 1),
(12, 1, 'Rami', 'Malek', 'Americaine', '1981-05-12 00:00:00', 'http://www.albawaba.com/sites/default/files/im/rami-malek-robot.jpg', 1),
(13, 1, 'Slater', 'Christian', 'Americaine', '1969-08-18 00:00:00', 'http://cdn.hitfix.com/photos/5799692/222222_article_story_large.png', 0),
(14, 1, 'Doubleday', 'Portia', 'Americaine', '1988-06-22 00:00:00', 'http://www.usanetwork.com/sites/usanetwork/files/styles/full_episodes_633x356/public/2016/07/160616_3052960_Portia_Doubleday_Talks_Mr__Robot_Season_2.jpg-itok%3DDCPcOJJ4_edit_0.jpg?itok=IqVWZcTS', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `critique`
--

INSERT INTO `critique` (`id`, `serie_id`, `auteur_id`, `Contenu`, `Date_critique`, `Note`) VALUES
(1, 1, 1, 'Une série pleine de rebondissements mais certains épisodes traînent en longueur.', '2016-09-01 14:18:26', 7),
(2, 2, 1, 'Une immersion immédiate, des scène qui se succèdent, et nous captivent par la nouveauté qu''apporte ces civilisations scandinaves méconnues du grand public.', '2016-09-01 11:22:13', 8),
(3, 3, 1, 'Tout simplement la meilleure série que j''ai jamais vue....rarement une série n''aura été aussi loin dans l''analyse psychologique de son personnage principal Vic Mackey avec ses bons côtés mais surtout ses côtés les plus détestables.', '2016-09-07 10:17:12', 10),
(4, 4, 1, 'Série très originale et inventive qui nous plonge dans la face cachée d''Internet.', '2015-11-21 13:12:18', 9);

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
  `valide` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DDAA1CDAF965414C` (`saison_id`),
  KEY `IDX_DDAA1CDA5E7250B` (`auteur_proposition_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `episode`
--

INSERT INTO `episode` (`id`, `saison_id`, `auteur_proposition_id`, `Titre`, `Duree`, `Resume`, `Diffusions_futures`, `valide`) VALUES
(2, 1, 1, 'Les vacances', '00:00:55', 'Chaque protagoniste est parti en vacances se ressourcer.', 'Prévue pour novembre 2016', 1),
(3, 1, 1, 'La revanche', '00:00:55', 'La décision du juge n''est pas au goût de tout le monde.', 'Prévue pour décembre 2016', 1),
(4, 3, 1, 'Le rebondissement', '00:00:55', 'L''organisation ne se décourage et cherche tous les moyens pour éliminer nos héros.', 'Prévue pour janvier 2017', 0);

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE IF NOT EXISTS `realisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_47933EFE54231355` (`Nom`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Contenu de la table `realisateur`
--

INSERT INTO `realisateur` (`id`, `Nom`) VALUES
(2, 'Cameron'),
(6, 'Chan'),
(3, 'Mctiernan'),
(5, 'Rhee'),
(7, 'Shawn Ryan'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

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
(8, 8, 2, 'Rollo, le frère de Ragnar'),
(9, 9, 3, 'Vic Mackey'),
(10, 10, 3, 'Shane Vendrell'),
(11, 11, 3, 'Lem Lemansky'),
(12, 12, 4, 'Elliot Alderson'),
(13, 13, 4, 'Mr.Robot'),
(14, 14, 4, 'Angela Moss');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `saison`
--

INSERT INTO `saison` (`id`, `serie_id`, `Denomination`) VALUES
(1, 1, 'Heroic-Fantasy'),
(2, 2, 'Aventures'),
(3, 3, 'Policier'),
(4, 4, 'Espionnage');

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
  `valide` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_AA3A9334F1D8422E` (`realisateur_id`),
  KEY `IDX_AA3A93345E7250B` (`auteur_proposition_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `serie`
--

INSERT INTO `serie` (`id`, `realisateur_id`, `auteur_proposition_id`, `Titre`, `Pays`, `Annee_debut`, `Status`, `Note`, `Synopsis`, `url`, `valide`) VALUES
(1, 1, 1, 'Game of thrones', 'Etats-Unis', 2012, 'En cours', 5, 'La série suit l’histoire des membres de plusieurs familles nobles, dans une guerre civile pour conquérir le Trône de Fer', 'http://www.wallpapermade.com/images/wallpapers/originals/game-of-thrones-ned-stark-on-the-iron-throne-wallpaper-3826.jpg', 1),
(2, 3, 1, 'Viking', 'Etats-Unis', 2009, 'En cours', 4, 'La série suit les exploits d''un groupe de Vikings mené par Ragnar Lothbrok.', 'http://www.100hdwallpapers.com/wallpapers/1920x1080/vikings_2013_tv_series-hd_wallpapers.jpg', 0),
(3, 7, 1, 'The Shield', 'Etats-Unis', 2002, 'Achevée', 5, 'Vic Mackey, Inspecteur de Police de Los Angeles dans le quartier fictif et malfamé de Farmington, est aussi le chef de la « Brigade de choc » (« Strike Team »). ', 'http://cdn.collider.com/wp-content/uploads/2015/08/the-shield-slice-600x198.jpg', 1),
(4, 4, 1, 'Mr.Robot', 'Etats-Unis', 2015, 'En cours', 7, 'Elliot Alderson est un jeune informaticien vivant à New York, qui travaille en tant qu''ingénieur en sécurité informatique pour Allsafe Security. ', 'http://media.begeek.fr/2015/12/mr-robot.jpg', 1);

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
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `activite` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1D1C63B381604CAB` (`Pseudo`),
  UNIQUE KEY `UNIQ_1D1C63B392FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_1D1C63B3A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_1D1C63B3C05FB297` (`confirmation_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `Pseudo`, `Nom`, `Prenom`, `Mail`, `Date_naissance`, `Ville`, `Twitter`, `Facebook`, `Avatar`, `Signature`, `Description`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `activite`) VALUES
(1, 'Dupjean', 'Dupond', 'Jean', 'dupond.jean@yahoo.fr', '2016-02-02 00:00:00', 'Lille', 'dupond.jean@twitter.com', 'dupond.jean@facebook.com', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRCEPSecLfG2zFCDu-NcZrS47iEUvvOpmw_N5vCwc2utx8o03I0', 'Dupond', 'Passioné de série depuis toujours.', '', '', '', '', 0, '', '', NULL, 0, 0, NULL, NULL, NULL, '', 0, NULL, NULL);

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
(1, 2),
(1, 3),
(1, 4);

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
(1, 2),
(1, 3),
(1, 4);

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
