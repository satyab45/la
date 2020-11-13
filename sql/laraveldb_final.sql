-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2020 at 11:50 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laraveldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backup_size` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

CREATE TABLE `boards` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `boards`
--

INSERT INTO `boards` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `description`, `status`) VALUES
(1, NULL, '2020-11-12 01:22:53', '2020-11-12 01:22:53', 'CBSE', 'CBSE board', 'Active'),
(2, NULL, '2020-11-12 01:23:14', '2020-11-12 01:23:14', 'ICSE', 'ICSE board', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `class_masters`
--

CREATE TABLE `class_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_masters`
--

INSERT INTO `class_masters` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `description`, `status`) VALUES
(1, '2020-11-12 01:12:29', '2020-11-12 01:09:36', '2020-11-12 01:12:29', '', '', 'Active'),
(2, '2020-11-12 01:12:27', '2020-11-12 01:09:46', '2020-11-12 01:12:27', '', '', 'Active'),
(3, NULL, '2020-11-12 01:12:49', '2020-11-12 01:12:49', 'Primary', 'Primary class', 'Active'),
(4, NULL, '2020-11-12 01:13:20', '2020-11-12 01:13:20', 'Nursery', 'Nursery class', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) UNSIGNED NOT NULL,
  `iso` char(2) CHARACTER SET latin1 NOT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `nicename` varchar(80) CHARACTER SET latin1 NOT NULL,
  `iso3` char(3) CHARACTER SET latin1 DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93, NULL, NULL, NULL),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355, NULL, NULL, NULL),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213, NULL, NULL, NULL),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684, NULL, NULL, NULL),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376, NULL, NULL, NULL),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244, NULL, NULL, NULL),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264, NULL, NULL, NULL),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0, NULL, NULL, NULL),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268, NULL, NULL, NULL),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54, NULL, NULL, NULL),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374, NULL, NULL, NULL),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297, NULL, NULL, NULL),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61, NULL, NULL, NULL),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43, NULL, NULL, NULL),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994, NULL, NULL, NULL),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242, NULL, NULL, NULL),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973, NULL, NULL, NULL),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880, NULL, NULL, NULL),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246, NULL, NULL, NULL),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375, NULL, NULL, NULL),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32, NULL, NULL, NULL),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501, NULL, NULL, NULL),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229, NULL, NULL, NULL),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441, NULL, NULL, NULL),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975, NULL, NULL, NULL),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591, NULL, NULL, NULL),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387, NULL, NULL, NULL),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267, NULL, NULL, NULL),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0, NULL, NULL, NULL),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55, NULL, NULL, NULL),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246, NULL, NULL, NULL),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673, NULL, NULL, NULL),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359, NULL, NULL, NULL),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226, NULL, NULL, NULL),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257, NULL, NULL, NULL),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855, NULL, NULL, NULL),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237, NULL, NULL, NULL),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1, NULL, NULL, NULL),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238, NULL, NULL, NULL),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345, NULL, NULL, NULL),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236, NULL, NULL, NULL),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235, NULL, NULL, NULL),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56, NULL, NULL, NULL),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86, NULL, NULL, NULL),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61, NULL, NULL, NULL),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672, NULL, NULL, NULL),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57, NULL, NULL, NULL),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269, NULL, NULL, NULL),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242, NULL, NULL, NULL),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242, NULL, NULL, NULL),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682, NULL, NULL, NULL),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506, NULL, NULL, NULL),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225, NULL, NULL, NULL),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385, NULL, NULL, NULL),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53, NULL, NULL, NULL),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357, NULL, NULL, NULL),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420, NULL, NULL, NULL),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45, NULL, NULL, NULL),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253, NULL, NULL, NULL),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767, NULL, NULL, NULL),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809, NULL, NULL, NULL),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593, NULL, NULL, NULL),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20, NULL, NULL, NULL),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503, NULL, NULL, NULL),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240, NULL, NULL, NULL),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291, NULL, NULL, NULL),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372, NULL, NULL, NULL),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251, NULL, NULL, NULL),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500, NULL, NULL, NULL),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298, NULL, NULL, NULL),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679, NULL, NULL, NULL),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358, NULL, NULL, NULL),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33, NULL, NULL, NULL),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594, NULL, NULL, NULL),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689, NULL, NULL, NULL),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0, NULL, NULL, NULL),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241, NULL, NULL, NULL),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220, NULL, NULL, NULL),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995, NULL, NULL, NULL),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49, NULL, NULL, NULL),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233, NULL, NULL, NULL),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350, NULL, NULL, NULL),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30, NULL, NULL, NULL),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299, NULL, NULL, NULL),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473, NULL, NULL, NULL),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590, NULL, NULL, NULL),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671, NULL, NULL, NULL),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502, NULL, NULL, NULL),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224, NULL, NULL, NULL),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245, NULL, NULL, NULL),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592, NULL, NULL, NULL),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509, NULL, NULL, NULL),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0, NULL, NULL, NULL),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39, NULL, NULL, NULL),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504, NULL, NULL, NULL),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852, NULL, NULL, NULL),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36, NULL, NULL, NULL),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354, NULL, NULL, NULL),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91, NULL, NULL, NULL),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62, NULL, NULL, NULL),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98, NULL, NULL, NULL),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964, NULL, NULL, NULL),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353, NULL, NULL, NULL),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972, NULL, NULL, NULL),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39, NULL, NULL, NULL),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876, NULL, NULL, NULL),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81, NULL, NULL, NULL),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962, NULL, NULL, NULL),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7, NULL, NULL, NULL),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254, NULL, NULL, NULL),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686, NULL, NULL, NULL),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850, NULL, NULL, NULL),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82, NULL, NULL, NULL),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965, NULL, NULL, NULL),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996, NULL, NULL, NULL),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856, NULL, NULL, NULL),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371, NULL, NULL, NULL),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961, NULL, NULL, NULL),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266, NULL, NULL, NULL),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231, NULL, NULL, NULL),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218, NULL, NULL, NULL),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423, NULL, NULL, NULL),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370, NULL, NULL, NULL),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352, NULL, NULL, NULL),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853, NULL, NULL, NULL),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389, NULL, NULL, NULL),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261, NULL, NULL, NULL),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265, NULL, NULL, NULL),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60, NULL, NULL, NULL),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960, NULL, NULL, NULL),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223, NULL, NULL, NULL),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356, NULL, NULL, NULL),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692, NULL, NULL, NULL),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596, NULL, NULL, NULL),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222, NULL, NULL, NULL),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230, NULL, NULL, NULL),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269, NULL, NULL, NULL),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52, NULL, NULL, NULL),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691, NULL, NULL, NULL),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373, NULL, NULL, NULL),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377, NULL, NULL, NULL),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976, NULL, NULL, NULL),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664, NULL, NULL, NULL),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212, NULL, NULL, NULL),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258, NULL, NULL, NULL),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95, NULL, NULL, NULL),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264, NULL, NULL, NULL),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674, NULL, NULL, NULL),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977, NULL, NULL, NULL),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31, NULL, NULL, NULL),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599, NULL, NULL, NULL),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687, NULL, NULL, NULL),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64, NULL, NULL, NULL),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505, NULL, NULL, NULL),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227, NULL, NULL, NULL),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234, NULL, NULL, NULL),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683, NULL, NULL, NULL),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672, NULL, NULL, NULL),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670, NULL, NULL, NULL),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47, NULL, NULL, NULL),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968, NULL, NULL, NULL),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92, NULL, NULL, NULL),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680, NULL, NULL, NULL),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970, NULL, NULL, NULL),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507, NULL, NULL, NULL),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675, NULL, NULL, NULL),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595, NULL, NULL, NULL),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51, NULL, NULL, NULL),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63, NULL, NULL, NULL),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0, NULL, NULL, NULL),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48, NULL, NULL, NULL),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351, NULL, NULL, NULL),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787, NULL, NULL, NULL),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974, NULL, NULL, NULL),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262, NULL, NULL, NULL),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40, NULL, NULL, NULL),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70, NULL, NULL, NULL),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250, NULL, NULL, NULL),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290, NULL, NULL, NULL),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869, NULL, NULL, NULL),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758, NULL, NULL, NULL),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508, NULL, NULL, NULL),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784, NULL, NULL, NULL),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684, NULL, NULL, NULL),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378, NULL, NULL, NULL),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239, NULL, NULL, NULL),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966, NULL, NULL, NULL),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221, NULL, NULL, NULL),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381, NULL, NULL, NULL),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248, NULL, NULL, NULL),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232, NULL, NULL, NULL),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65, NULL, NULL, NULL),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421, NULL, NULL, NULL),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386, NULL, NULL, NULL),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677, NULL, NULL, NULL),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252, NULL, NULL, NULL),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27, NULL, NULL, NULL),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0, NULL, NULL, NULL),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34, NULL, NULL, NULL),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94, NULL, NULL, NULL),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249, NULL, NULL, NULL),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597, NULL, NULL, NULL),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47, NULL, NULL, NULL),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268, NULL, NULL, NULL),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46, NULL, NULL, NULL),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41, NULL, NULL, NULL),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963, NULL, NULL, NULL),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886, NULL, NULL, NULL),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992, NULL, NULL, NULL),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255, NULL, NULL, NULL),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66, NULL, NULL, NULL),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670, NULL, NULL, NULL),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228, NULL, NULL, NULL),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690, NULL, NULL, NULL),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676, NULL, NULL, NULL),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868, NULL, NULL, NULL),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216, NULL, NULL, NULL),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90, NULL, NULL, NULL),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370, NULL, NULL, NULL),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649, NULL, NULL, NULL),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688, NULL, NULL, NULL),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256, NULL, NULL, NULL),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380, NULL, NULL, NULL),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971, NULL, NULL, NULL),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44, NULL, NULL, NULL),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1, NULL, NULL, NULL),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1, NULL, NULL, NULL),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598, NULL, NULL, NULL),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998, NULL, NULL, NULL),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678, NULL, NULL, NULL),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58, NULL, NULL, NULL),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84, NULL, NULL, NULL),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284, NULL, NULL, NULL),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340, NULL, NULL, NULL),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681, NULL, NULL, NULL),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212, NULL, NULL, NULL),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967, NULL, NULL, NULL),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260, NULL, NULL, NULL),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `tags`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Administration', '[]', '#000', NULL, '2020-11-11 23:58:02', '2020-11-11 23:58:02');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Male',
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_birth` date NOT NULL DEFAULT '1990-01-01',
  `date_hire` date NOT NULL,
  `date_left` date NOT NULL DEFAULT '1990-01-01',
  `salary_cur` decimal(15,3) NOT NULL DEFAULT 0.000,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `gender`, `mobile`, `mobile2`, `email`, `dept`, `city`, `address`, `about`, `date_birth`, `date_hire`, `date_left`, `salary_cur`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin@example.com', 'Super Admin', 'Male', '8888888888', '', 'admin@example.com', 1, 'Pune', 'Karve nagar, Pune 411030', 'About user / biography', '2020-11-12', '2020-11-12', '2020-11-12', '0.000', NULL, '2020-11-12 00:26:42', '2020-11-12 00:26:42');

