-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : dim. 08 juin 2025 à 18:59
-- Version du serveur : 8.0.41-cll-lve
-- Version de PHP : 8.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tcyspvwh_allotabibi`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `user_name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`user_name`, `password`, `email`, `role`) VALUES
('lahbib', '0000', 'saouchi.ahmed.iskander.messaoud@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `appointments`
--

CREATE TABLE `appointments` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `appointments`
--

INSERT INTO `appointments` (`id`, `name`, `email`, `date`, `time`) VALUES
(1, 'kk', 'saouchi.ahmed.iskander.messaoud@gmail.com', '2024-09-18', '03:23:00'),
(2, 'kk', 'saouchi.ahmed.iskander.messaoud@gmail.com', '2024-09-18', '03:23:00'),
(3, 'kk', 'saouchi.ahmed.iskander.messaoud@gmail.com', '2024-09-18', '03:23:00'),
(4, 'kk', 'saouchi.ahmed.iskander.messaoud@gmail.com', '2024-09-18', '03:23:00'),
(5, 'mefroza', 'saouchi.iskander@gmail.com', '2024-10-03', '00:27:00'),
(6, 'jjjj', 'saouchi.iskander@gmail.com', '2024-09-26', '00:27:00'),
(7, 'iu', 'saouchi.ahmed.iskander.messaoud@gmail.com', '2024-10-03', '00:29:00'),
(8, 'jjjj', 'saouchi.iskander@gmail.com', '2024-10-01', '00:33:00'),
(9, 'jjjj', 'saouchi.iskander@gmail.com', '2024-10-01', '00:33:00'),
(10, 'jjjj', 'saouchi.iskander@gmail.com', '2024-10-01', '00:33:00'),
(11, 'jjjj', 'saouchi.iskander@gmail.com', '2024-10-01', '00:33:00'),
(12, 'jjjj', 'saouchi.iskander@gmail.com', '2024-10-01', '00:34:00'),
(13, 'jjjj', 'saouchi.iskander@gmail.com', '2024-09-25', '00:33:00'),
(14, 'k', 'saouchi.iskander@gmail.com', '2024-09-26', '10:29:00'),
(15, 'kkk', ' ', '2024-09-26', '13:41:00'),
(16, 'kkk', 'saouchi.ahmed.iskander.messaoud@gmail.com', '2024-09-18', '14:14:00'),
(17, 'kkk', 'saouchi.ahmed.iskander.messaoud@gmail.com', '2024-09-18', '14:14:00'),
(18, 'kk', 'saouchi.iskander@gmail.com', '2024-10-01', '18:25:00'),
(19, 'allotabibi', 'saouchi.iskander@gmail.com', '2024-09-17', '16:41:00');

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Laptops', 'laptops'),
(2, 'Desktop PC', 'desktop-pc'),
(3, 'Tablets', 'tablets'),
(4, 'Smart Phones', '');

-- --------------------------------------------------------

--
-- Structure de la table `conseils`
--

CREATE TABLE `conseils` (
  `id` int NOT NULL,
  `advice` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `conseils`
--

INSERT INTO `conseils` (`id`, `advice`) VALUES
(3, 'kskaa'),
(4, 'kkks'),
(5, 'kkkkkkkkkkkpp');

-- --------------------------------------------------------

--
-- Structure de la table `details`
--

CREATE TABLE `details` (
  `id` int NOT NULL,
  `sales_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Structure de la table `medsins`
--

CREATE TABLE `medsins` (
  `nom` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `tel` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `adresse` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `specialiste` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `disponible_tleconsultation` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `age` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `id` int NOT NULL,
  `dis_midiatemant_tel` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `heur_travaille` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `disponible_adomisil` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `midiatemant_admiicle` varchar(10) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `medsins`
--

INSERT INTO `medsins` (`nom`, `prenom`, `tel`, `adresse`, `email`, `specialiste`, `disponible_tleconsultation`, `user_name`, `password`, `age`, `id`, `dis_midiatemant_tel`, `heur_travaille`, `disponible_adomisil`, `midiatemant_admiicle`) VALUES
('saouchi', 'skander', '0667540078', 'w', 'saouchi.ahmed.iskander.messaoud@gmail.com', 'medecine_generale', 'no', 'ss', 'ss', '44', 22, 'no', '06h00 → 14h00,14h00 → 22h00', 'no', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `medsins2`
--

CREATE TABLE `medsins2` (
  `nom` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `tel` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `adresse` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `specialiste` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `disponible_tleconsultation` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `age` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `id` int NOT NULL,
  `dis_midiatemant_tel` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `heur_travaille_teleconsultation` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `disponible_adomisil` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `midiatemant_admiicle` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `annee_diplome` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ville_travaille` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `travaille_public_ou_prive` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ccp` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `medsins2`
--

INSERT INTO `medsins2` (`nom`, `prenom`, `tel`, `adresse`, `email`, `specialiste`, `disponible_tleconsultation`, `user_name`, `password`, `age`, `id`, `dis_midiatemant_tel`, `heur_travaille_teleconsultation`, `disponible_adomisil`, `midiatemant_admiicle`, `annee_diplome`, `ville_travaille`, `travaille_public_ou_prive`, `ccp`, `photo`) VALUES
('saouchi', 'skander', '0667540078', 'w', 'saouchi.ahmed.iskander.messaoud@gmail.com', 'ophtalmologie', 'oui', 'ssq', 'wwww', '44', 34, 'non', '00:00,01:00,02:00,03:00,04:00,05:00,06:00,07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00,18:00,19:00,20:00,21:00,22:00,23:00', 'non', 'non', '333ss', 'wss', 'prive', '3333333333333333333334', '1748298460_pexels-rsantos1232-3888151.jpg'),
('www', 'www', '0667540078', 'حي منطقة 12 س 06 رقم 81  سيدى عمار', 'drlahbib23@gmail.com', 'medecine_generale', 'oui', 'wwww', 'ddd', '44', 36, 'oui', '00:00,01:00,02:00,03:00,04:00,05:00,06:00,07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00,18:00,19:00,20:00,21:00,22:00,23:00', 'oui', 'oui', '333ss', 'سيدي عمار', 'public', '3333333333333333333334', '1748366046_pexels-cottonbro-3584994.jpg'),
('vhjvj', 'ftr', '4656456', '456456', 'saouchi.ahmed.iskander.messaoud@gmail.com', 'medecine_generale', 'oui', '555', '555', '44', 37, 'oui', '00:00,01:00,02:00,03:00,04:00,05:00,06:00,07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00,18:00,19:00,20:00,21:00,22:00,23:00', 'oui', 'non', '2022', 'annaba', 'public', '5555', ''),
('vhjvj', 'ftr', '4656456', '456456', 'saouchi.ahmed.iskander.messaoud@gmail.com', 'medecine_generale', 'oui', '555', '555', '44', 38, 'oui', '00:00,01:00,02:00,03:00,04:00,05:00,06:00,07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00,18:00,19:00,20:00,21:00,22:00,23:00', 'oui', 'non', '2022', 'annaba', 'public', '5555', ''),
('vhjvj', 'ftr', '4656456', '456456', 'saouchi.ahmed.iskander.messaoud@gmail.com', 'medecine_generale', 'oui', '555', '555', '44', 39, 'oui', '00:00,01:00,02:00,03:00,04:00,05:00,06:00,07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00,18:00,19:00,20:00,21:00,22:00,23:00', 'oui', 'non', '2022', 'annaba', 'public', '5555', '1748972158_streamline_group-meeting-call-solid.png'),
('vhjvj', 'ftr', '4656456', '456456', 'saouchi.ahmed.iskander.messaoud@gmail.com', 'medecine_generale', 'oui', '555', '555', '44', 40, 'oui', '00:00,01:00,02:00,03:00,04:00,05:00,06:00,07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00,18:00,19:00,20:00,21:00,22:00,23:00', 'oui', 'non', '2022', 'annaba', 'public', '5555', '1748972162_streamline_group-meeting-call-solid.png'),
('vhjvj', 'ftr', '4656456', '456456', 'saouchi.ahmed.iskander.messaoud@gmail.com', 'medecine_generale', 'oui', '555', '555', '44', 41, 'oui', '00:00,01:00,02:00,03:00,04:00,05:00,06:00,07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00,18:00,19:00,20:00,21:00,22:00,23:00', 'oui', 'non', '2022', 'annaba', 'public', '5555', '1748972267_streamline_group-meeting-call-solid.png');

-- --------------------------------------------------------

--
-- Structure de la table `new_doctor`
--

CREATE TABLE `new_doctor` (
  `name_d` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `adress` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `specialite` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `confirmed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `new_doctor`
--

INSERT INTO `new_doctor` (`name_d`, `prenom`, `adress`, `specialite`, `confirmed`) VALUES
('2', '2', '2', '2', 0);

-- --------------------------------------------------------

--
-- Structure de la table `patientba7ara`
--

CREATE TABLE `patientba7ara` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `age` int NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `patientba7ara`
--

INSERT INTO `patientba7ara` (`id`, `name`, `age`, `registration_date`) VALUES
(1, 'k', 0, '2024-09-14 11:26:52'),
(2, 'allotabibi', 0, '2024-09-14 11:39:47'),
(3, 'allotabibi', 13, '2024-09-16 13:08:17'),
(4, 'allotabibi', 0, '2024-09-16 13:08:48'),
(5, 'allotabibi', 0, '2024-09-16 13:08:53'),
(6, 'hhhh', 0, '2025-01-14 14:15:11'),
(7, 'l', 12, '2025-01-14 14:15:55'),
(8, 'l', 12, '2025-01-14 14:16:07'),
(9, 'hhhh', 12, '2025-02-12 13:05:39');

-- --------------------------------------------------------

--
-- Structure de la table `patients`
--

CREATE TABLE `patients` (
  `full_name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `adress` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `phone_number` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `condition_text` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `report` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `patients`
--

INSERT INTO `patients` (`full_name`, `adress`, `phone_number`, `condition_text`, `confirmed`, `report`) VALUES
('Kiandria Manyen', 'Nipple i respect the fighting ', '+17302344626', '+17302344626', 1, 0),
('ThomasChumn', 'Bahrain', '85127652146', 'Supplement your way to success!\r\nYour commitment to health is worth celebrating!\r\nYour health, your ', 0, 0),
('Valeron83booni', 'United States of America', '82537989597', 'Hello. \r\n7Slots is a young online casino brand with a huge selection of gambling games, including bo', 0, 0),
('Torsten Fournier\r\n', 'Taiwan', '84961952485', 'Hi there, \r\n \r\nWhile checking your allotabibi.com for its ranks, I have noticed that there are some ', 0, 0),
('James Cook', 'United Kingdom', '84227353235', 'Dear sir/ma \r\nWe are a finance and investment company offering loans at 3% interest rate. We will be', 0, 0),
('Islacox', 'Poland', '85841552179', 'Dia duit, theastaigh uaim do phraghas a fháil.', 0, 0),
('NARYTHY2551760NEWETREWT', 'Madagascar', '84914917153', 'MERTHYTJTJ2551760MAWRERGTRH', 0, 0),
('', '', '', '', 0, 0),
('Robertcox', 'France', '81459962388', 'Hi, I wanted to know your price.', 0, 0),
('Mike Bjorn Lefevre\r\n', 'Netherlands Antilles', '85373767927', 'Hello, \r\n \r\nThis is Mike Little\r\n from Monkey Digital, \r\nI am reaching out to you like webmaster to ', 0, 0),
('Thank you for registering - it', 'Thank you for registering - it', '82797322211', 'Thank you for registering - it was incredible and pleasant all the best http://yandex.ru ladonna  cu', 0, 0),
('plumber_daot', 'Russia', '81176489987', 'Профессиональные сантехники в Сан-Хосе ждут вас!, Надежные услуги сантехника в вашем районе. \r\nДовер', 0, 0),
('NAYUYUTY4503438NERTHRRTH', 'Madagascar', '83868894648', 'MEJTYJY4503438MAWRERGTRH', 0, 0),
('Raymondawags', 'United Arab Emirates', '86972518548', 'Howdy! allotabibi.com \r\n \r\nDid you know that it is possible to send business proposal utterly in leg', 0, 0),
('Yacine ', 'Annaba', '0550476823', 'Transport sanitaire ', 0, 0),
('Search Engine', '86 Dabinett Road', '882140055', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google', 0, 0),
('', '', '', '', 0, 0),
('Search Engine', 'Feldham 80', '', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google', 0, 0),
('Jamayla Levstein', 'The technique in a while assau', '+13052516293', '+13052516293', 0, 0),
('Philippe Edward', 'Bulgaria', '82495227943', 'Bonjour, \r\n \r\nEn parcourant votre site, j’ai identifie des opportunites de financement qui pourraien', 0, 0),
('', '', '', '', 0, 0),
('Gary', 'keywords', '8054002077', 'I am not offering you SEO, nor PPC.\r\nThis is something completely different.\r\nJust send us keywords ', 0, 0),
('Search Engine', 'Am Kuhberg 88', '6501995577', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google', 0, 0),
('Search Engine', '37 Rue Isambard', '559342381', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google', 0, 0),
('Milagro', 'Ul. Jordanowska 102', '602837173', 'Are you ready to earn money from your website with minimal effort? ', 0, 0),
('Mike Horst David\r\n', 'New Zealand', '81886422926', 'Hi, \r\nWorried about hidden SEO issues on your website? Let us help — completely free. \r\nRun a 100% f', 0, 0),
('Search Engine', 'Sondanella 5', '334096285', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google', 0, 0),
('Chara', 'Lille Vibyvej 66', '20105254', 'Hello,\r\nWe’re looking to establish long-term cooperation. Please send us your offer and price list. ', 0, 0),
('Search Engine', 'Jerpevegen 93', '42515659', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google', 0, 0),
('Michaelcom', 'Mexico', '85667993839', 'На данном сайте вы сможете найти последние новости Краснодара. \r\nЗдесь размещены главные новости гор', 0, 0),
('WayneBof', 'Russia', '86761199741', ' Дающие слоты \r\nОптимизирован для смартфонов \r\nКазино с лицензией, дающие слоты \r\n \r\nновые игровые а', 0, 0),
('', '', '', '', 0, 0),
('Ute', 'Gleichenberger Strasse 6', '', '\r\nLooking for freedom in your marketing? Contact form ads are the breakthrough you need. Unlike soci', 0, 0),
('Merlin AI mix', 'America', '82991376275', '- Merlin AI – Your Universal Assistant for Work, Study, and Creativity! ??? \r\n- Merlin is a powerful', 0, 0),
('Larrynag', 'Poland', '84361814869', 'Are you looking to increase your visibility on Instagram, TikTok, or other platforms? \r\nWith Socpeak', 0, 0),
('Monica Maw', 'https://monica.im/invitation-a', '84659255684', '— Monica  – Your Ultimate AI Assistant for Every Task! \r\nLooking for a way to boost productivity and', 0, 0),
('1win', 'Australia', '84393858838', 'Within this platform, you can discover a variety virtual gambling platforms. \r\nSearching for traditi', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `redevous_medsin_admicile`
--

CREATE TABLE `redevous_medsin_admicile` (
  `nom_medsin` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom_medsin` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `tel_medsin` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `full_name_client` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `tel_client` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `adresse_client` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `date-heure` datetime NOT NULL,
  `specialiste` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `id` int NOT NULL,
  `id_medsin` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `id` int NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `whatsapp` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`id`, `nom`, `prenom`, `whatsapp`, `created_at`) VALUES
(1, 'k', 'll', 'lll', '2024-09-16 12:47:26'),
(2, 'kolk', 'll', '08888888', '2024-09-16 12:47:50'),
(3, 'llsoks', 'jaoa', '098262', '2024-09-16 13:00:36'),
(4, 'a', 'habib', '99999999', '2024-09-16 13:09:35'),
(5, 'a', 'nnn', '66666666666', '2024-09-16 13:41:04');

-- --------------------------------------------------------

--
-- Structure de la table `reservation_client`
--

CREATE TABLE `reservation_client` (
  `id` int NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `tel` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `age` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `diabete` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `cœur` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `pression` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Cancer` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `SIDA` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `service` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `specialite` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `paye` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `link_appel` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `medsin_nom` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `feedback_client_satisfe` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `feedback_client_msg` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `duree` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `diagnostic` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `traitement` varchar(400) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `examens_demandes` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rendez_vous` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_medsin` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `medsin_accepte` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `id_medsin` varchar(40) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reservation_client`
--

INSERT INTO `reservation_client` (`id`, `nom`, `prenom`, `tel`, `email`, `age`, `date`, `diabete`, `cœur`, `pression`, `Cancer`, `SIDA`, `service`, `specialite`, `paye`, `link_appel`, `medsin_nom`, `feedback_client_satisfe`, `feedback_client_msg`, `duree`, `diagnostic`, `traitement`, `examens_demandes`, `rendez_vous`, `email_medsin`, `medsin_accepte`, `id_medsin`) VALUES
(1, 'saouchi', 'saouchi', 'skander', 'saouchi.ahmed.iskander.messaoud@gmail.com', '44', '2025-05-16T14:23', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'pediatrie', 'non', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(2, 'saouchi', 'saouchi', 'skander', 'saouchi.ahmed.iskander.messaoud@gmail.com', '44', '2025-05-16T14:23', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'pediatrie', 'non', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(3, 'saouchi', 'saouchi', 'skander', 'saouchi.ahmed.iskander.messaoud@gmail.com', '44', '2025-05-16T14:23', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'pediatrie', 'non', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(4, 'saouchi', 'saouchi', 'skander', 'saouchi.ahmed.iskander.messaoud@gmail.com', '44', '2025-05-16T14:23', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'pediatrie', 'non', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(5, 'saouchi', 'saouchi', 'skander', 'saouchi.ahmed.iskander.messaoud@gmail.com', '44', '2025-05-16T14:23', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'pediatrie', 'non', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(6, 'saouchi', 'skander', '0667540078', 'saouchi.iskander@gmail.com', '44', '2025-05-16T15:10', '', '', '', '', '', 'immédiatement', 'pediatrie', 'yes', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(7, 'saouchi', 'skander', '0667540078', 'saouchi.iskander@gmail.com', '44', '2025-05-16T15:10', '', '', '', '', '', 'immédiatement', 'pediatrie', 'yes', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(8, 'samir', 'dd', '222', 'saouchi.iskander@gmail.com', '55', '2025-05-16T16:26', 'non', 'non', 'non', 'non', 'non', 'téléconsultation', 'pediatrie', 'yes', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(9, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '44', '2025-05-16T16:53', 'non', 'non', 'non', 'non', 'non', 'téléconsultation', 'pediatrie', 'non', 'null', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(10, 'saouchi', 'samir', '0667540078', 'saouchi.iskander@gmail.com', '44', '2025-05-16T16:57', 'non', 'non', 'non', 'non', 'non', 'téléconsultation', 'pediatrie', 'yes', 'https://meet.jit.si/teleconsultation_68276081513c5', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(11, 'saouchi', 'samir', '0667540078', 'saouchi.iskander@gmail.com', '44', '2025-05-16T16:57', 'non', 'non', 'non', 'non', 'non', 'téléconsultation', 'pediatrie', 'non', 'null', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(12, 'saouchi', 'skander', '0667540078', 'saouchi.iskander@gmail.com', '22', '2025-05-16T17:07', 'non', 'non', 'non', 'non', 'non', 'téléconsultation', 'pediatrie', 'yes', 'https://meet.jit.si/teleconsultation_682762dde4923', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(13, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '44', '2025-05-17T18:30', '', '', '', '', '', 'immédiatement', 'pediatrie', 'yes', 'https://meet.jit.si/teleconsultation_6828c7dcc3f62', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(14, 'saouchi', 'skander', '0667540078', 'saouchi.iskander@gmail.com', '44', '2025-05-26T16:02', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'Médecine Générale', 'non', 'null', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(15, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', '2025-05-20T14:40', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'Médecine Générale', 'non', 'null', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(16, 'نوري', 'skander', '0987645678', 'saouchi.ahmed.iskander.messaoud@gmail.com', '44', 'mediatement', '', '', '', '', '', 'immédiatement', 'Médecine Générale', 'non', 'null', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(17, 'نوري', 'skander', '0987645678', 'saouchi.ahmed.iskander.messaoud@gmail.com', '44', 'mediatement', '', '', '', '', '', 'immédiatement', 'Médecine Générale', 'non', 'null', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(18, 'نوري', 'skander', '0987645678', 'saouchi.ahmed.iskander.messaoud@gmail.com', '44', 'mediatement', '', '', '', '', '', 'immédiatement', 'Médecine Générale', 'non', 'null', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(19, 'نوري', 'skander', '0987645678', 'saouchi.ahmed.iskander.messaoud@gmail.com', '44', 'mediatement', '', '', '', '', '', 'immédiatement', 'Médecine Générale', 'non', 'null', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(20, 'نوري', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', '2025-05-21T13:24', '', '', '', '', '', 'rendevou', 'Pédiatrie', 'non', 'null', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(21, 'saouchi', 'ليلى', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '13', 'mediatement', '', '', '', '', '', 'immédiatement', 'Médecine Générale', 'non', 'null', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(22, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '13', '2025-05-28T14:47', '', '', '', '', '', 'rendevou', 'Ophtalmologie', 'non', 'null', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(23, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '13', '2025-05-30T15:50', '', '', '', '', '', 'rendevou', 'Ophtalmologie', 'non', 'null', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(24, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '13', '2025-05-30T15:50', '', '', '', '', '', 'rendevou', 'Ophtalmologie', 'non', 'null', 'Array', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(25, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '13', '2025-05-30T15:50', '', '', '', '', '', 'rendevou', 'Ophtalmologie', 'non', 'null', NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(26, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '13', '2025-05-30T15:50', '', '', '', '', '', 'rendevou', 'Ophtalmologie', 'non', 'null', NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(27, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '13', '2025-05-30T15:50', '', '', '', '', '', 'rendevou', 'Ophtalmologie', 'non', 'null', NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(28, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '13', '2025-05-30T15:50', '', '', '', '', '', 'rendevou', 'Ophtalmologie', 'non', 'null', NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(29, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '13', '2025-05-30T15:50', '', '', '', '', '', 'rendevou', 'Ophtalmologie', 'non', 'null', 'saouchi skander', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(30, 'ahmed iskander messaoud', 'samir', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '44', '2025-05-28T16:27', '', '', '', '', '', 'rendevou', 'Ophtalmologie', 'non', 'null', 'saouchi skander', '', '', NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(31, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', '2025-06-20T14:15', '', '', '', '', '', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(32, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', '2025-06-20T14:15', '', '', '', '', '', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(33, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', '2025-06-20T14:15', '', '', '', '', '', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(34, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', '2025-06-20T14:15', '', '', '', '', '', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(35, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', '2025-06-20T14:15', '', '', '', '', '', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(36, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', '2025-06-20T14:15', '', '', '', '', '', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(37, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', '2025-06-20T14:15', '', '', '', '', '', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(38, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', '2025-06-20T14:15', '', '', '', '', '', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(39, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', '2025-06-20T14:15', '', '', '', '', '', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(40, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', '2025-06-20T14:15', '', '', '', '', '', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(41, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', '2025-06-20T14:15', '', '', '', '', '', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(42, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', '2025-06-20T14:15', '', '', '', '', '', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(43, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', '2025-06-20T14:15', '', '', '', '', '', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(44, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', '2025-06-20T14:15', '', '', '', '', '', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(45, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', '2025-06-20T14:15', '', '', '', '', '', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(46, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', '2025-06-20T14:15', '', '', '', '', '', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(47, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', '2025-06-20T14:15', '', '', '', '', '', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(48, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', '2025-06-20T14:15', '', '', '', '', '', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(49, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', 'mediatement', '', '', '', '', '', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(50, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', 'mediatement', '', '', '', '', '', 'immédiatement', 'Médecine Générale', 'yes', 'https://meet.jit.si/teleconsultation_683e219f5119c', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(51, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', 'mediatement', '', '', '', '', '', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(52, 'saouchi', 'skander', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', 'mediatement', '', '', '', '', '', 'immédiatement', 'Médecine Générale', 'yes', 'https://meet.jit.si/teleconsultation_683e220a13f45', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(53, 'saouchi', 'skander', '0667540078', '3arabanana@gmail.com', '22', '2025-06-10T00:00', '', '', '', '', '', 'rendevou', 'Ophtalmologie', 'non', 'null', 'saouchi skander', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(54, 'saouchi', 'samir', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', 'mediatement', '', '', '', '', '', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(55, 'saouchi', 'samir', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', 'mediatement', '', '', '', '', '', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(56, 'saouchi', 'samir', '0667540078', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', 'mediatement', '', '', '', '', '', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(57, 'saouchi', 'skander', '0987645678', 'saouchi.ahmed.iskander.messaoud@gmail.com', '13', 'mediatement', '', '', '', '', '', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(58, 'saouchi', 'skander', '0987645678', 'saouchi.ahmed.iskander.messaoud@gmail.com', '13', 'mediatement', '', '', '', '', '', 'immédiatement', 'Médecine Générale', 'yes', 'https://meet.jit.si/teleconsultation_683e370fe84a3', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0', ''),
(59, 'saouchi', 'samir', '0987645678', 'saouchi.iskander@gmail.com', '44', '2025-07-12T00:57', '', '', '', '', '', 'rendevou', 'Ophtalmologie', 'non', 'null', 'saouchi skander', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaou', '0', ''),
(60, 'saouchi', 'samir', '0987645678', 'saouchi.iskander@gmail.com', '44', '2025-07-12T00:57', '', '', '', '', '', 'rendevou', 'Ophtalmologie', 'yes', 'https://meet.jit.si/teleconsultation_683e3bc744290', 'saouchi skander', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaou', '0', ''),
(61, 'saouchi', 'samir', '0987645678', 'saouchi.iskander@gmail.com', '44', '2025-07-12T00:57', '', '', '', '', '', 'rendevou', 'Ophtalmologie', 'non', 'null', 'saouchi skander', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '0', ''),
(62, 'saouchi', 'samir', '0987645678', 'saouchi.iskander@gmail.com', '44', '2025-07-12T00:57', '', '', '', '', '', 'rendevou', 'Ophtalmologie', 'yes', 'https://meet.jit.si/teleconsultation_683e3c683bb6f', 'saouchi skander', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '0', ''),
(63, 'saouchi', 'samir', '0987645678', 'saouchi.iskander@gmail.com', '44', '2025-07-12T00:57', '', '', '', '', '', 'rendevou', 'Ophtalmologie', 'non', 'null', 'saouchi skander', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '0', ''),
(64, 'saouchi', 'samir', '0987645678', 'saouchi.iskander@gmail.com', '44', '2025-07-12T00:57', '', '', '', '', '', 'rendevou', 'Ophtalmologie', 'non', 'null', 'saouchi skander', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '0', ''),
(65, 'saouchi', 'samir', '0987645678', 'saouchi.iskander@gmail.com', '44', '2025-07-12T00:57', '', '', '', '', '', 'rendevou', 'Ophtalmologie', 'non', 'null', 'saouchi skander', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '0', ''),
(66, 'saouchi', 'samir', '0987645678', 'saouchi.iskander@gmail.com', '44', '2025-07-12T00:57', '', '', '', '', '', 'rendevou', 'Ophtalmologie', 'non', 'null', 'saouchi skander', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '0', ''),
(67, 'saouchi', 'samir', '0987645678', 'saouchi.iskander@gmail.com', '44', '2025-07-12T00:57', '', '', '', '', '', 'rendevou', 'Ophtalmologie', 'non', 'null', 'saouchi skander', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '0', ''),
(68, 'saouchi', 'skander', '0987645678', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', 'mediatement', 'oui', 'oui', 'oui', 'oui', 'non', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '0', ''),
(69, 'saouchi', 'skander', '0987645678', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', 'mediatement', 'oui', 'oui', 'oui', 'oui', 'non', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '0', ''),
(70, 'saouchi', 'skander', '0987645678', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', 'mediatement', 'oui', 'oui', 'oui', 'oui', 'non', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '0', ''),
(71, 'saouchi', 'skander', '0987645678', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', 'mediatement', 'oui', 'oui', 'oui', 'oui', 'non', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '0', ''),
(72, 'saouchi', 'skander', '0987645678', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', 'mediatement', 'oui', 'oui', 'oui', 'oui', 'non', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '0', ''),
(73, 'saouchi', 'skander', '0987645678', 'saouchi.iskander@gmail.com', '22', 'mediatement', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '0', ''),
(74, 'saouchi', 'skander', '0987645678', 'saouchi.iskander@gmail.com', '22', 'mediatement', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'Médecine Générale', 'yes', 'https://meet.jit.si/teleconsultation_683f05ba617da', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '0', ''),
(75, 'saouchi', 'skander', '0987645678', 'saouchi.iskander@gmail.com', '22', 'mediatement', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '0', ''),
(76, 'saouchi', 'skander', '0987645678', 'saouchi.iskander@gmail.com', '22', 'mediatement', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'Médecine Générale', 'yes', 'https://meet.jit.si/teleconsultation_683f00052d38e', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '1', ''),
(77, 'saouchi', 'skander', '0987645678', 'saouchi.ahmed.iskander.messaoud@gmail.com', '13', '2025-06-10T15:31', 'non', 'non', 'non', 'non', 'non', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '', ''),
(78, 'saouchi', 'skander', '0987645678', 'saouchi.ahmed.iskander.messaoud@gmail.com', '13', '2025-06-10T15:31', 'non', 'non', 'non', 'non', 'non', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '', ''),
(79, 'saouchi', 'skander', '0987645678', 'saouchi.ahmed.iskander.messaoud@gmail.com', '13', '2025-06-10T15:31', 'non', 'non', 'non', 'non', 'non', 'rendevou', 'Médecine Générale', 'yes', 'https://meet.jit.si/teleconsultation_683f07f96f3ba', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '1', ''),
(80, 'ahmed iskander messaoud', 'skander', '0987645678', 'saouchi.ahmed.iskander.messaoud@gmail.com', '22', 'mediatement', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'Médecine Générale', 'yes', 'https://meet.jit.si/teleconsultation_683f1f3c5c582', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '', '36'),
(81, 'saouchi', 'skander', '0987645678', 'saouchi.ah@gmail.com', '44', 'mediatement', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'Médecine Générale', 'yes', 'https://meet.jit.si/teleconsultation_683f28d9abedb', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saouchi.ahmed.iskander.messaoud@gmail.com', '', '36'),
(82, 'saouchi', 'samir', '0987645678', 'saouchi.iskander@gmail.com', '22', 'mediatement', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drlahbib23@gmail.com', '', '36'),
(83, 'saouchi', 'samir', '0987645678', 'saouchi.iskander@gmail.com', '22', 'mediatement', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drlahbib23@gmail.com', '', '36'),
(84, 'saouchi', 'samir', '0987645678', 'saouchi.iskander@gmail.com', '22', 'mediatement', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drlahbib23@gmail.com', '', '36'),
(85, 'saouchi', 'samir', '0987645678', 'saouchi.iskander@gmail.com', '22', 'mediatement', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drlahbib23@gmail.com', '', '36'),
(86, 'saouchi', 'samir', '0987645678', 'saouchi.iskander@gmail.com', '22', 'mediatement', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drlahbib23@gmail.com', '', '36'),
(87, 'saouchi', 'samir', '0987645678', 'saouchi.iskander@gmail.com', '22', 'mediatement', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drlahbib23@gmail.com', '', '36'),
(88, 'saouchi', 'samir', '0987645678', 'saouchi.iskander@gmail.com', '22', 'mediatement', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drlahbib23@gmail.com', '', '36'),
(89, 'saouchi', 'samir', '0987645678', 'saouchi.iskander@gmail.com', '22', 'mediatement', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drlahbib23@gmail.com', '', '36'),
(90, 'saouchi', 'samir', '0987645678', 'saouchi.iskander@gmail.com', '22', 'mediatement', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'Médecine Générale', 'yes', 'https://meet.jit.si/teleconsultation_683f2a586b6c3', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drlahbib23@gmail.com', '1', '36'),
(91, 'saouchi', 'skander', '0987645678', 'saouchi.ahmed.iskander.messaoud@gmail.com', '44', 'mediatement', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'Médecine Générale', 'yes', 'https://meet.jit.si/teleconsultation_683f2c4f20de6', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drlahbib23@gmail.com', '1', '36'),
(92, 'ss', 'samir', '0987645678', 'saouchi.ahmed.iskander.messaoud@gmail.com', '44', 'mediatement', 'non', 'non', 'non', 'non', 'non', 'immédiatement', 'Médecine Générale', 'yes', 'https://meet.jit.si/teleconsultation_683f2ce8c93c7', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drlahbib23@gmail.com', '1', '36'),
(93, 'saouchi', 'skander', '0987645678', 'saouchi.ahmed.iskander.messaoud@gmail.com', '44', '2025-06-25T18:32', 'non', 'non', 'non', 'non', 'non', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drlahbib23@gmail.com', '', '36'),
(94, 'saouchi', 'skander', '0987645678', 'saouchi.ahmed.iskander.messaoud@gmail.com', '44', '2025-06-25T18:32', 'non', 'non', 'non', 'non', 'non', 'rendevou', 'Médecine Générale', 'non', 'null', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drlahbib23@gmail.com', '', '36'),
(95, 'saouchi', 'skander', '0987645678', 'saouchi.ahmed.iskander.messaoud@gmail.com', '44', '2025-06-25T18:32', 'non', 'non', 'non', 'non', 'non', 'rendevou', 'Médecine Générale', 'yes', 'https://meet.jit.si/teleconsultation_683f33eb094f4', 'www www', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drlahbib23@gmail.com', '', '36');

-- --------------------------------------------------------

--
-- Structure de la table `sales`
--

CREATE TABLE `sales` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Structure de la table `tendevous_teleconsultation`
--

CREATE TABLE `tendevous_teleconsultation` (
  `id` int NOT NULL,
  `id_medsin` int NOT NULL,
  `full_name_client` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `tel_client` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date_heure` datetime NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `link_api` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `password`) VALUES
('1', '12'),
('admin', '1111'),
('admin', '1111');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Code', 'Projects', '', '', 'thanos1.jpg', 1, '', '', '2018-05-01'),
(9, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', 'Silay City, Negros Occidental', '09092735719', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', 'demo', '7542214500', 'female3.jpg', 1, '', '', '2018-07-09');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `conseils`
--
ALTER TABLE `conseils`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `medsins`
--
ALTER TABLE `medsins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `medsins2`
--
ALTER TABLE `medsins2`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `patientba7ara`
--
ALTER TABLE `patientba7ara`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `redevous_medsin_admicile`
--
ALTER TABLE `redevous_medsin_admicile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_medsin` (`id_medsin`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservation_client`
--
ALTER TABLE `reservation_client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tendevous_teleconsultation`
--
ALTER TABLE `tendevous_teleconsultation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_medsin` (`id_medsin`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `conseils`
--
ALTER TABLE `conseils`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `medsins`
--
ALTER TABLE `medsins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `medsins2`
--
ALTER TABLE `medsins2`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `patientba7ara`
--
ALTER TABLE `patientba7ara`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `redevous_medsin_admicile`
--
ALTER TABLE `redevous_medsin_admicile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `reservation_client`
--
ALTER TABLE `reservation_client`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT pour la table `tendevous_teleconsultation`
--
ALTER TABLE `tendevous_teleconsultation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `redevous_medsin_admicile`
--
ALTER TABLE `redevous_medsin_admicile`
  ADD CONSTRAINT `fk_id_medsin` FOREIGN KEY (`id_medsin`) REFERENCES `medsins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `tendevous_teleconsultation`
--
ALTER TABLE `tendevous_teleconsultation`
  ADD CONSTRAINT `fk_medsin` FOREIGN KEY (`id_medsin`) REFERENCES `medsins` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
