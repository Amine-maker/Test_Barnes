-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 06 août 2020 à 11:53
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test_barnes`
--

-- --------------------------------------------------------

--
-- Structure de la table `bien_immobilier`
--

DROP TABLE IF EXISTS `bien_immobilier`;
CREATE TABLE IF NOT EXISTS `bien_immobilier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bien_immobilier`
--

INSERT INTO `bien_immobilier` (`id`, `nom`, `prix`, `created_at`, `description`, `image`) VALUES
(241, 'consequatur', 3582288, '2020-08-05 17:55:23', 'Magni ratione quo rerum. Autem officia amet sit magni.', 'image/bien1.jpg'),
(242, 'ad', 1790247, '2020-08-05 17:55:23', 'Consequatur quidem molestias qui voluptatem molestiae. Unde vitae doloribus omnis sed ipsa voluptatem. Maxime officiis nihil voluptatem vero voluptatibus quasi.', 'image/bien2.jpg'),
(243, 'aut', 3278365, '2020-08-05 17:55:23', 'Omnis sapiente facilis aut. Et laboriosam incidunt error et architecto. Ipsa et vel et eum quae. Ut non quam eligendi non molestiae.', 'image/bien3.jpg'),
(244, 'sint', 665829, '2020-08-05 17:55:23', 'Quaerat ab est et. Aperiam illum impedit quis distinctio assumenda similique qui. Sit totam enim consequuntur illo. Nam temporibus suscipit dolorem.', 'image/bien4.jpg'),
(245, 'explicabo', 2458608, '2020-08-05 17:55:23', 'Pariatur distinctio aliquam voluptatum officia voluptas aut laborum. Adipisci quis et fuga id nesciunt nihil. Est velit esse quos odio perferendis est molestias.', 'image/bien5.jpg'),
(246, 'est', 1480148, '2020-08-05 17:55:23', 'Ducimus id non dolor accusantium amet. Deserunt doloremque quaerat sint pariatur magni dicta corporis. Itaque repellat quis illo earum eos unde dolor.', 'image/bien6.jpg'),
(247, 'sint', 975984, '2020-08-05 17:55:23', 'Alias neque eos eligendi ipsa minus. Ad vel qui nihil impedit expedita sequi eius. Eum temporibus vel iure sapiente dolores reiciendis nobis.', 'image/bien7.jpg'),
(248, 'repellat', 2412695, '2020-08-05 17:55:23', 'Sequi recusandae quaerat fugiat harum placeat. Autem assumenda numquam maxime impedit dignissimos et quis. Consectetur vel tempore ratione illum voluptatem.', 'image/bien8.jpg'),
(249, 'cum', 952658, '2020-08-05 17:55:23', 'Rem qui deserunt eligendi architecto sed pariatur maiores. Quia sunt nostrum molestiae quo mollitia hic. Consequuntur dolorem corrupti ut et magni earum. Quidem et vel est ut dolorem quas.', 'image/bien9.jpg'),
(250, 'ullam', 890447, '2020-08-05 17:55:23', 'Error et ab quidem possimus ullam. Mollitia ea omnis repudiandae voluptate nihil et et. Modi eveniet et excepturi id cumque aut quasi. Veritatis enim quo est quasi.', 'image/bien10.jpg'),
(251, 'quia', 402495, '2020-08-05 17:55:23', 'Tenetur maiores suscipit et iure quo. Aut dignissimos eligendi quis earum suscipit quasi. Minima quod commodi ipsam perspiciatis. Aut ab optio est eos nihil molestiae.', 'image/bien11.jpg'),
(252, 'velit', 250145, '2020-08-05 17:55:23', 'Itaque eaque dolor non doloribus magnam. Et numquam aliquam placeat exercitationem voluptatem. Hic sed facere hic consequatur.', 'image/bien12.jpg'),
(253, 'est', 3258490, '2020-08-05 17:55:23', 'Assumenda nostrum numquam qui itaque commodi illo et. Eaque consectetur rem ut harum. Error ducimus sequi voluptatem. Quidem magnam ipsum inventore debitis qui aliquid iste.', 'image/bien13.jpg'),
(254, 'rem', 720047, '2020-08-05 17:55:23', 'Dolores eos sequi et aut dolore quasi quis. Aut fugit repellat ad a. Neque laboriosam rem quos doloribus officiis magnam non delectus. Quod velit recusandae accusantium illo commodi sequi.', 'image/bien14.jpg'),
(255, 'officiis', 1200669, '2020-08-05 17:55:23', 'Nihil et est dolore voluptatibus et velit doloribus. Quod dolore dolorem qui culpa. Quis labore rerum et nam. Iure est aut veniam eveniet perspiciatis officia.', 'image/bien15.jpg'),
(256, 'qui', 3501982, '2020-08-05 17:55:23', 'Nesciunt porro minus sunt. Voluptatum doloremque quidem earum ab autem. Cum facere quo id dolores.', 'image/bien16.jpg'),
(257, 'ex', 1969065, '2020-08-05 17:55:23', 'Sit dolorem cumque reprehenderit. Tenetur illum quod quod perferendis odio consequatur sint rerum. Excepturi voluptas et suscipit et eos voluptates.', 'image/bien17.jpg'),
(258, 'et', 223496, '2020-08-05 17:55:23', 'Quo consequatur in unde non. Ipsam laboriosam quo et maiores libero rerum eius. Labore qui est id excepturi commodi. Rerum earum corrupti unde ipsam dolores.', 'image/bien18.jpg'),
(259, 'tempore', 2518521, '2020-08-05 17:55:23', 'Suscipit sunt modi aperiam nesciunt facilis ipsum qui. Rem molestiae asperiores rem quaerat voluptatem. Suscipit voluptate qui nisi explicabo nesciunt ad in eius.', 'image/bien19.jpg'),
(260, 'laudantium', 2781699, '2020-08-05 17:55:23', 'Laborum molestiae aut repellendus sit omnis. Et non perferendis eaque eveniet. Non ea aliquid quibusdam voluptas aliquid vel voluptatum.', 'image/bien20.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `bien_immobilier_type_bien`
--

DROP TABLE IF EXISTS `bien_immobilier_type_bien`;
CREATE TABLE IF NOT EXISTS `bien_immobilier_type_bien` (
  `bien_immobilier_id` int(11) NOT NULL,
  `type_bien_id` int(11) NOT NULL,
  PRIMARY KEY (`bien_immobilier_id`,`type_bien_id`),
  KEY `IDX_BA4B9C665992120A` (`bien_immobilier_id`),
  KEY `IDX_BA4B9C6695B4D7FA` (`type_bien_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bien_immobilier_type_bien`
--

INSERT INTO `bien_immobilier_type_bien` (`bien_immobilier_id`, `type_bien_id`) VALUES
(241, 111),
(242, 110),
(243, 111),
(244, 110),
(245, 107),
(246, 109),
(247, 108),
(248, 107),
(249, 109),
(250, 111),
(251, 110),
(252, 109),
(253, 107),
(254, 111),
(255, 110),
(256, 110),
(257, 110),
(258, 111),
(259, 107),
(260, 108);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200805152956', '2020-08-05 15:30:14', 172);

-- --------------------------------------------------------

--
-- Structure de la table `type_bien`
--

DROP TABLE IF EXISTS `type_bien`;
CREATE TABLE IF NOT EXISTS `type_bien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_bien`
--

INSERT INTO `type_bien` (`id`, `nom`) VALUES
(107, 'Maison'),
(108, 'Villa'),
(109, 'Studio'),
(110, 'Appartement'),
(111, 'Loft');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bien_immobilier_type_bien`
--
ALTER TABLE `bien_immobilier_type_bien`
  ADD CONSTRAINT `FK_BA4B9C665992120A` FOREIGN KEY (`bien_immobilier_id`) REFERENCES `bien_immobilier` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BA4B9C6695B4D7FA` FOREIGN KEY (`type_bien_id`) REFERENCES `type_bien` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