-- --------------------------------------------------------

--
-- Table structure for table `la_configs`
--

CREATE TABLE `la_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_configs`
--

INSERT INTO `la_configs` (`id`, `key`, `section`, `value`, `created_at`, `updated_at`) VALUES
(1, 'sitename', '', 'LaraAdmin 1.0', '2020-11-11 23:58:07', '2020-11-12 00:53:09'),
(2, 'sitename_part1', '', 'Lara', '2020-11-11 23:58:07', '2020-11-12 00:53:09'),
(3, 'sitename_part2', '', 'Admin 1.0', '2020-11-11 23:58:07', '2020-11-12 00:53:09'),
(4, 'sitename_short', '', 'LA', '2020-11-11 23:58:08', '2020-11-12 00:53:10'),
(5, 'site_description', '', 'LaraAdmin is a open-source Laravel Admin Panel for quick-start Admin based applications and boilerplate for CRM or CMS systems.', '2020-11-11 23:58:08', '2020-11-12 00:53:10'),
(6, 'sidebar_search', '', '0', '2020-11-11 23:58:08', '2020-11-12 00:53:10'),
(7, 'show_messages', '', '0', '2020-11-11 23:58:08', '2020-11-12 00:53:10'),
(8, 'show_notifications', '', '0', '2020-11-11 23:58:08', '2020-11-12 00:53:10'),
(9, 'show_tasks', '', '0', '2020-11-11 23:58:08', '2020-11-12 00:53:10'),
(10, 'show_rightsidebar', '', '0', '2020-11-11 23:58:08', '2020-11-12 00:53:10'),
(11, 'skin', '', 'skin-white', '2020-11-11 23:58:08', '2020-11-12 00:53:10'),
(12, 'layout', '', 'fixed', '2020-11-11 23:58:08', '2020-11-12 00:53:10'),
(13, 'default_email', '', 'test@example.com', '2020-11-11 23:58:08', '2020-11-12 00:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `la_menus`
--

CREATE TABLE `la_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hierarchy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_menus`
--

INSERT INTO `la_menus` (`id`, `name`, `url`, `icon`, `type`, `parent`, `hierarchy`, `created_at`, `updated_at`) VALUES
(1, 'Academic', '#', 'fa-group', 'custom', 0, 2, '2020-11-11 23:58:01', '2020-11-12 01:07:37'),
(2, 'Users', 'users', 'fa-group', 'module', 1, 1, '2020-11-11 23:58:01', '2020-11-12 01:05:16'),
(3, 'Uploads', 'uploads', 'fa-files-o', 'module', 0, 1, '2020-11-11 23:58:01', '2020-11-12 01:05:15'),
(4, 'Departments', 'departments', 'fa-tags', 'module', 1, 2, '2020-11-11 23:58:01', '2020-11-12 01:05:16'),
(5, 'Employees', 'employees', 'fa-group', 'module', 1, 3, '2020-11-11 23:58:01', '2020-11-12 01:05:16'),
(6, 'Roles', 'roles', 'fa-user-plus', 'module', 1, 4, '2020-11-11 23:58:02', '2020-11-12 01:05:16'),
(7, 'Organizations', 'organizations', 'fa-university', 'module', 12, 4, '2020-11-11 23:58:02', '2020-11-12 01:07:55'),
(8, 'Permissions', 'permissions', 'fa-magic', 'module', 1, 5, '2020-11-11 23:58:02', '2020-11-12 02:06:27'),
(9, 'Subjects', 'subjects', 'fa fa-cube', 'module', 12, 1, '2020-11-12 00:56:07', '2020-11-12 01:07:33'),
(10, 'Boards', 'boards', 'fa fa-cube', 'module', 12, 3, '2020-11-12 00:58:03', '2020-11-12 01:07:55'),
(11, 'Class_Masters', 'class_masters', 'fa fa-cube', 'module', 12, 2, '2020-11-12 01:03:35', '2020-11-12 01:07:37'),
(12, 'Masters', 'http://', 'fa-cube', 'custom', 0, 3, '2020-11-12 01:05:10', '2020-11-12 01:07:37'),
(13, 'Schools', 'schools', 'fa fa-cube', 'module', 12, 5, '2020-11-12 01:37:38', '2020-11-12 02:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_05_26_050000_create_modules_table', 1),
('2014_05_26_055000_create_module_field_types_table', 1),
('2014_05_26_060000_create_module_fields_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_12_01_000000_create_uploads_table', 1),
('2016_05_26_064006_create_departments_table', 1),
('2016_05_26_064007_create_employees_table', 1),
('2016_05_26_064446_create_roles_table', 1),
('2016_07_05_115343_create_role_user_table', 1),
('2016_07_06_140637_create_organizations_table', 1),
('2016_07_07_134058_create_backups_table', 1),
('2016_07_07_134058_create_menus_table', 1),
('2016_09_10_163337_create_permissions_table', 1),
('2016_09_10_163520_create_permission_role_table', 1),
('2016_09_22_105958_role_module_fields_table', 1),
('2016_09_22_110008_role_module_table', 1),
('2016_10_06_115413_create_la_configs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_db` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view_col` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `label`, `name_db`, `view_col`, `model`, `controller`, `fa_icon`, `is_gen`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'Users', 'users', 'name', 'User', 'UsersController', 'fa-group', 1, '2020-11-11 23:57:28', '2020-11-11 23:58:08'),
(2, 'Uploads', 'Uploads', 'uploads', 'name', 'Upload', 'UploadsController', 'fa-files-o', 1, '2020-11-11 23:57:30', '2020-11-11 23:58:08'),
(3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2020-11-11 23:57:33', '2020-11-11 23:58:08'),
(4, 'Employees', 'Employees', 'employees', 'name', 'Employee', 'EmployeesController', 'fa-group', 1, '2020-11-11 23:57:34', '2020-11-11 23:58:08'),
(5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2020-11-11 23:57:36', '2020-11-11 23:58:08'),
(6, 'Organizations', 'Organizations', 'organizations', 'name', 'Organization', 'OrganizationsController', 'fa-university', 1, '2020-11-11 23:57:42', '2020-11-11 23:58:09'),
(7, 'Backups', 'Backups', 'backups', 'name', 'Backup', 'BackupsController', 'fa-hdd-o', 1, '2020-11-11 23:57:47', '2020-11-11 23:58:09'),
(8, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2020-11-11 23:57:48', '2020-11-11 23:58:09'),
(9, 'Subjects', 'Subjects', 'subjects', 'subject_name', 'Subject', 'SubjectsController', 'fa-cube', 1, '2020-11-12 00:53:44', '2020-11-12 00:56:50'),
(10, 'Boards', 'Boards', 'boards', 'board_name', 'Board', 'BoardsController', 'fa-cube', 1, '2020-11-12 00:57:05', '2020-11-12 00:58:03'),
(11, 'Class_Masters', 'Class_Masters', 'class_masters', 'class_name', 'Class_Master', 'Class_MastersController', 'fa-cube', 1, '2020-11-12 00:59:16', '2020-11-12 01:12:18'),
(12, 'Schools', 'Schools', 'schools', 'school_name', 'School', 'SchoolsController', 'fa-cube', 1, '2020-11-12 01:29:34', '2020-11-12 01:37:38'),
(13, 'Countries', 'Countries', 'countries', 'name', 'Country', 'CountriesController', 'fa-cube', 1, '2020-11-12 02:40:29', '2020-11-12 02:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `module_fields`
--

CREATE TABLE `module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `colname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(10) UNSIGNED NOT NULL,
  `field_type` int(10) UNSIGNED NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT 0,
  `defaultvalue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `popup_vals` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_fields`
--

INSERT INTO `module_fields` (`id`, `colname`, `label`, `module`, `field_type`, `unique`, `defaultvalue`, `minlength`, `maxlength`, `required`, `popup_vals`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'name', 'Name', 1, 16, 0, '', 5, 250, 1, '', 0, '2020-11-11 23:57:28', '2020-11-11 23:57:28'),
(2, 'context_id', 'Context', 1, 13, 0, '0', 0, 0, 0, '', 0, '2020-11-11 23:57:28', '2020-11-11 23:57:28'),
(3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, '2020-11-11 23:57:28', '2020-11-11 23:57:28'),
(4, 'password', 'Password', 1, 17, 0, '', 6, 250, 1, '', 0, '2020-11-11 23:57:29', '2020-11-11 23:57:29'),
(5, 'type', 'User Type', 1, 7, 0, 'Employee', 0, 0, 0, '[\"Employee\",\"Client\"]', 0, '2020-11-11 23:57:29', '2020-11-11 23:57:29'),
(6, 'name', 'Name', 2, 16, 0, '', 5, 250, 1, '', 0, '2020-11-11 23:57:30', '2020-11-11 23:57:30'),
(7, 'path', 'Path', 2, 19, 0, '', 0, 250, 0, '', 0, '2020-11-11 23:57:30', '2020-11-11 23:57:30'),
(8, 'extension', 'Extension', 2, 19, 0, '', 0, 20, 0, '', 0, '2020-11-11 23:57:31', '2020-11-11 23:57:31'),
(9, 'caption', 'Caption', 2, 19, 0, '', 0, 250, 0, '', 0, '2020-11-11 23:57:31', '2020-11-11 23:57:31'),
(10, 'user_id', 'Owner', 2, 7, 0, '1', 0, 0, 0, '@users', 0, '2020-11-11 23:57:31', '2020-11-11 23:57:31'),
(11, 'hash', 'Hash', 2, 19, 0, '', 0, 250, 0, '', 0, '2020-11-11 23:57:31', '2020-11-11 23:57:31'),
(12, 'public', 'Is Public', 2, 2, 0, '0', 0, 0, 0, '', 0, '2020-11-11 23:57:31', '2020-11-11 23:57:31'),
(13, 'name', 'Name', 3, 16, 1, '', 1, 250, 1, '', 0, '2020-11-11 23:57:33', '2020-11-11 23:57:33'),
(14, 'tags', 'Tags', 3, 20, 0, '[]', 0, 0, 0, '', 0, '2020-11-11 23:57:33', '2020-11-11 23:57:33'),
(15, 'color', 'Color', 3, 19, 0, '', 0, 50, 1, '', 0, '2020-11-11 23:57:33', '2020-11-11 23:57:33'),
(16, 'name', 'Name', 4, 16, 0, '', 5, 250, 1, '', 0, '2020-11-11 23:57:34', '2020-11-11 23:57:34'),
(17, 'designation', 'Designation', 4, 19, 0, '', 0, 50, 1, '', 0, '2020-11-11 23:57:34', '2020-11-11 23:57:34'),
(18, 'gender', 'Gender', 4, 18, 0, 'Male', 0, 0, 1, '[\"Male\",\"Female\"]', 0, '2020-11-11 23:57:34', '2020-11-11 23:57:34'),
(19, 'mobile', 'Mobile', 4, 14, 0, '', 10, 20, 1, '', 0, '2020-11-11 23:57:34', '2020-11-11 23:57:34'),
(20, 'mobile2', 'Alternative Mobile', 4, 14, 0, '', 10, 20, 0, '', 0, '2020-11-11 23:57:34', '2020-11-11 23:57:34'),
(21, 'email', 'Email', 4, 8, 1, '', 5, 250, 1, '', 0, '2020-11-11 23:57:34', '2020-11-11 23:57:34'),
(22, 'dept', 'Department', 4, 7, 0, '0', 0, 0, 1, '@departments', 0, '2020-11-11 23:57:34', '2020-11-11 23:57:34'),
(23, 'city', 'City', 4, 19, 0, '', 0, 50, 0, '', 0, '2020-11-11 23:57:34', '2020-11-11 23:57:34'),
(24, 'address', 'Address', 4, 1, 0, '', 0, 1000, 0, '', 0, '2020-11-11 23:57:34', '2020-11-11 23:57:34'),
(25, 'about', 'About', 4, 19, 0, '', 0, 0, 0, '', 0, '2020-11-11 23:57:34', '2020-11-11 23:57:34'),
(26, 'date_birth', 'Date of Birth', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2020-11-11 23:57:34', '2020-11-11 23:57:34'),
(27, 'date_hire', 'Hiring Date', 4, 4, 0, 'date(\'Y-m-d\')', 0, 0, 0, '', 0, '2020-11-11 23:57:34', '2020-11-11 23:57:34'),
(28, 'date_left', 'Resignation Date', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2020-11-11 23:57:34', '2020-11-11 23:57:34'),
(29, 'salary_cur', 'Current Salary', 4, 6, 0, '0.0', 0, 2, 0, '', 0, '2020-11-11 23:57:35', '2020-11-11 23:57:35'),
(30, 'name', 'Name', 5, 16, 1, '', 1, 250, 1, '', 0, '2020-11-11 23:57:36', '2020-11-11 23:57:36'),
(31, 'display_name', 'Display Name', 5, 19, 0, '', 0, 250, 1, '', 0, '2020-11-11 23:57:36', '2020-11-11 23:57:36'),
(32, 'description', 'Description', 5, 21, 0, '', 0, 1000, 0, '', 0, '2020-11-11 23:57:36', '2020-11-11 23:57:36'),
(33, 'parent', 'Parent Role', 5, 7, 0, '1', 0, 0, 0, '@roles', 0, '2020-11-11 23:57:36', '2020-11-11 23:57:36'),
(34, 'dept', 'Department', 5, 7, 0, '1', 0, 0, 0, '@departments', 0, '2020-11-11 23:57:37', '2020-11-11 23:57:37'),
(35, 'name', 'Name', 6, 16, 1, '', 5, 250, 1, '', 0, '2020-11-11 23:57:43', '2020-11-11 23:57:43'),
(36, 'email', 'Email', 6, 8, 1, '', 0, 250, 0, '', 0, '2020-11-11 23:57:43', '2020-11-11 23:57:43'),
(37, 'phone', 'Phone', 6, 14, 0, '', 0, 20, 0, '', 0, '2020-11-11 23:57:43', '2020-11-11 23:57:43'),
(38, 'website', 'Website', 6, 23, 0, 'http://', 0, 250, 0, '', 0, '2020-11-11 23:57:43', '2020-11-11 23:57:43'),
(39, 'assigned_to', 'Assigned to', 6, 7, 0, '0', 0, 0, 0, '@employees', 0, '2020-11-11 23:57:43', '2020-11-11 23:57:43'),
(40, 'connect_since', 'Connected Since', 6, 4, 0, 'date(\'Y-m-d\')', 0, 0, 0, '', 0, '2020-11-11 23:57:43', '2020-11-11 23:57:43'),
(41, 'address', 'Address', 6, 1, 0, '', 0, 1000, 1, '', 0, '2020-11-11 23:57:43', '2020-11-11 23:57:43'),
(42, 'city', 'City', 6, 19, 0, '', 0, 250, 1, '', 0, '2020-11-11 23:57:43', '2020-11-11 23:57:43'),
(43, 'description', 'Description', 6, 21, 0, '', 0, 1000, 0, '', 0, '2020-11-11 23:57:43', '2020-11-11 23:57:43'),
(44, 'profile_image', 'Profile Image', 6, 12, 0, '', 0, 250, 0, '', 0, '2020-11-11 23:57:44', '2020-11-11 23:57:44'),
(45, 'profile', 'Company Profile', 6, 9, 0, '', 0, 250, 0, '', 0, '2020-11-11 23:57:44', '2020-11-11 23:57:44'),
(46, 'name', 'Name', 7, 16, 1, '', 0, 250, 1, '', 0, '2020-11-11 23:57:47', '2020-11-11 23:57:47'),
(47, 'file_name', 'File Name', 7, 19, 1, '', 0, 250, 1, '', 0, '2020-11-11 23:57:47', '2020-11-11 23:57:47'),
(48, 'backup_size', 'File Size', 7, 19, 0, '0', 0, 10, 1, '', 0, '2020-11-11 23:57:47', '2020-11-11 23:57:47'),
(49, 'name', 'Name', 8, 16, 1, '', 1, 250, 1, '', 0, '2020-11-11 23:57:48', '2020-11-11 23:57:48'),
(50, 'display_name', 'Display Name', 8, 19, 0, '', 0, 250, 1, '', 0, '2020-11-11 23:57:48', '2020-11-11 23:57:48'),
(51, 'description', 'Description', 8, 21, 0, '', 0, 1000, 0, '', 0, '2020-11-11 23:57:49', '2020-11-11 23:57:49'),
(52, 'name', 'Subject Name', 9, 22, 0, '', 0, 256, 1, '', 0, '2020-11-12 00:55:09', '2020-11-12 02:56:11'),
(53, 'description', 'Subject Description', 9, 22, 0, '', 0, 256, 0, '', 0, '2020-11-12 00:55:54', '2020-11-12 02:56:17'),
(54, 'name', 'Board Name', 10, 22, 0, '', 0, 256, 1, '', 0, '2020-11-12 00:57:34', '2020-11-12 02:56:40'),
(55, 'description', 'Board Description', 10, 22, 0, '', 0, 256, 0, '', 0, '2020-11-12 00:57:58', '2020-11-12 02:56:46'),
(59, 'status', 'Status', 10, 7, 0, 'Active', 0, 0, 0, '[\"Active\",\"Inactive\"]', 0, '2020-11-12 01:04:14', '2020-11-12 01:04:14'),
(60, 'name', 'Class Name', 11, 22, 0, '', 0, 256, 1, '', 0, '2020-11-12 01:11:40', '2020-11-12 02:57:20'),
(61, 'description', 'Class Description', 11, 22, 0, '', 0, 256, 0, '', 0, '2020-11-12 01:11:55', '2020-11-12 02:57:25'),
(62, 'status', 'Status', 11, 7, 0, 'Active', 0, 0, 0, '[\"Active\",\"Inactive\"]', 0, '2020-11-12 01:12:14', '2020-11-12 01:12:14'),
(63, 'name', 'School Name', 12, 22, 0, '', 0, 256, 1, '', 1, '2020-11-12 01:30:08', '2020-11-12 02:52:04'),
(64, 'description', 'School Description', 12, 22, 0, '', 0, 256, 0, '', 2, '2020-11-12 01:31:33', '2020-11-12 02:52:10'),
(65, 'email', 'Email', 12, 22, 0, '', 0, 256, 0, '', 3, '2020-11-12 01:32:01', '2020-11-12 01:32:01'),
(66, 'mobile', 'Mobile', 12, 22, 0, '', 0, 256, 0, '', 4, '2020-11-12 01:32:17', '2020-11-12 01:32:17'),
(67, 'address', 'Address', 12, 21, 0, '', 0, 0, 0, '', 5, '2020-11-12 01:32:51', '2020-11-12 01:32:51'),
(69, 'organisation', 'Organization', 12, 7, 0, '', 0, 0, 0, '@organizations', 7, '2020-11-12 02:05:44', '2020-11-12 02:05:44'),
(70, 'name', 'name', 13, 22, 0, '', 0, 256, 1, '', 0, '2020-11-12 02:41:09', '2020-11-12 02:41:09'),
(71, 'country', 'Country', 12, 7, 0, '', 0, 0, 0, '@countries', 6, '2020-11-12 02:54:15', '2020-11-12 02:54:15'),
(72, 'tax_rate', 'Tax Rate', 12, 6, 0, '', 0, 11, 0, '', 8, '2020-11-12 02:55:35', '2020-11-12 02:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `module_field_types`
--

CREATE TABLE `module_field_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_field_types`
--

INSERT INTO `module_field_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Address', '2020-11-11 23:57:24', '2020-11-11 23:57:24'),
(2, 'Checkbox', '2020-11-11 23:57:24', '2020-11-11 23:57:24'),
(3, 'Currency', '2020-11-11 23:57:24', '2020-11-11 23:57:24'),
(4, 'Date', '2020-11-11 23:57:24', '2020-11-11 23:57:24'),
(5, 'Datetime', '2020-11-11 23:57:24', '2020-11-11 23:57:24'),
(6, 'Decimal', '2020-11-11 23:57:24', '2020-11-11 23:57:24'),
(7, 'Dropdown', '2020-11-11 23:57:24', '2020-11-11 23:57:24'),
(8, 'Email', '2020-11-11 23:57:25', '2020-11-11 23:57:25'),
(9, 'File', '2020-11-11 23:57:25', '2020-11-11 23:57:25'),
(10, 'Float', '2020-11-11 23:57:25', '2020-11-11 23:57:25'),
(11, 'HTML', '2020-11-11 23:57:25', '2020-11-11 23:57:25'),
(12, 'Image', '2020-11-11 23:57:25', '2020-11-11 23:57:25'),
(13, 'Integer', '2020-11-11 23:57:25', '2020-11-11 23:57:25'),
(14, 'Mobile', '2020-11-11 23:57:25', '2020-11-11 23:57:25'),
(15, 'Multiselect', '2020-11-11 23:57:25', '2020-11-11 23:57:25'),
(16, 'Name', '2020-11-11 23:57:25', '2020-11-11 23:57:25'),
(17, 'Password', '2020-11-11 23:57:25', '2020-11-11 23:57:25'),
(18, 'Radio', '2020-11-11 23:57:25', '2020-11-11 23:57:25'),
(19, 'String', '2020-11-11 23:57:25', '2020-11-11 23:57:25'),
(20, 'Taginput', '2020-11-11 23:57:25', '2020-11-11 23:57:25'),
(21, 'Textarea', '2020-11-11 23:57:25', '2020-11-11 23:57:25'),
(22, 'TextField', '2020-11-11 23:57:25', '2020-11-11 23:57:25'),
(23, 'URL', '2020-11-11 23:57:25', '2020-11-11 23:57:25'),
(24, 'Files', '2020-11-11 23:57:25', '2020-11-11 23:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'http://',
  `assigned_to` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `connect_since` date NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `profile_image` int(11) NOT NULL,
  `profile` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `email`, `phone`, `website`, `assigned_to`, `connect_since`, `address`, `city`, `description`, `profile_image`, `profile`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'organisation1', 'org1@gmail.com', '99999999', 'http://org.com', 1, '2001-04-05', 'org.com', 'hyderabad', '', 0, 0, NULL, '2020-11-12 01:34:08', '2020-11-12 01:34:29'),
(2, 'organisation2', 'org2@gmail.com', '', 'http://org.com', 1, '1970-01-01', 'fdfdaf', 'hyderabad', '', 0, 0, NULL, '2020-11-12 01:34:57', '2020-11-12 01:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN_PANEL', 'Admin Panel', 'Admin Panel Permission', NULL, '2020-11-11 23:58:07', '2020-11-11 23:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `dept` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `parent`, `dept`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', 1, 1, NULL, '2020-11-11 23:58:02', '2020-11-11 23:58:02');

-- --------------------------------------------------------

--
-- Table structure for table `role_module`
--

CREATE TABLE `role_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module`
--

INSERT INTO `role_module` (`id`, `role_id`, `module_id`, `acc_view`, `acc_create`, `acc_edit`, `acc_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2020-11-11 23:58:02', '2020-11-11 23:58:02'),
(2, 1, 2, 1, 1, 1, 1, '2020-11-11 23:58:02', '2020-11-11 23:58:02'),
(3, 1, 3, 1, 1, 1, 1, '2020-11-11 23:58:03', '2020-11-11 23:58:03'),
(4, 1, 4, 1, 1, 1, 1, '2020-11-11 23:58:03', '2020-11-11 23:58:03'),
(5, 1, 5, 1, 1, 1, 1, '2020-11-11 23:58:04', '2020-11-11 23:58:04'),
(6, 1, 6, 1, 1, 1, 1, '2020-11-11 23:58:05', '2020-11-11 23:58:05'),
(7, 1, 7, 1, 1, 1, 1, '2020-11-11 23:58:06', '2020-11-11 23:58:06'),
(8, 1, 8, 1, 1, 1, 1, '2020-11-11 23:58:06', '2020-11-11 23:58:06'),
(9, 1, 9, 1, 1, 1, 1, '2020-11-12 00:56:08', '2020-11-12 00:56:08'),
(10, 1, 10, 1, 1, 1, 1, '2020-11-12 00:58:03', '2020-11-12 00:58:03'),
(11, 1, 11, 1, 1, 1, 1, '2020-11-12 01:03:35', '2020-11-12 01:03:35'),
(12, 1, 12, 1, 1, 1, 1, '2020-11-12 01:37:38', '2020-11-12 01:37:38'),
(13, 1, 13, 1, 1, 1, 1, '2020-11-12 02:41:15', '2020-11-12 02:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `role_module_fields`
--

CREATE TABLE `role_module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `access` enum('invisible','readonly','write') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module_fields`
--

INSERT INTO `role_module_fields` (`id`, `role_id`, `field_id`, `access`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'write', '2020-11-11 23:58:02', '2020-11-11 23:58:02'),
(2, 1, 2, 'write', '2020-11-11 23:58:02', '2020-11-11 23:58:02'),
(3, 1, 3, 'write', '2020-11-11 23:58:02', '2020-11-11 23:58:02'),
(4, 1, 4, 'write', '2020-11-11 23:58:02', '2020-11-11 23:58:02'),
(5, 1, 5, 'write', '2020-11-11 23:58:02', '2020-11-11 23:58:02'),
(6, 1, 6, 'write', '2020-11-11 23:58:02', '2020-11-11 23:58:02'),
(7, 1, 7, 'write', '2020-11-11 23:58:02', '2020-11-11 23:58:02'),
(8, 1, 8, 'write', '2020-11-11 23:58:02', '2020-11-11 23:58:02'),
(9, 1, 9, 'write', '2020-11-11 23:58:02', '2020-11-11 23:58:02'),
(10, 1, 10, 'write', '2020-11-11 23:58:02', '2020-11-11 23:58:02'),
(11, 1, 11, 'write', '2020-11-11 23:58:02', '2020-11-11 23:58:02'),
(12, 1, 12, 'write', '2020-11-11 23:58:02', '2020-11-11 23:58:02'),
(13, 1, 13, 'write', '2020-11-11 23:58:03', '2020-11-11 23:58:03'),
(14, 1, 14, 'write', '2020-11-11 23:58:03', '2020-11-11 23:58:03'),
(15, 1, 15, 'write', '2020-11-11 23:58:03', '2020-11-11 23:58:03'),
(16, 1, 16, 'write', '2020-11-11 23:58:03', '2020-11-11 23:58:03'),
(17, 1, 17, 'write', '2020-11-11 23:58:03', '2020-11-11 23:58:03'),
(18, 1, 18, 'write', '2020-11-11 23:58:03', '2020-11-11 23:58:03'),
(19, 1, 19, 'write', '2020-11-11 23:58:03', '2020-11-11 23:58:03'),
(20, 1, 20, 'write', '2020-11-11 23:58:03', '2020-11-11 23:58:03'),
(21, 1, 21, 'write', '2020-11-11 23:58:03', '2020-11-11 23:58:03'),
(22, 1, 22, 'write', '2020-11-11 23:58:03', '2020-11-11 23:58:03'),
(23, 1, 23, 'write', '2020-11-11 23:58:03', '2020-11-11 23:58:03'),
(24, 1, 24, 'write', '2020-11-11 23:58:03', '2020-11-11 23:58:03'),
(25, 1, 25, 'write', '2020-11-11 23:58:03', '2020-11-11 23:58:03'),
(26, 1, 26, 'write', '2020-11-11 23:58:03', '2020-11-11 23:58:03'),
(27, 1, 27, 'write', '2020-11-11 23:58:03', '2020-11-11 23:58:03'),
(28, 1, 28, 'write', '2020-11-11 23:58:03', '2020-11-11 23:58:03'),
(29, 1, 29, 'write', '2020-11-11 23:58:03', '2020-11-11 23:58:03'),
(30, 1, 30, 'write', '2020-11-11 23:58:04', '2020-11-11 23:58:04'),
(31, 1, 31, 'write', '2020-11-11 23:58:04', '2020-11-11 23:58:04'),
(32, 1, 32, 'write', '2020-11-11 23:58:04', '2020-11-11 23:58:04'),
(33, 1, 33, 'write', '2020-11-11 23:58:04', '2020-11-11 23:58:04'),
(34, 1, 34, 'write', '2020-11-11 23:58:04', '2020-11-11 23:58:04'),
(35, 1, 35, 'write', '2020-11-11 23:58:05', '2020-11-11 23:58:05'),
(36, 1, 36, 'write', '2020-11-11 23:58:05', '2020-11-11 23:58:05'),
(37, 1, 37, 'write', '2020-11-11 23:58:05', '2020-11-11 23:58:05'),
(38, 1, 38, 'write', '2020-11-11 23:58:05', '2020-11-11 23:58:05'),
(39, 1, 39, 'write', '2020-11-11 23:58:05', '2020-11-11 23:58:05'),
(40, 1, 40, 'write', '2020-11-11 23:58:05', '2020-11-11 23:58:05'),
(41, 1, 41, 'write', '2020-11-11 23:58:05', '2020-11-11 23:58:05'),
(42, 1, 42, 'write', '2020-11-11 23:58:05', '2020-11-11 23:58:05'),
(43, 1, 43, 'write', '2020-11-11 23:58:05', '2020-11-11 23:58:05'),
(44, 1, 44, 'write', '2020-11-11 23:58:05', '2020-11-11 23:58:05'),
(45, 1, 45, 'write', '2020-11-11 23:58:05', '2020-11-11 23:58:05'),
(46, 1, 46, 'write', '2020-11-11 23:58:06', '2020-11-11 23:58:06'),
(47, 1, 47, 'write', '2020-11-11 23:58:06', '2020-11-11 23:58:06'),
(48, 1, 48, 'write', '2020-11-11 23:58:06', '2020-11-11 23:58:06'),
(49, 1, 49, 'write', '2020-11-11 23:58:06', '2020-11-11 23:58:06'),
(50, 1, 50, 'write', '2020-11-11 23:58:06', '2020-11-11 23:58:06'),
(51, 1, 51, 'write', '2020-11-11 23:58:06', '2020-11-11 23:58:06'),
(52, 1, 52, 'write', '2020-11-12 00:55:10', '2020-11-12 00:55:10'),
(53, 1, 53, 'write', '2020-11-12 00:55:54', '2020-11-12 00:55:54'),
(54, 1, 54, 'write', '2020-11-12 00:57:34', '2020-11-12 00:57:34'),
(55, 1, 55, 'write', '2020-11-12 00:57:59', '2020-11-12 00:57:59'),
(59, 1, 59, 'write', '2020-11-12 01:04:14', '2020-11-12 01:04:14'),
(60, 1, 60, 'write', '2020-11-12 01:11:40', '2020-11-12 01:11:40'),
(61, 1, 61, 'write', '2020-11-12 01:11:55', '2020-11-12 01:11:55'),
(62, 1, 62, 'write', '2020-11-12 01:12:15', '2020-11-12 01:12:15'),
(63, 1, 63, 'write', '2020-11-12 01:30:08', '2020-11-12 01:30:08'),
(64, 1, 64, 'write', '2020-11-12 01:31:34', '2020-11-12 01:31:34'),
(65, 1, 65, 'write', '2020-11-12 01:32:02', '2020-11-12 01:32:02'),
(66, 1, 66, 'write', '2020-11-12 01:32:17', '2020-11-12 01:32:17'),
(67, 1, 67, 'write', '2020-11-12 01:32:52', '2020-11-12 01:32:52'),
(69, 1, 69, 'write', '2020-11-12 02:05:45', '2020-11-12 02:05:45'),
(70, 1, 70, 'write', '2020-11-12 02:41:10', '2020-11-12 02:41:10'),
(71, 1, 71, 'write', '2020-11-12 02:54:16', '2020-11-12 02:54:16'),
(72, 1, 72, 'write', '2020-11-12 02:55:35', '2020-11-12 02:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `organisation` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `country` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `tax_rate` decimal(15,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `description`, `email`, `mobile`, `address`, `organisation`, `country`, `tax_rate`) VALUES
(32, NULL, '2020-11-13 04:13:15', '2020-11-13 04:13:15', 'fdsfdsf', 'fdsf', 'fsdf', '', '', 1, 1, '0.000');

-- --------------------------------------------------------

--
-- Table structure for table `school_class`
--

CREATE TABLE `school_class` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` time DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `cls` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `enabled` enum('0','1') CHARACTER SET utf8mb4 NOT NULL DEFAULT '1',
  `teacher` int(10) UNSIGNED DEFAULT NULL,
  `no_of_division` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `fee` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `school_class`
--

INSERT INTO `school_class` (`id`, `created_at`, `updated_at`, `deleted_at`, `cls`, `enabled`, `teacher`, `no_of_division`, `fee`, `school_id`) VALUES
(71, '2020-11-13 05:16:10', '10:46:10', NULL, 'Nursery', '0', 2, '54', 'fee', 32),
(72, '2020-11-13 05:16:10', '10:46:10', NULL, 'Jr KG', '1', 1, '54', 'fee', 32),
(73, '2020-11-13 05:16:10', '10:46:10', NULL, 'Sr. KG', '0', 1, '', 'fee', 32),
(74, '2020-11-13 05:16:10', '10:46:10', NULL, '1', '0', 1, '', 'fee', 32),
(75, '2020-11-13 05:16:10', '10:46:10', NULL, '2', '0', 1, '', 'fee', 32),
(76, '2020-11-13 05:16:10', '10:46:10', NULL, '3', '0', 1, '', 'fee', 32),
(77, '2020-11-13 05:16:10', '10:46:10', NULL, '4', '0', 1, '', 'fee', 32),
(78, '2020-11-13 05:16:10', '10:46:10', NULL, '5', '0', 1, '', 'fee', 32),
(79, '2020-11-13 05:16:10', '10:46:10', NULL, '6', '0', 1, '', 'fee', 32),
(80, '2020-11-13 05:16:10', '10:46:10', NULL, '7', '0', 1, '', 'fee', 32),
(81, '2020-11-13 05:16:10', '10:46:10', NULL, '8', '0', 1, '', 'fee', 32),
(82, '2020-11-13 05:16:10', '10:46:10', NULL, '9', '0', 1, '', 'fee', 32),
(83, '2020-11-13 05:16:10', '10:46:10', NULL, '10', '0', 1, '', 'fee', 32),
(84, '2020-11-13 05:16:10', '10:46:10', NULL, '11', '0', 1, '', 'fee', 32),
(85, '2020-11-13 05:16:10', '10:46:10', NULL, '12', '0', 1, '', 'fee', 32),
(86, '2020-11-13 05:16:10', '10:46:10', NULL, '13', '0', 1, '', 'fee', 32),
(87, '2020-11-13 05:16:10', '10:46:10', NULL, '14', '0', 1, '', 'fee', 32),
(88, '2020-11-13 05:16:10', '10:46:10', NULL, '15', '0', 1, '', 'fee', 32);

-- --------------------------------------------------------

--
-- Table structure for table `school_class_subjects`
--

CREATE TABLE `school_class_subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school_class_subjects`
--

INSERT INTO `school_class_subjects` (`id`, `created_at`, `updated_at`, `deleted_at`, `school_id`, `class_id`, `subject_id`) VALUES
(19, '2020-11-13 05:16:10', '2020-11-13 05:16:10', NULL, 32, 71, 2),
(20, '2020-11-13 05:16:10', '2020-11-13 05:16:10', NULL, 32, 72, 2),
(21, '2020-11-13 05:16:10', '2020-11-13 05:16:10', NULL, 32, 72, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `description`) VALUES
(1, NULL, '2020-11-12 01:08:57', '2020-11-12 01:22:24', 'Science', 'Science subject'),
(2, NULL, '2020-11-12 01:09:03', '2020-11-12 01:22:33', 'Maths', 'Maths subject');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hash` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `context_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Employee',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `context_id`, `email`, `password`, `type`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', 1, 'admin@example.com', '$2y$10$6/.9OwLNZlsQfc34E3bSUOdVj.WsivmEjva9VuUTZlP8Faaxsniam', 'Employee', NULL, NULL, '2020-11-12 00:26:42', '2020-11-12 00:26:42'),
(2, 'testuser', 2, 'testuser@example.com', '$2y$10$6/.9OwLNZlsQfc34E3bSUOdVj.WsivmEjva9VuUTZlP8Faaxsniam', 'Employee', NULL, NULL, '2020-11-12 00:26:42', '2020-11-12 00:26:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `backups_name_unique` (`name`),
  ADD UNIQUE KEY `backups_file_name_unique` (`file_name`);

--
-- Indexes for table `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_masters`
--
ALTER TABLE `class_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_dept_foreign` (`dept`);

--
-- Indexes for table `la_configs`
--
ALTER TABLE `la_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `la_menus`
--
ALTER TABLE `la_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_fields_module_foreign` (`module`),
  ADD KEY `module_fields_field_type_foreign` (`field_type`);

--
-- Indexes for table `module_field_types`
--
ALTER TABLE `module_field_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `organizations_name_unique` (`name`),
  ADD UNIQUE KEY `organizations_email_unique` (`email`),
  ADD KEY `organizations_assigned_to_foreign` (`assigned_to`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD KEY `roles_parent_foreign` (`parent`),
  ADD KEY `roles_dept_foreign` (`dept`);

--
-- Indexes for table `role_module`
--
ALTER TABLE `role_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_role_id_foreign` (`role_id`),
  ADD KEY `role_module_module_id_foreign` (`module_id`);

--
-- Indexes for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_fields_role_id_foreign` (`role_id`),
  ADD KEY `role_module_fields_field_id_foreign` (`field_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schools_organisation_foreign` (`organisation`),
  ADD KEY `schools_country_foreign` (`country`);

--
-- Indexes for table `school_class`
--
ALTER TABLE `school_class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cls_id` (`school_id`),
  ADD KEY `teacher` (`teacher`);

--
-- Indexes for table `school_class_subjects`
--
ALTER TABLE `school_class_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_class_subjects_ibfk_1` (`school_id`),
  ADD KEY `school_class_subjects_ibfk_2` (`class_id`),
  ADD KEY `school_class_subjects_ibfk_3` (`subject_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boards`
--
ALTER TABLE `boards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `class_masters`
--
ALTER TABLE `class_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `la_configs`
--
ALTER TABLE `la_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `la_menus`
--
ALTER TABLE `la_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `module_fields`
--
ALTER TABLE `module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `module_field_types`
--
ALTER TABLE `module_field_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_module`
--
ALTER TABLE `role_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `school_class`
--
ALTER TABLE `school_class`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `school_class_subjects`
--
ALTER TABLE `school_class_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`);

--
-- Constraints for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD CONSTRAINT `module_fields_field_type_foreign` FOREIGN KEY (`field_type`) REFERENCES `module_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_fields_module_foreign` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `organizations_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `employees` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `roles_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `roles` (`id`);

--
-- Constraints for table `role_module`
--
ALTER TABLE `role_module`
  ADD CONSTRAINT `role_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD CONSTRAINT `role_module_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `module_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_fields_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schools`
--
ALTER TABLE `schools`
  ADD CONSTRAINT `schools_country_foreign` FOREIGN KEY (`country`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `schools_organisation_foreign` FOREIGN KEY (`organisation`) REFERENCES `organizations` (`id`);

--
-- Constraints for table `school_class`
--
ALTER TABLE `school_class`
  ADD CONSTRAINT `school_class_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `school_class_ibfk_2` FOREIGN KEY (`teacher`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `school_class_subjects`
--
ALTER TABLE `school_class_subjects`
  ADD CONSTRAINT `school_class_subjects_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `school_class_subjects_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `school_class` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `school_class_subjects_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
