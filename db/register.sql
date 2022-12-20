-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2020 at 02:45 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register`
--

-- --------------------------------------------------------

--
-- Table structure for table `curhat`
--

CREATE TABLE `curhat` (
  `ID` int(11) NOT NULL,
  `Nama` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `pesan` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `curhat`
--

INSERT INTO `curhat` (`ID`, `Nama`, `Email`, `pesan`) VALUES
(1, 'ica', 'anisa.ica07@gmail.com', 'saya sangat sedih ');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(5) NOT NULL,
  `negara` varchar(50) NOT NULL,
  `tahun` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `negara`, `tahun`, `jumlah`) VALUES
(3, 'Afganistan', '2017', '16.830856836'),
(4, 'Albania', '2017', '10.8771176907'),
(5, 'Algeria', '2017', '14.548015406100001'),
(6, 'American Samoa', '2017', '10.8680774975'),
(7, 'Andean Latin America', '2017', '12.4034599669'),
(8, 'Andorra', '2017', '14.7179040524'),
(9, 'Angola', '2017', '12.398913329199999'),
(10, 'Argentina', '2017', '15.7382665508'),
(11, 'Australasia', '2017', '18.4344388084'),
(12, 'Australia', '2017', '18.3812834362'),
(13, 'Austria', '2017', '14.3621360785'),
(14, ' Azerbaijan', '2017', '10.458851198000001'),
(15, 'Bahamas', '2017', '13.354575487'),
(16, 'Bahrain', '2017', '14.124170985100001'),
(17, 'Bangladesh', '2017', '12.4596799748'),
(18, 'Belgium', '2017', '15.0180942245'),
(19, 'Belize', '2017', '13.434708123299998'),
(20, 'Benin', '2017', '11.8056244083'),
(21, 'Bermuda', '2017', '13.8201757523'),
(22, 'Bhutan', '2017', '11.893735802'),
(23, 'Bolivia', '2017', '12.763132273899998'),
(24, 'Bosnia and Herzegovina', '2017', '10.9893574544'),
(25, 'Botswana', '2017', '12.568166008600002'),
(26, 'Brazil', '2017', '14.512849458900002'),
(27, 'Brunei', '2017', '11.4519982632'),
(28, 'Bulgaria', '2017', '11.261921578099999'),
(29, 'Burkina Faso', '2017', '11.8687408697'),
(30, 'Burundi', '2017', '12.904224366100001'),
(31, 'Cambodia', '2017', '11.4996306561'),
(32, 'Cameroon', '2017', '11.8177970549'),
(33, 'Canada', '2017', '15.508528659000001'),
(34, 'Cape Verde', '2017', '12.3862865773'),
(35, 'Caribbean', '2017', '13.6808970984'),
(36, 'Central African Republic', '2017', '12.697162587300001'),
(37, 'Central Asia', '2017', '10.8315213575'),
(38, 'Central Europe', '2017', '11.0953181147'),
(39, 'Central Latin America', '2017', '10.744037070100001'),
(40, 'Central Sub-Saharan Africa', '2017', '12.4668321131'),
(41, 'Chad', '2017', '12.0658763734'),
(42, 'Chile', '2017', '16.0754862806'),
(43, 'China', '2017', '11.3965006176'),
(44, 'Colombia', '2017', '10.0351287835'),
(45, 'Costa Rica', '2017', '11.057277195'),
(46, 'Croatia', '2017', '11.4643839193'),
(47, 'Cuba', '2017', '14.104389763299999'),
(48, 'Cyprus', '2017', '14.248145311900002'),
(49, 'Czech Republic', '2017', '11.3507025196'),
(50, 'Democratic Republic of Congo', '2017', '12.4931858515'),
(51, 'Denmark', '2017', '14.269327961700002'),
(52, 'Dominica', '2017', '13.2793101046'),
(53, 'Dominican Republic', '2017', '13.547632386'),
(54, 'East Asia', '2017', '11.4065490096'),
(55, 'Eastern Europe', '2017', '11.8431072975'),
(56, 'Eastern Sub-Saharan Africa', '2017', '12.683053510699999'),
(57, 'Ecuador', '2017', '12.8031613894'),
(58, 'Egypt', '2017', '14.570804837199999'),
(59, 'El Salvador', '2017', '11.0363547107'),
(60, 'England', '2017', '14.595501598899999'),
(61, 'Equatorial Guinea', '2017', '12.4991770303'),
(62, 'Ethiopia', '2017', '12.8383497914'),
(63, 'Fiji', '2017', '11.1319887127'),
(64, 'Finland', '2017', '14.890241805199999'),
(65, 'France', '2017', '16.361245236'),
(66, 'Gabon', '2017', '12.3060472847'),
(67, 'Gambia', '2017', '12.2680581749'),
(68, 'Georgia', '2017', '10.7663552529'),
(69, 'Georgia', '2017', '10.7663552529'),
(70, 'Germany', '2017', '15.1776062466'),
(71, 'Ghana', '2017', '11.5170939412'),
(72, 'Greece', '2017', '15.517001364999999'),
(73, 'Greenland', '2017', '17.697975108799998'),
(74, 'Grenada', '2017', '13.398442210899999'),
(75, 'Guinea', '2017', '11.6485651948'),
(76, 'Haiti', '2017', '13.4740514163'),
(77, 'Hungary', '2017', '11.412395650199999'),
(78, 'Iceland', '2017', '14.212627927499998'),
(79, 'India', '2017', '14.529231647900001'),
(80, 'Indonesia', '2017', '10.6354836095'),
(81, 'Iran', '2017', '17.7287658901'),
(82, 'Iraq', '2017', '13.681767070600001'),
(83, 'Ireland', '2017', '15.606099602699999'),
(84, 'Israel', '2017', '12.716614730600002'),
(85, 'Italy', '2017', '14.889969984599999'),
(86, 'Jamaica', '2017', '13.2697158997'),
(87, 'Japan', '2017', '12.3609159143'),
(88, 'Jordan', '2017', '14.3374578074'),
(89, 'Kazakhstan', '2017', '11.2377359033'),
(90, 'Kenya', '2017', '12.3249991188'),
(91, 'Kiribati', '2017', '11.3679480118'),
(92, 'Kuwait', '2017', '14.1380800547'),
(93, 'Kyrgyzstan', '2017', '11.0068138706'),
(94, 'Laos', '2017', '12.0144683795'),
(95, 'Latin America and Caribbean', '2017', '12.607843483'),
(96, 'Latvia', '2017', '11.6333516914'),
(97, 'Lebanon', '2017', '15.9457488995'),
(98, 'Liberia', '2017', '12.054468446'),
(99, 'Libya', '2017', '14.5869455142'),
(100, 'Luxembourg', '2017', '14.6309888939'),
(101, 'Macedonia', '2017', '11.0017653831'),
(102, 'Madagascar', '2017', '12.5942648913'),
(103, 'Malawi', '2017', '12.324655638900001'),
(104, 'Malaysia', '2017', '12.1506963877'),
(105, 'Maldives', '2017', '11.0668351758'),
(106, 'Mali', '2017', '11.2163602981'),
(107, 'Malta', '2017', '14.357248090399999'),
(108, 'Marshall Islands', '2017', '11.1562201134'),
(109, 'Mexico', '2017', '10.869710381800001'),
(110, 'Moldova', '2017', '11.5677789844'),
(111, 'Mongolia', '2017', '11.237325268'),
(112, 'Montenegro', '2017', '11.2256978346'),
(113, 'Morocco', '2017', '16.180891358'),
(114, 'Mozambique', '2017', '12.739506216999999'),
(115, 'Myanmar', '2017', '10.5101784292'),
(116, 'Namibia', '2017', '12.107111960300001'),
(117, 'Nepal', '2017', '12.801883147599998'),
(118, 'Netherlands', '2017', '16.0445936088'),
(119, 'New Zealand', '2017', '18.7124207228'),
(120, 'Nigeria', '2017', '11.948505579899999'),
(121, 'North Africa and Middle East', '2017', '15.2508310797'),
(122, 'North America', '2017', '17.1638880406'),
(123, 'North Korea', '2017', '11.8499929531'),
(124, 'Northern Ireland', '2017', '17.262592929900002'),
(125, 'Northern Mariana Islands', '2017', '11.035894073'),
(126, 'Norway', '2017', '16.1195478965'),
(127, 'Oceania', '2017', '11.280698416'),
(128, 'Oman', '2017', '13.6324606456'),
(129, 'Pakistan', '2017', '11.9676219096'),
(130, 'Palestine', '2017', '15.906655688599999'),
(131, 'Panama', '2017', '10.7820480182'),
(132, 'Papua New Guinea', '2017', '11.3045826928'),
(134, 'Paraguay', '2017', '14.1922848005'),
(135, 'Peru', '2017', '12.097070366'),
(136, 'Philippines', '2017', '10.826137213900001'),
(137, 'Poland', '2017', '10.983524423'),
(138, 'Portugal', '2017', '15.3111569041'),
(139, 'Puerto Rico', '2017', '13.5955936631'),
(140, 'Qatar', '2017', '13.5942830494'),
(141, 'Romania', '2017', '10.827601318700001'),
(142, 'Russia', '2017', '11.7366593238'),
(143, 'Rwanda', '2017', '12.7185847636'),
(144, 'Saint Lucia', '2017', '13.513722414000002'),
(145, 'Saint Vincent and the Grenadines', '2017', '13.4264459039'),
(146, 'Saudi Arabia', '2017', '13.6251466852'),
(147, 'Scotland', '2017', '14.308212951999998'),
(148, 'Serbia', '2017', '11.2066544713'),
(149, 'Sierra Leone', '2017', '11.733323189'),
(150, 'Singapore', '2017', '12.441058958400001'),
(151, 'Slovakia', '2017', '11.0868433214'),
(152, 'Solomon Islands', '2017', '11.3679379993'),
(153, 'Somalia', '2017', '13.0370049424'),
(154, 'South Africa', '2017', '12.7783935594'),
(155, 'South Korea', '2017', '11.8085065171'),
(156, 'Spain', '2017', '16.1766418629'),
(157, 'Sri Lanka', '2017', '11.4830859386'),
(158, 'Sudan', '2017', '16.0817146194'),
(159, 'Suriname', '2017', '14.3963693666'),
(160, 'Swaziland', '2017', '12.553792624900002'),
(161, 'Sweden', '2017', '15.5630025941'),
(162, 'Switzerland', '2017', '14.8574804285'),
(163, 'Syria', '2017', '14.8158974468'),
(164, 'Taiwan', '2017', '11.5221722912'),
(165, 'Tajikistan', '2017', '10.6782964983'),
(166, 'Tanzania', '2017', '12.3907610146'),
(167, 'Thailand', '2017', '11.7816199458'),
(168, 'Timor Leste', '2017', '11.6274882427'),
(169, 'Tunisia', '2017', '15.299520394999998'),
(170, 'Turkey', '2017', '14.305150706600001'),
(171, 'Turkmenistan', '2017', '10.6692020176'),
(172, 'Turkmenistan', '2017', '10.6686793052'),
(173, 'Uganda', '2017', '13.44860807'),
(174, 'Ukraine', '2017', '12.1247130591'),
(175, 'United Arab Emirates', '2017', '12.2909369327'),
(176, 'United Kingdom', '2017', '14.649797989'),
(177, 'United States', '2017', '17.3435577511'),
(178, 'Uruguay', '2017', '15.7733780918'),
(179, 'Uzbekistan', '2017', '10.7308862779'),
(180, 'Venezuela', '2017', '11.1100486213'),
(181, 'Vietnam', '2017', '9.71582269832'),
(182, 'Wales', '2017', '14.5459155665'),
(183, 'Yemen', '2017', '15.922114141400002'),
(184, 'Zimbabwe', '2017', '11.6203670636');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'user', 'user8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `curhat`
--
ALTER TABLE `curhat`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
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
-- AUTO_INCREMENT for table `curhat`
--
ALTER TABLE `curhat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
