-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 23, 2023 at 07:33 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created`) VALUES
(1, 'Grimmia olneyi Sull.', '2022-12-21 11:19:10'),
(2, 'Hibiscus clypeatus L.', '2023-01-11 03:21:19'),
(3, 'Cyanea truncata (Rock) Rock', '2023-02-14 04:15:31'),
(4, 'Caloplaca groenlandica Lynge', '2023-01-14 08:48:10'),
(5, 'Erodium cicutarium (L.) L\'Hér. ex Aiton ssp. bipinnatum Tourlet', '2023-04-27 07:42:34'),
(6, 'Potentilla rivalis Nutt.', '2023-01-20 07:16:53'),
(7, 'Amphidium mougeotii (Bruch & Schimp.) Schimp.', '2023-06-12 15:45:07'),
(8, 'Pityrogramma chrysophylla (Sw.) Link var. subflexuosa (Domin) Proctor', '2023-02-09 11:05:41'),
(9, 'Chamaecrista lineata (Sw.) Greene', '2023-06-05 08:14:06'),
(10, 'Panicum trichanthum Nees', '2023-07-28 07:02:25'),
(11, 'Carex projecta Mack.', '2022-11-13 03:46:15'),
(12, 'Rhizocarpon chioneum (Norman) Th. Fr.', '2022-10-05 04:43:54'),
(13, 'Equisetum telmateia Ehrh. var. braunii (Milde) Milde', '2022-11-13 11:58:35'),
(14, 'Syzygium cumini (L.) Skeels', '2022-10-15 13:29:42'),
(15, 'Bidens hillebrandiana (Drake) O. Deg. ssp. hillebrandiana', '2023-06-06 20:00:48'),
(16, 'Packera neomexicana (A. Gray) W.A. Weber & Á. Löve var. metcalfei (Greene) D.K. Trock & T.M. Barkley', '2023-02-23 02:50:32'),
(17, 'Setariopsis auriculata (Fourn.) Scribn.', '2023-01-13 04:10:22'),
(18, 'Dieffenbachia Schott', '2023-05-15 14:05:52'),
(19, 'Cyanea procera Hillebr.', '2023-06-09 21:17:42'),
(20, 'Rubus recurvicaulis Blanch.', '2023-01-21 20:28:15'),
(21, 'Speerschneidera euploca (Tuck.) Trevis.', '2022-11-30 16:48:31'),
(22, 'Lecanora minutella Nyl.', '2023-06-03 08:20:29'),
(23, 'Amorpha nana Nutt.', '2022-10-03 20:30:26'),
(24, 'Mimulus nanus Hook. & Arn. var. mephiticus (A.L. Grant) D. M. Thomps.', '2023-01-19 12:07:25'),
(25, 'Valeriana edulis Nutt. ex Torr. & A. Gray var. ciliata (Torr. & A. Gray) Cronquist', '2023-02-16 21:46:35'),
(26, 'Mnium Hedw.', '2022-09-26 19:35:38'),
(27, 'Conium L.', '2023-05-23 23:47:39'),
(28, 'Caloplaca herbidella (Hue) H. Magn.', '2023-08-04 05:52:07'),
(29, 'Tecoma Juss.', '2023-07-02 18:20:38'),
(30, 'Crepis runcinata (James) Torr. & A. Gray ssp. andersonii (A. Gray) Babc. & Stebbins', '2023-06-14 16:47:20'),
(31, 'Thelotrema subtile Tuck.', '2023-03-14 17:09:35'),
(32, 'Polycnemum arvense L.', '2022-11-05 02:08:21'),
(33, 'Centaurea ×moncktonii C.E. Britton', '2023-06-10 01:52:58'),
(34, 'Quercus ajoensis C.H. Mull.', '2022-12-11 02:05:16'),
(35, 'Helianthus smithii Heiser', '2022-12-16 13:55:39'),
(36, 'Juncus effusus L. var. pylaei (Laharpe) Fernald & Wiegand', '2023-05-10 23:01:17'),
(37, 'Stellaria umbellata Turcz. ex Kar. & Kir.', '2023-08-07 20:38:41'),
(38, 'Astragalus sheldonii (Rydb.) Barneby', '2022-10-06 10:00:45'),
(39, 'Heliomeris Nutt.', '2023-04-13 12:38:45'),
(40, 'Juglans L.', '2022-12-03 02:50:16'),
(41, 'Galeopsis speciosa Mill.', '2023-03-13 09:14:13'),
(42, 'Euphorbia serrata L.', '2022-11-12 06:07:01'),
(43, 'Abronia bigelovii Heimerl', '2022-11-25 12:36:53'),
(44, 'Myelochroa obsessa (Ach.) Elix & Hale', '2022-11-26 08:58:39'),
(45, 'Baptisia calycosa Canby var. calycosa', '2023-03-05 22:26:47'),
(46, 'Symphoricarpos acutus (A. Gray) Dieck', '2022-10-04 22:23:00'),
(47, 'Calylophus berlandieri Spach ssp. pinifolius (Engelm. ex A. Gray) Towner', '2023-07-04 12:33:34'),
(48, 'Senna alata (L.) Roxb.', '2023-03-06 15:47:51'),
(49, 'Pinguicula planifolia Chapm.', '2023-05-17 03:45:48'),
(50, 'Stillingia spinulosa Torr.', '2023-05-18 21:30:21'),
(51, 'Ruta graveolens L.', '2022-12-01 07:05:50'),
(52, 'Lysimachia filifolia Forbes', '2023-01-24 09:13:49'),
(53, 'Ericameria palmeri (A. Gray) H.M. Hall var. palmeri', '2022-12-25 17:31:22'),
(54, 'Lupinus ×alpestris A. Nelson (pro sp.)', '2023-07-13 00:37:24'),
(55, 'Amelanchier arborea (Michx. f.) Fernald var. austromontana (Ashe) H.E. Ahles', '2022-11-03 11:25:20'),
(56, 'Selaginella eremophila Maxon', '2023-04-08 19:13:55'),
(57, 'Symphyotrichum ×woldenii (Rydb.) G.L. Nesom', '2022-09-30 21:10:18'),
(58, 'Dodecatheon poeticum L.F. Hend.', '2022-09-06 01:59:01'),
(59, 'Lesquerella condensata A. Nelson', '2023-05-15 11:49:07'),
(60, 'Melampodium L.', '2022-08-25 17:28:48'),
(61, 'Malacothrix foliosa A. Gray ssp. crispifolia W.S. Davis', '2023-06-18 06:27:24'),
(62, 'Zanthoxylum monophyllum (Lam.) P. Wilson', '2023-04-29 03:42:18'),
(63, 'Suaeda moquinii (Torr.) Greene', '2023-03-17 13:36:51'),
(64, 'Coccinia Wight & Arn.', '2022-10-22 01:09:36'),
(65, 'Amaranthus tamaulipensis Henrickson', '2022-09-16 01:50:38'),
(66, 'Passiflora cincinnata Masters', '2023-07-31 08:44:13'),
(67, 'Malvastrum americanum (L.) Torr.', '2022-11-29 22:04:13'),
(68, 'Clematis palmeri Rose', '2022-11-03 03:31:01'),
(69, 'Muhlenbergia Schreb.', '2023-06-18 21:11:48'),
(70, 'Thymus praecox Opiz ssp. arcticus (Durand) Jalas', '2023-06-02 14:53:15'),
(71, 'Cleistes Rich. ex Lindl.', '2022-09-21 07:41:42'),
(72, 'Phacelia glandulifera Piper', '2022-11-22 03:50:34'),
(73, 'Carex paeninsulae Naczi, E.L. Bridges & Orzell', '2022-10-03 08:10:11'),
(74, 'Wisteria ×formosa Rehder', '2023-05-16 22:43:34'),
(75, 'Erythronium americanum Ker Gawl. ssp. harperi (W. Wolf) Parks & Hardin', '2023-05-02 19:23:48'),
(76, 'Schwetschkeopsis fabronia (Schwägr.) Broth.', '2023-04-10 18:34:28'),
(77, 'Triantha occidentalis (S. Watson) Gates ssp. occidentalis', '2022-11-02 22:21:55'),
(78, 'Allium chinense G. Don', '2022-12-15 15:51:00'),
(79, 'Lecidea phaeopelidna Vain.', '2023-04-12 16:38:15'),
(80, 'Chamaecrista greggii (A. Gray) Pollard ex A. Heller', '2022-12-24 15:51:37'),
(81, 'Crataegus prona Ashe', '2022-09-14 12:06:42'),
(82, 'Sonchus tenerrimus L.', '2022-10-06 01:19:44'),
(83, 'Cabomba Aubl.', '2023-03-10 11:20:46'),
(84, 'Oxandra laurifolia (Sw.) A. Rich.', '2023-01-26 08:11:09'),
(85, 'Arabis murrayi G. Mulligan', '2023-04-16 19:15:42'),
(86, 'Heterotheca fulcrata (Greene) Shinners var. senilis (Wooton & Standl.) Semple', '2022-09-01 00:17:18'),
(87, 'Anzia colpodes (Ach.) Stizenb.', '2023-02-17 23:08:59'),
(88, 'Platanthera chorisiana (Cham.) Rchb.', '2023-06-25 11:20:46'),
(89, 'Dichanthelium oligosanthes (Schult.) Gould var. oligosanthes', '2022-10-10 23:22:26'),
(90, 'Scoliopus bigelovii Torr.', '2022-12-16 02:33:33'),
(91, 'Platanthera ×channellii J.P. Folsom', '2022-11-25 16:32:51'),
(92, 'Desmodium gramineum A. Gray', '2022-11-26 03:08:07'),
(93, 'Hesperostipa neomexicana (Thurb. ex J.M. Coult.) Barkworth', '2023-06-26 07:32:59'),
(94, 'Usnea deformis Mot.', '2023-06-24 05:35:47'),
(95, 'Atriplex ×aptera A. Nelson (pro sp.)', '2023-01-10 22:53:34'),
(96, 'Vicia sativa L. ssp. sativa', '2022-12-23 20:20:56'),
(97, 'Clermontia oblongifolia Gaudich. ssp. oblongifolia', '2022-11-09 21:15:39'),
(98, 'Pyrola chlorantha Sw.', '2023-03-30 02:22:48'),
(99, 'Muhlenbergia torreyi (Kunth) Hitchc. ex Bush', '2022-12-21 18:36:25'),
(100, 'Chaenactis fremontii A. Gray', '2023-08-06 15:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `content` text NOT NULL,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `tag` varchar(50) NOT NULL,
  `category_id` int NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `tag`, `category_id`, `created`, `modified`, `user_id`) VALUES
(3, 'Reactive real-time access', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'Technology', 3, '2023-03-10 19:23:10', '2023-02-26 10:52:28', 3),
(4, 'Implemented incremental Graphic Interface', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.', 'Technology', 4, '2022-10-23 21:07:45', '2022-11-06 01:18:03', 4),
(5, 'Extended homogeneous local area network', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor.', 'n/a', 5, '2022-08-26 18:14:40', '2022-11-12 13:25:14', 5),
(6, 'Quality-focused systemic groupware', 'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.', 'Technology', 6, '2022-12-19 20:48:05', '2023-06-02 01:03:48', 6),
(7, 'Fully-configurable zero administration focus group', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', 'Consumer Services', 7, '2022-11-28 02:31:06', '2022-09-28 00:05:58', 7),
(8, 'Progressive contextually-based parallelism', 'Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'Finance', 8, '2023-04-10 04:53:30', '2023-06-21 09:01:27', 8),
(9, 'Upgradable clear-thinking matrices', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.', 'Capital Goods', 9, '2022-11-29 12:21:37', '2023-01-01 13:58:09', 9),
(10, 'Diverse demand-driven secured line', 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'Consumer Services', 10, '2022-12-29 00:19:59', '2023-05-12 22:42:29', 10),
(11, 'Progressive scalable contingency', 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.', 'Capital Goods', 11, '2023-04-26 13:56:34', '2022-11-16 18:05:06', 11),
(12, 'De-engineered directional orchestration', 'Proin at turpis a pede posuere nonummy.', 'n/a', 12, '2022-10-08 08:14:24', '2022-11-27 05:06:49', 12),
(13, 'Stand-alone tertiary installation', 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.', 'Public Utilities', 13, '2023-06-06 09:51:27', '2022-10-31 21:25:01', 13),
(14, 'Proactive contextually-based matrices', 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', 'n/a', 14, '2023-01-11 10:43:53', '2023-03-27 20:51:19', 14),
(15, 'Reduced responsive toolset', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 'Finance', 15, '2023-07-27 09:39:10', '2022-10-27 14:46:59', 15),
(16, 'Right-sized human-resource process improvement', 'Sed accumsan felis.', 'Health Care', 16, '2023-03-28 14:52:57', '2023-05-16 14:43:37', 16),
(17, 'Multi-tiered dedicated portal', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'Technology', 17, '2022-11-08 13:10:38', '2023-08-08 23:04:46', 17),
(18, 'Ergonomic client-server concept', 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'Finance', 18, '2023-05-19 23:29:12', '2022-12-01 21:41:17', 18),
(19, 'Team-oriented upward-trending projection', 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.', 'Transportation', 19, '2023-07-03 21:31:16', '2023-03-01 17:05:36', 19),
(20, 'Triple-buffered dynamic firmware', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'Finance', 20, '2023-01-04 06:55:18', '2022-11-12 20:22:09', 20),
(21, 'Networked zero administration collaboration', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl.', 'Finance', 21, '2023-01-20 00:44:50', '2022-12-21 23:40:33', 21),
(22, 'Stand-alone heuristic Graphic Interface', 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', 'Finance', 22, '2022-12-11 06:25:46', '2022-10-05 20:33:58', 22),
(23, 'Stand-alone homogeneous secured line', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', 'Health Care', 23, '2023-05-10 16:33:11', '2023-07-14 18:29:24', 23),
(24, 'Optional content-based complexity', 'Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.', 'n/a', 24, '2023-06-15 13:58:54', '2023-02-07 14:23:07', 24),
(25, 'Open-architected systematic moratorium', 'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.', 'n/a', 25, '2022-10-05 01:06:56', '2022-09-17 12:05:21', 25),
(26, 'Phased disintermediate collaboration', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', 'n/a', 26, '2022-09-26 06:20:52', '2022-10-27 14:35:18', 26),
(27, 'Persevering leading edge installation', 'In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.', 'Consumer Services', 27, '2023-07-12 09:47:34', '2023-03-08 11:55:05', 27),
(28, 'Monitored intangible contingency', 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Consumer Non-Durables', 28, '2023-05-25 21:41:45', '2022-08-21 03:08:07', 28),
(29, 'Enterprise-wide foreground initiative', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', 'Consumer Services', 29, '2023-04-15 10:01:39', '2023-03-24 11:09:15', 29),
(30, 'Cross-group motivating application', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'n/a', 30, '2023-02-10 07:45:11', '2022-09-12 10:22:16', 30),
(31, 'Profound context-sensitive firmware', 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'n/a', 31, '2023-04-09 06:24:05', '2022-11-16 04:03:14', 31),
(32, 'Balanced didactic toolset', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', 'Public Utilities', 32, '2023-06-20 01:30:26', '2023-04-02 14:40:35', 32),
(33, 'Proactive disintermediate installation', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 'n/a', 33, '2023-01-29 21:55:45', '2023-04-03 09:01:04', 33),
(34, 'Open-source mobile support', 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'Finance', 34, '2023-02-13 01:43:48', '2022-08-21 17:09:40', 34),
(35, 'Robust impactful architecture', 'Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', 'Consumer Services', 35, '2023-07-16 07:40:16', '2023-07-21 01:25:11', 35),
(36, 'Multi-channelled impactful parallelism', 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', 'Finance', 36, '2022-09-15 22:49:57', '2023-05-21 07:40:15', 36),
(37, 'Universal zero tolerance hardware', 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo.', 'Consumer Services', 37, '2023-04-15 12:10:24', '2022-12-04 14:44:20', 37),
(38, 'Focused mobile function', 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'Technology', 38, '2022-12-11 01:41:28', '2023-02-04 08:29:54', 38),
(39, 'Universal object-oriented leverage', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', 'Consumer Durables', 39, '2022-10-27 18:25:57', '2022-12-02 21:36:42', 39),
(40, 'Fundamental even-keeled local area network', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'Health Care', 40, '2022-10-25 10:45:13', '2023-01-06 23:02:59', 40),
(41, 'Synergized full-range analyzer', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'Technology', 41, '2023-03-21 10:53:55', '2022-11-08 18:16:08', 41),
(42, 'Down-sized national middleware', 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'Capital Goods', 42, '2023-06-18 00:50:38', '2022-09-17 14:05:12', 42),
(43, 'Centralized systemic structure', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.', 'Finance', 43, '2022-12-28 23:36:34', '2022-09-02 22:13:34', 43),
(44, 'Stand-alone multi-tasking methodology', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'Finance', 44, '2022-12-19 02:04:06', '2022-11-11 12:31:21', 44),
(45, 'Front-line even-keeled process improvement', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 'n/a', 45, '2022-12-06 02:47:33', '2022-12-02 23:26:39', 45),
(46, 'Robust disintermediate neural-net', 'Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'Finance', 46, '2023-03-07 05:18:01', '2023-06-08 04:42:17', 46),
(47, 'Configurable hybrid access', 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.', 'Consumer Services', 47, '2023-03-07 00:20:48', '2023-04-13 21:49:30', 47),
(48, 'Business-focused grid-enabled structure', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.', 'Technology', 48, '2022-09-24 00:48:01', '2022-11-13 19:47:23', 48),
(49, 'Implemented logistical frame', 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'Finance', 49, '2023-08-18 20:51:12', '2023-06-25 15:13:51', 49),
(50, 'Face to face regional intranet', 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Consumer Non-Durables', 50, '2023-03-10 10:49:12', '2023-07-21 21:23:19', 50),
(51, 'Cross-platform zero tolerance support', 'Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.', 'Technology', 51, '2022-12-23 13:10:10', '2023-05-27 16:04:24', 51),
(52, 'Horizontal directional analyzer', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo.', 'Transportation', 52, '2022-09-29 08:15:35', '2022-09-22 10:57:53', 52),
(53, 'Multi-layered 5th generation matrix', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis.', 'n/a', 53, '2023-07-14 06:14:38', '2023-03-14 20:31:41', 53),
(54, 'Innovative object-oriented portal', 'Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy.', 'n/a', 54, '2023-07-28 08:39:10', '2022-11-08 03:23:10', 54),
(55, 'Monitored eco-centric portal', 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.', 'Technology', 55, '2022-10-23 12:43:18', '2023-05-15 06:04:21', 55),
(56, 'Object-based neutral attitude', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 'Finance', 56, '2023-08-05 10:12:25', '2023-08-06 00:31:39', 56),
(57, 'Ergonomic holistic artificial intelligence', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'Health Care', 57, '2023-02-21 18:54:48', '2023-01-07 18:19:18', 57),
(58, 'Extended incremental migration', 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'Energy', 58, '2022-10-09 10:59:29', '2023-01-12 09:33:43', 58),
(59, 'Vision-oriented zero defect internet solution', 'Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.', 'Finance', 59, '2022-09-14 02:29:56', '2023-06-12 01:07:29', 59),
(60, 'Front-line high-level toolset', 'Mauris ullamcorper purus sit amet nulla.', 'Finance', 60, '2022-09-06 10:24:16', '2022-10-12 09:07:13', 60),
(61, 'Visionary static firmware', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'Capital Goods', 61, '2023-04-16 12:14:48', '2023-04-07 21:47:05', 61),
(62, 'Versatile stable superstructure', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.', 'Consumer Non-Durables', 62, '2023-02-22 19:35:15', '2022-11-18 08:34:46', 62),
(63, 'Compatible local function', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.', 'n/a', 63, '2023-03-12 17:55:48', '2022-11-26 22:50:45', 63),
(64, 'Open-source empowering monitoring', 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.', 'Public Utilities', 64, '2022-12-29 11:29:18', '2022-10-08 19:07:49', 64),
(65, 'Switchable cohesive superstructure', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', 'Consumer Services', 65, '2023-04-08 04:46:13', '2022-08-22 19:29:57', 65),
(66, 'Seamless well-modulated conglomeration', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Consumer Services', 66, '2022-11-16 21:07:05', '2022-10-23 02:03:38', 66),
(67, 'Triple-buffered attitude-oriented service-desk', 'Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 'Health Care', 67, '2023-05-31 12:57:34', '2023-05-23 18:50:52', 67),
(68, 'Profound client-server info-mediaries', 'Suspendisse potenti. Nullam porttitor lacus at turpis.', 'n/a', 68, '2022-11-21 04:47:04', '2023-03-11 23:17:28', 68),
(69, 'Streamlined user-facing flexibility', 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'Capital Goods', 69, '2022-09-04 08:31:21', '2023-03-15 05:51:32', 69),
(70, 'Persistent contextually-based orchestration', 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 'Consumer Services', 70, '2023-03-07 01:20:22', '2022-09-01 00:29:38', 70),
(71, 'Synergized logistical moderator', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'Technology', 71, '2023-02-13 15:59:05', '2023-06-04 17:20:52', 71),
(72, 'Adaptive multi-state solution', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'Technology', 72, '2023-01-08 06:48:37', '2023-04-17 11:37:42', 72),
(73, 'Adaptive dynamic complexity', 'Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'Consumer Services', 73, '2023-05-14 14:32:52', '2022-12-14 23:36:28', 73),
(74, 'Customer-focused human-resource approach', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante.', 'Consumer Services', 74, '2022-11-26 03:02:23', '2023-01-19 16:09:58', 74),
(75, 'Seamless intangible archive', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Finance', 75, '2023-07-05 07:28:19', '2022-11-10 10:27:11', 75),
(76, 'Mandatory 3rd generation structure', 'Nunc rhoncus dui vel sem.', 'Consumer Durables', 76, '2023-04-03 06:31:07', '2022-12-29 20:20:52', 76),
(77, 'Streamlined fault-tolerant customer loyalty', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'n/a', 77, '2022-09-19 18:58:03', '2023-08-11 12:07:11', 77),
(78, 'Fundamental full-range collaboration', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.', 'Technology', 78, '2022-12-11 23:54:20', '2023-01-12 01:07:29', 78),
(79, 'Profit-focused analyzing standardization', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Finance', 79, '2023-04-14 02:51:06', '2022-11-29 04:57:13', 79),
(80, 'Devolved bifurcated focus group', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.', 'Public Utilities', 80, '2022-09-09 01:15:50', '2023-04-12 00:40:41', 80),
(81, 'Exclusive impactful matrix', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Finance', 81, '2023-07-13 16:30:23', '2023-02-27 21:38:25', 81),
(82, 'Operative optimizing moratorium', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'Health Care', 82, '2022-12-04 14:52:01', '2022-10-02 14:39:02', 82),
(83, 'Object-based exuding support', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo.', 'n/a', 83, '2022-11-07 23:11:35', '2023-08-01 13:00:24', 83),
(84, 'Cross-platform intangible structure', 'Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', 'Health Care', 84, '2023-03-14 18:18:45', '2023-01-31 03:52:49', 84),
(85, 'Triple-buffered eco-centric superstructure', 'Duis mattis egestas metus.', 'Technology', 85, '2023-04-21 10:31:48', '2023-03-04 02:14:34', 85),
(86, 'Cross-platform context-sensitive groupware', 'Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', 'Energy', 86, '2023-01-13 01:35:10', '2022-11-01 06:29:37', 86),
(87, 'Optional modular emulation', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 'Consumer Non-Durables', 87, '2023-03-05 08:48:26', '2022-12-22 05:50:16', 87),
(88, 'Quality-focused dynamic project', 'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'n/a', 88, '2022-11-05 12:27:47', '2023-01-20 10:16:46', 88),
(89, 'Expanded methodical intranet', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'Finance', 89, '2023-04-02 22:01:05', '2023-02-01 00:38:47', 89),
(90, 'Enterprise-wide empowering website', 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.', 'Finance', 90, '2022-10-08 12:39:43', '2023-04-18 07:13:54', 90),
(91, 'Devolved human-resource process improvement', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'Finance', 91, '2023-06-20 03:58:52', '2022-11-09 11:52:04', 91),
(92, 'Function-based multimedia initiative', 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'Finance', 92, '2023-06-04 14:29:19', '2022-12-21 12:15:28', 92),
(93, 'Right-sized tertiary framework', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'Capital Goods', 93, '2022-12-03 20:23:44', '2022-10-30 06:57:01', 93),
(94, 'Progressive client-server functionalities', 'Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', 'n/a', 94, '2022-10-24 04:46:18', '2023-02-16 02:04:10', 94),
(95, 'Face to face analyzing conglomeration', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'Technology', 95, '2023-01-23 13:20:43', '2022-11-27 14:31:35', 95),
(96, 'Ameliorated static neural-net', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'n/a', 96, '2023-02-07 01:41:08', '2022-12-30 08:52:30', 96),
(97, 'Integrated empowering solution', 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', 'n/a', 97, '2023-03-26 16:48:09', '2022-12-14 08:42:35', 97),
(98, 'Centralized zero tolerance protocol', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'Basic Industries', 98, '2023-04-11 16:37:33', '2022-12-06 19:35:23', 98),
(99, 'Distributed multi-state encryption', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.', 'Capital Goods', 99, '2023-07-24 22:58:51', '2023-04-19 19:49:00', 99),
(100, 'Proactive secondary local area network', 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', 'Energy', 100, '2022-11-11 02:43:10', '2023-02-26 00:59:14', 100);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int NOT NULL,
  `tag_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created`) VALUES
(1, 'root', 'root@example.com', '123456', '2023-02-22 22:36:47'),
(2, 'aguichard1', 'fsinkings1@hostgator.com', 'lG3_=O=@m9f6x?', '2023-07-23 04:51:30'),
(3, 'dboribal2', 'ljosifovic2@si.edu', 'mN7?}77=R+', '2022-11-30 15:15:09'),
(4, 'thayles3', 'cspargo3@github.io', 'fV2%HF`uSGqe*yZR', '2022-10-16 02:44:09'),
(5, 'srosie4', 'dmenel4@springer.com', 'nL7@Pau<H_&XIGR', '2022-09-10 19:24:10'),
(6, 'jfontaine5', 'lsheering5@fc2.com', 'cT5*@Wr#lo8j', '2022-12-12 11:08:49'),
(7, 'rluckin6', 'gcornbell6@dropbox.com', 'zP7\'zS*g', '2022-11-02 01:07:06'),
(8, 'cservis7', 'bmuggleston7@google.fr', 'bR0.2cuW_8', '2022-10-27 14:04:02'),
(9, 'dcregg8', 'mpeggs8@berkeley.edu', 'iC3)<h_\'e3j', '2022-12-07 20:25:55'),
(10, 'tmerrington9', 'aeverall9@istockphoto.com', 'jO1E@4u/eZ', '2022-09-29 11:02:08'),
(11, 'ahorlocka', 'gmiskimmona@patch.com', 'bW7*C!TIcKR\"fF3', '2023-04-30 09:04:11'),
(12, 'zboulterb', 'gcogglesb@berkeley.edu', 'rW3%)}ZS2a$ItN$g', '2023-02-10 09:50:28'),
(13, 'zmorforthc', 'akibbec@edublogs.org', 'zE8&$6#wy1Jpady0', '2023-06-27 06:58:07'),
(14, 'toganesiand', 'cslatfordd@w3.org', 'fG6)VAFd4y1', '2022-12-01 06:28:51'),
(15, 'ldrinkelde', 'cdoohere@youku.com', 'wK0|kOHWY}x4', '2022-09-11 23:44:16'),
(16, 'cchurchesf', 'isambellsf@spotify.com', 'lQ6|P$5~x}', '2023-05-22 14:38:10'),
(17, 'mfortg', 'cbointong@phoca.cz', 'vF3,=Pj.p>7Hz', '2023-08-14 08:04:21'),
(18, 'rmelchiorh', 'jbridellh@rakuten.co.jp', 'pV4(3SesbH2=.|v', '2022-11-11 16:06:32'),
(19, 'locallaghani', 'sbalchini@aol.com', 'vX1\"t>KQKAw', '2022-09-14 09:10:03'),
(20, 'cbuffhamj', 'smessinghamj@arstechnica.com', 'uR4}12()M', '2023-01-24 10:28:32'),
(21, 'ayakoboviczk', 'amcguirkk@geocities.jp', 'zK7&~C2$x32{>Uf', '2023-06-21 03:29:23'),
(22, 'fstrawl', 'sheishaml@merriam-webster.com', 'uE2>mRkdT7>D', '2023-08-11 02:06:59'),
(23, 'acranhamm', 'rlazarm@jalbum.net', 'nH1%W,25e{j', '2023-02-17 16:47:54'),
(24, 'gmorphetn', 'ldunkinsonn@delicious.com', 'zT7?uEjepNUEr', '2023-04-22 19:03:05'),
(25, 'gdowngateo', 'pbigleyo@slashdot.org', 'kJ9>xjSayN$6a*', '2022-09-16 22:42:48'),
(26, 'alowp', 'bgriggsp@yahoo.co.jp', 'dI1}d>oRQSrecm>', '2022-09-30 09:43:15'),
(27, 'dklaaassenq', 'harnoldq@springer.com', 'gA7@.MYD!yN&bjxV', '2022-10-21 20:03:15'),
(28, 'tandreoner', 'rstrakerr@prnewswire.com', 'cI7!#K02j_Y!so_', '2022-08-31 00:49:21'),
(29, 'cmaddens', 'ujakubovskis@webmd.com', 'yI6+iQex~u=ifb', '2022-09-10 22:53:27'),
(30, 'vmalyjt', 'ccowthardt@amazon.co.uk', 'bM4#Nd3&t_7#<u)', '2022-09-02 07:50:15'),
(31, 's1ks1', 's1ks1@gmail.com', 'c3535febaff29fcb7c0d20cbe94391c7', '2023-08-20 01:25:17'),
(32, 'jzmitrichenko0', 'mprys0@msn.com', 'mY2%SX5zvr5=', '2023-05-01 18:03:35'),
(33, 'fkubelka1', 'rcabral1@pagesperso-orange.fr', 'cD2/6%+3M', '2023-03-15 14:48:44'),
(34, 'mbill2', 'bpoundford2@google.ru', 'cG5+al55/Pz\'+', '2023-08-17 18:04:11'),
(35, 'cdudny3', 'ocaseri3@businessweek.com', 'tE3>R~}HGH#|=', '2022-08-24 02:58:43'),
(36, 'gsouthcott4', 'ilefeuvre4@goo.ne.jp', 'lA8(/Re!', '2023-01-30 03:35:20'),
(37, 'hbaelde5', 'psinisbury5@opensource.org', 'xR3)AOM', '2023-03-26 21:58:04'),
(38, 'jhurlestone6', 'kiannuzzelli6@google.co.jp', 'rU3}CwJ\'BI?a7I1z', '2022-10-16 20:43:17'),
(39, 'ckindall7', 'cboydell7@home.pl', 'oS5|.jEL8!=', '2022-08-22 11:03:07'),
(40, 'ltarzey8', 'mrisen8@hibu.com', 'xC0@3TL.', '2023-06-26 08:01:35'),
(41, 'eocorrin9', 'tbyres9@bing.com', 'pJ5(Mv+Pz_U@Y3', '2023-02-28 12:25:23'),
(42, 'tgambrella', 'mturfina@netscape.com', 'dJ2\'aHLeQKc', '2022-12-03 13:55:06'),
(43, 'drushmerb', 'haeryb@studiopress.com', 'dE6_Z2OmuEq2r', '2023-01-21 13:52:16'),
(44, 'rhawleyc', 'wbollumc@bloglines.com', 'zR6\'dyvm%', '2023-02-10 22:31:34'),
(45, 'hegletond', 'wlinkd@gnu.org', 'tH7%*$8Oa', '2022-12-29 13:07:47'),
(46, 'amcdouale', 'dmordine@vistaprint.com', 'rK5&oiE$ma', '2023-07-09 14:40:00'),
(47, 'rmerrallf', 'bnegrof@hostgator.com', 'jU9=18$R}x%G', '2022-09-12 09:40:50'),
(48, 'atottleg', 'mpittwayg@webs.com', 'yU8<#V97uT/Z3', '2023-04-25 18:22:38'),
(49, 'coswaldh', 'adrohunh@geocities.jp', 'mX2\'t3h{|63LzBl', '2022-11-14 18:16:32'),
(50, 'rpratei', 'ddurretti@blogs.com', 'yB9~d_{f', '2023-08-07 20:33:35'),
(51, 'lkittlej', 'mmcfaydenj@joomla.org', 'vJ1.YoCU', '2022-09-13 05:46:50'),
(52, 'glouthk', 'kferk@harvard.edu', 'mK1,H{`@,SradKz8', '2022-10-02 01:39:57'),
(53, 'tolivial', 'sblankingl@mysql.com', 'hB6}AmF1G=aZ<(tc', '2023-07-20 09:46:35'),
(54, 'cniavem', 'ncullimorem@aboutads.info', 'zS8`OYsXxBx', '2023-04-20 07:10:14'),
(55, 'kmaccumeskeyn', 'mbucknelln@army.mil', 'oX1\'D*9+\"', '2022-11-04 15:18:23'),
(56, 'fbathoeo', 'cnoddleso@google.ru', 'dV4*FF64*>jtR', '2022-12-27 13:12:44'),
(57, 'srenowdenp', 'mhuwsp@scribd.com', 'zV7/TpLq', '2023-05-31 09:08:51'),
(58, 'sgarroodq', 'kcozinsq@phoca.cz', 'uT9<E~ba1%Z', '2023-05-09 13:59:01'),
(59, 'ekarper', 'jsyversenr@sphinn.com', 'kC9}F&krYBS', '2022-11-17 00:29:43'),
(60, 'krooss', 'rhuggenss@deviantart.com', 'kN0C!3k>U', '2022-09-20 16:54:02'),
(61, 'ashouldert', 'gmartinezt@hud.gov', 'xG4,)nLyX+6lz', '2023-05-02 00:28:15'),
(62, 'rskepper0', 'hfiloniere0@bloglines.com', 'vY2_QcvJ', '2023-07-17 17:32:24'),
(63, 'falliband1', 'tkingsley1@wp.com', 'iP6%oMAR6#Jx&', '2023-06-12 04:24:47'),
(64, 'eprujean2', 'cborkett2@1688.com', 'aA7{WOl.55)O2q', '2023-02-10 07:03:07'),
(65, 'zhatrey3', 'nbunkle3@wufoo.com', 'dK8=w#%~`+WpABV', '2022-10-05 09:04:11'),
(66, 'nsimants4', 'adevennie4@livejournal.com', 'hG2|<py>', '2022-10-27 15:49:47'),
(67, 'hdenziloe5', 'meales5@blinklist.com', 'xU6}O%/c,f|2bH', '2023-01-30 05:30:03'),
(68, 'lbunnell6', 'itague6@nydailynews.com', 'dE1}tu7gjBhLXq', '2023-01-05 08:41:16'),
(69, 'hwearden7', 'bloudon7@intel.com', 'cH6*J>Y{n%7\'', '2023-07-30 03:18:54'),
(70, 'cfranchioni8', 'atrittam8@behance.net', 'jH9}S?GyX', '2023-01-07 11:18:43'),
(71, 'swebberley9', 'nquarrington9@europa.eu', 'xX3\\ke9e~>o$', '2023-04-04 06:50:08'),
(72, 'fbalmera', 'tmograa@vinaora.com', 'oZ9~BaFNYbFD<Hl&', '2023-01-11 06:41:39'),
(73, 'stocherb', 'kmoralesb@illinois.edu', 'iS6\"qsOd', '2022-09-23 03:10:36'),
(74, 'tbampfieldc', 'dborsayc@hostgator.com', 'vO3.\"+\'T&SqOKI`1', '2023-05-19 01:06:01'),
(75, 'cbartaluccid', 'mcannyd@un.org', 'nT2)=te*', '2022-11-26 09:28:32'),
(76, 'irolande', 'cfossee@europa.eu', 'sZ9+Fwm/yd)IbuP', '2023-01-13 05:47:32'),
(77, 'hmcguinleyf', 'arickabyf@zdnet.com', 'iF2<5/gZvh', '2023-04-30 15:30:22'),
(78, 'gbrasong', 'csidleg@slideshare.net', 'yJ6*7w~,}RE', '2023-02-10 10:53:08'),
(79, 'rculberth', 'cmatzeitish@shop-pro.jp', 'yK5,rJY@FyY', '2022-10-14 15:39:41'),
(80, 'egiercki', 'awagneri@theglobeandmail.com', 'uW7\">_&LAT', '2022-09-06 01:12:16'),
(81, 'mjindacekj', 'bmaffinj@newsvine.com', 'cB0!yY\"q|Szs', '2023-04-23 11:04:52'),
(82, 'ebundockk', 'pantonuccik@t-online.de', 'nS0@ov|p{9U', '2023-01-13 11:34:02'),
(83, 'krobinsonl', 'bhalbardl@instagram.com', 'mW8~JWP)mfGLDF', '2022-12-16 12:54:45'),
(84, 'aeylesm', 'zschmidtm@archive.org', 'rF4!Q*Q5L*i3Dd', '2022-10-04 00:49:54'),
(85, 'dpoultonn', 'cvasilyevskin@skyrock.com', 'jT5\"iHUaA{_pW.R', '2023-03-25 19:04:28'),
(86, 'hsaicho', 'civantsovo@about.com', 'xG0<w*}@', '2022-11-13 17:55:51'),
(87, 'nmallabarp', 'dkemetzp@gov.uk', 'qL1#zeMUB2B', '2023-04-17 10:51:52'),
(88, 'astihlq', 'cfuentesq@elpais.com', 'gP8?2p*R', '2023-02-01 08:48:53'),
(89, 'pchamper', 'jbauduinr@google.com.br', 'oI4|&(d_`@emzB}', '2023-04-19 10:50:39'),
(90, 'jrapes', 'vwroughtons@bravesites.com', 'nK6?Fr+ik(y6nLY', '2023-03-03 08:50:27'),
(91, 'cdanielst', 'acollingdont@rakuten.co.jp', 'aI3`xGljmjD!m_u', '2023-06-30 10:34:31'),
(92, 'gpedelu', 'amaldinu@shareasale.com', 'wC0,c4Sl.D', '2022-09-21 12:30:11'),
(93, 'cquarlessv', 'wnevinsonv@chicagotribune.com', 'aG9/8idnTP~JL', '2022-11-22 14:27:52'),
(94, 'nlindbladw', 'kbaxsterw@quantcast.com', 'dL8$EGW$B|W+', '2023-03-06 03:59:51'),
(95, 'sorteltx', 'emaciasx@cisco.com', 'sA5\"seLrOI\"&NfLi', '2023-05-15 11:04:16'),
(96, 'rstenetty', 'mwhitmarshy@netscape.com', 'rV5/mia\"G\"c5=', '2023-08-18 23:14:07'),
(97, 'ksugarsz', 'bloftingz@printfriendly.com', 'jX7*7{Jo', '2022-12-05 12:25:43'),
(98, 'awoodall10', 'fmacandreis10@vkontakte.ru', 'aI0\"Cq`SX_gI\'pE', '2023-06-07 10:18:43'),
(99, 'dmegahey11', 'lwilstead11@indiatimes.com', 'rW0.79#u%~}d%R!g', '2023-06-22 12:56:33'),
(100, 'ekyme12', 'efilisov12@umich.edu', 'rE9(sE4rU+&rN\'KC', '2023-03-13 19:54:16'),
(101, 'kscorey13', 'tcanny13@webmd.com', 'nQ0/x=*XSns#', '2022-11-27 09:09:35'),
(102, 'djedrzejewicz14', 'tlyons14@barnesandnoble.com', 'vO1/gS4/', '2023-05-04 17:16:09'),
(103, 'cbeslier15', 'abazely15@house.gov', 'rF2`ZlwR#{HAT9C', '2022-10-27 12:38:58'),
(104, 'idivers16', 'jnewman16@sciencedaily.com', 'zI0)s>>_KW$bxe0Z', '2023-04-27 10:04:05'),
(105, 'gnewsome17', 'elineen17@nbcnews.com', 'nM7.<IRnK$x{8', '2022-10-19 08:32:05'),
(106, 'eobradane18', 'osexon18@ucoz.com', 'cA7`}L57Bv$wF9', '2022-11-13 13:05:01'),
(107, 'jtrowle19', 'orivilis19@prweb.com', 'sV3_7<Y7Ta5=tr/I', '2022-10-17 21:08:38'),
(108, 'bstokey1a', 'hreboulet1a@unicef.org', 'oJ2+a.0W', '2022-12-20 21:27:05'),
(109, 'npile1b', 'bboyen1b@marketwatch.com', 'hY0|4=m<6f8E|VG', '2023-05-16 13:51:07'),
(110, 'apadell1c', 'mmerrall1c@wordpress.com', 'jR8,,\'MMLxp!V', '2023-06-13 21:37:06'),
(111, 'cdomelow1d', 'lmordecai1d@tiny.cc', 'iT9\'/u\'*d575', '2022-08-27 11:41:06'),
(112, 'yburvill1e', 'dclive1e@amazonaws.com', 'pM6)>bM6@3\'V', '2023-04-01 09:53:53'),
(113, 'wrooper1f', 'glundon1f@4shared.com', 'fZ3!yE(=uQzSWGVb', '2023-05-18 11:33:09'),
(114, 'msivior1g', 'teyles1g@bigcartel.com', 'zB6>~LB#', '2023-07-29 02:02:37'),
(115, 'csale1h', 'isorel1h@globo.com', 'rJ7%7L4{4*', '2023-07-25 14:07:37'),
(116, 'crawnsley1i', 'egormally1i@typepad.com', 'bI7<bwPv<((vz', '2023-08-07 18:19:22'),
(117, 'ogradwell1j', 'raucutt1j@multiply.com', 'rM4\'gD!c}{b!', '2023-01-31 16:12:39'),
(118, 'clutty1k', 'jmaas1k@disqus.com', 'vV7`6>H\'?pV4Tqm', '2022-12-02 13:44:38'),
(119, 'smacgaughie1l', 'bbreffit1l@ihg.com', 'vB9(Z@cip@XMM3', '2023-03-29 17:34:52'),
(120, 'kcasari1m', 'rmilliere1m@shop-pro.jp', 'qE8`kuvskz%6hm', '2023-07-14 05:26:52'),
(121, 'jfarlham1n', 'smylchreest1n@typepad.com', 'aP9f?dT&Xp', '2022-12-15 15:14:07'),
(122, 'nadess1o', 'bbuddles1o@fda.gov', 'mH9*mdC~eDay.>', '2023-06-05 16:36:47'),
(123, 'kbaldick1p', 'gmellon1p@cmu.edu', 'tT6.OiSj?mU', '2022-12-17 04:22:12'),
(124, 'mstreater1q', 'lraff1q@freewebs.com', 'uM0~k/,N+NJss<', '2023-02-10 23:10:10'),
(125, 'jrihanek1r', 'jales1r@discovery.com', 'wF7{c0K2T', '2022-12-14 11:25:55'),
(126, 'rskepper0', 'hfiloniere0@bloglines.com', 'vY2_QcvJ', '2023-07-17 17:32:24'),
(127, 'falliband1', 'tkingsley1@wp.com', 'iP6%oMAR6#Jx&', '2023-06-12 04:24:47'),
(128, 'eprujean2', 'cborkett2@1688.com', 'aA7{WOl.55)O2q', '2023-02-10 07:03:07'),
(129, 'zhatrey3', 'nbunkle3@wufoo.com', 'dK8=w#%~`+WpABV', '2022-10-05 09:04:11'),
(130, 'nsimants4', 'adevennie4@livejournal.com', 'hG2|<py>', '2022-10-27 15:49:47'),
(131, 'hdenziloe5', 'meales5@blinklist.com', 'xU6}O%/c,f|2bH', '2023-01-30 05:30:03'),
(132, 'lbunnell6', 'itague6@nydailynews.com', 'dE1}tu7gjBhLXq', '2023-01-05 08:41:16'),
(133, 'hwearden7', 'bloudon7@intel.com', 'cH6*J>Y{n%7\'', '2023-07-30 03:18:54'),
(134, 'cfranchioni8', 'atrittam8@behance.net', 'jH9}S?GyX', '2023-01-07 11:18:43'),
(135, 'swebberley9', 'nquarrington9@europa.eu', 'xX3\\ke9e~>o$', '2023-04-04 06:50:08'),
(136, 'fbalmera', 'tmograa@vinaora.com', 'oZ9~BaFNYbFD<Hl&', '2023-01-11 06:41:39'),
(137, 'stocherb', 'kmoralesb@illinois.edu', 'iS6\"qsOd', '2022-09-23 03:10:36'),
(138, 'tbampfieldc', 'dborsayc@hostgator.com', 'vO3.\"+\'T&SqOKI`1', '2023-05-19 01:06:01'),
(139, 'cbartaluccid', 'mcannyd@un.org', 'nT2)=te*', '2022-11-26 09:28:32'),
(140, 'irolande', 'cfossee@europa.eu', 'sZ9+Fwm/yd)IbuP', '2023-01-13 05:47:32'),
(141, 'hmcguinleyf', 'arickabyf@zdnet.com', 'iF2<5/gZvh', '2023-04-30 15:30:22'),
(142, 'gbrasong', 'csidleg@slideshare.net', 'yJ6*7w~,}RE', '2023-02-10 10:53:08'),
(143, 'rculberth', 'cmatzeitish@shop-pro.jp', 'yK5,rJY@FyY', '2022-10-14 15:39:41'),
(144, 'egiercki', 'awagneri@theglobeandmail.com', 'uW7\">_&LAT', '2022-09-06 01:12:16'),
(145, 'mjindacekj', 'bmaffinj@newsvine.com', 'cB0!yY\"q|Szs', '2023-04-23 11:04:52'),
(146, 'ebundockk', 'pantonuccik@t-online.de', 'nS0@ov|p{9U', '2023-01-13 11:34:02'),
(147, 'krobinsonl', 'bhalbardl@instagram.com', 'mW8~JWP)mfGLDF', '2022-12-16 12:54:45'),
(148, 'aeylesm', 'zschmidtm@archive.org', 'rF4!Q*Q5L*i3Dd', '2022-10-04 00:49:54'),
(149, 'dpoultonn', 'cvasilyevskin@skyrock.com', 'jT5\"iHUaA{_pW.R', '2023-03-25 19:04:28'),
(150, 'hsaicho', 'civantsovo@about.com', 'xG0<w*}@', '2022-11-13 17:55:51'),
(151, 'nmallabarp', 'dkemetzp@gov.uk', 'qL1#zeMUB2B', '2023-04-17 10:51:52'),
(152, 'astihlq', 'cfuentesq@elpais.com', 'gP8?2p*R', '2023-02-01 08:48:53'),
(153, 'pchamper', 'jbauduinr@google.com.br', 'oI4|&(d_`@emzB}', '2023-04-19 10:50:39'),
(154, 'jrapes', 'vwroughtons@bravesites.com', 'nK6?Fr+ik(y6nLY', '2023-03-03 08:50:27'),
(155, 'cdanielst', 'acollingdont@rakuten.co.jp', 'aI3`xGljmjD!m_u', '2023-06-30 10:34:31'),
(156, 'gpedelu', 'amaldinu@shareasale.com', 'wC0,c4Sl.D', '2022-09-21 12:30:11'),
(157, 'cquarlessv', 'wnevinsonv@chicagotribune.com', 'aG9/8idnTP~JL', '2022-11-22 14:27:52'),
(158, 'nlindbladw', 'kbaxsterw@quantcast.com', 'dL8$EGW$B|W+', '2023-03-06 03:59:51'),
(159, 'sorteltx', 'emaciasx@cisco.com', 'sA5\"seLrOI\"&NfLi', '2023-05-15 11:04:16'),
(160, 'rstenetty', 'mwhitmarshy@netscape.com', 'rV5/mia\"G\"c5=', '2023-08-18 23:14:07'),
(161, 'ksugarsz', 'bloftingz@printfriendly.com', 'jX7*7{Jo', '2022-12-05 12:25:43'),
(162, 'awoodall10', 'fmacandreis10@vkontakte.ru', 'aI0\"Cq`SX_gI\'pE', '2023-06-07 10:18:43'),
(163, 'dmegahey11', 'lwilstead11@indiatimes.com', 'rW0.79#u%~}d%R!g', '2023-06-22 12:56:33'),
(164, 'ekyme12', 'efilisov12@umich.edu', 'rE9(sE4rU+&rN\'KC', '2023-03-13 19:54:16'),
(165, 'kscorey13', 'tcanny13@webmd.com', 'nQ0/x=*XSns#', '2022-11-27 09:09:35'),
(166, 'djedrzejewicz14', 'tlyons14@barnesandnoble.com', 'vO1/gS4/', '2023-05-04 17:16:09'),
(167, 'cbeslier15', 'abazely15@house.gov', 'rF2`ZlwR#{HAT9C', '2022-10-27 12:38:58'),
(168, 'idivers16', 'jnewman16@sciencedaily.com', 'zI0)s>>_KW$bxe0Z', '2023-04-27 10:04:05'),
(169, 'gnewsome17', 'elineen17@nbcnews.com', 'nM7.<IRnK$x{8', '2022-10-19 08:32:05'),
(170, 'eobradane18', 'osexon18@ucoz.com', 'cA7`}L57Bv$wF9', '2022-11-13 13:05:01'),
(171, 'jtrowle19', 'orivilis19@prweb.com', 'sV3_7<Y7Ta5=tr/I', '2022-10-17 21:08:38'),
(172, 'bstokey1a', 'hreboulet1a@unicef.org', 'oJ2+a.0W', '2022-12-20 21:27:05'),
(173, 'npile1b', 'bboyen1b@marketwatch.com', 'hY0|4=m<6f8E|VG', '2023-05-16 13:51:07'),
(174, 'apadell1c', 'mmerrall1c@wordpress.com', 'jR8,,\'MMLxp!V', '2023-06-13 21:37:06'),
(175, 'cdomelow1d', 'lmordecai1d@tiny.cc', 'iT9\'/u\'*d575', '2022-08-27 11:41:06'),
(176, 'yburvill1e', 'dclive1e@amazonaws.com', 'pM6)>bM6@3\'V', '2023-04-01 09:53:53'),
(177, 'wrooper1f', 'glundon1f@4shared.com', 'fZ3!yE(=uQzSWGVb', '2023-05-18 11:33:09'),
(178, 'msivior1g', 'teyles1g@bigcartel.com', 'zB6>~LB#', '2023-07-29 02:02:37'),
(179, 'csale1h', 'isorel1h@globo.com', 'rJ7%7L4{4*', '2023-07-25 14:07:37'),
(180, 'crawnsley1i', 'egormally1i@typepad.com', 'bI7<bwPv<((vz', '2023-08-07 18:19:22'),
(181, 'ogradwell1j', 'raucutt1j@multiply.com', 'rM4\'gD!c}{b!', '2023-01-31 16:12:39'),
(182, 'clutty1k', 'jmaas1k@disqus.com', 'vV7`6>H\'?pV4Tqm', '2022-12-02 13:44:38'),
(183, 'smacgaughie1l', 'bbreffit1l@ihg.com', 'vB9(Z@cip@XMM3', '2023-03-29 17:34:52'),
(184, 'kcasari1m', 'rmilliere1m@shop-pro.jp', 'qE8`kuvskz%6hm', '2023-07-14 05:26:52'),
(185, 'jfarlham1n', 'smylchreest1n@typepad.com', 'aP9f?dT&Xp', '2022-12-15 15:14:07'),
(186, 'nadess1o', 'bbuddles1o@fda.gov', 'mH9*mdC~eDay.>', '2023-06-05 16:36:47'),
(187, 'kbaldick1p', 'gmellon1p@cmu.edu', 'tT6.OiSj?mU', '2022-12-17 04:22:12'),
(188, 'mstreater1q', 'lraff1q@freewebs.com', 'uM0~k/,N+NJss<', '2023-02-10 23:10:10'),
(189, 'jrihanek1r', 'jales1r@discovery.com', 'wF7{c0K2T', '2022-12-14 11:25:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`user_id`),
  ADD KEY `fk_category` (`category_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
