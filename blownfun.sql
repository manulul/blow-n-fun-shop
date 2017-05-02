-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 02. 05 2017 kl. 09:18:58
-- Serverversion: 10.1.21-MariaDB
-- PHP-version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blownfun`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `url` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `categories`
--

INSERT INTO `categories` (`id`, `name`, `url`) VALUES
(1, 'Castles', 'castles'),
(2, 'Swimming & Fun', 'swimming-and-fun');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `customer`
--

CREATE TABLE `customer` (
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `address` varchar(64) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(64) NOT NULL,
  `order_number` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(6,0) NOT NULL,
  `sku` char(10) NOT NULL,
  `img` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `sku`, `img`) VALUES
(1, 'Waterplane', 'Castle Bounce House includes a Bounce Area and a Slide. Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '5000', 'waterpl_5', 'waterplane.jpeg'),
(2, 'Castle Slide', 'Castle Bounce House includes a Bounce Area and a Slide. Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '400', 'castslid', 'castleslide.jpeg'),
(3, 'Animal Floaters', 'Castle Bounce House includes a Bounce Area and a Slide. Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '249', 'Float', 'anifloat.jpg'),
(4, 'Dolphin Floats', 'Castle Bounce House includes a Bounce Area and a Slide. Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '249', 'Dolph-flo', 'dolphins.jpg'),
(5, 'Baby Dino Lake', 'Castle Bounce House includes a Bounce Area and a Slide. Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '349', 'bb-dino-lk', 'baby-dino-lake.jpg'),
(6, 'Inflatable Alien', 'Castle Bounce House includes a Bounce Area and a Slide. Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '349', 'bb-dino-lk', 'inflatable-alien.jpg'),
(7, 'Unicorn', 'Castle Bounce House includes a Bounce Area and a Slide. Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '349', 'unicorn', 'uniquehorn.jpg'),
(8, 'Dual slide', 'Castle Bounce House includes a Bounce Area and a Slide. Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '550', 'Dualslid', 'dualslide.jpg'),
(9, 'Unicorn sofa', 'Castle Bounce House includes a Bounce Area and a Slide. Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '550', 'unisofa', 'unicornsofa.jpg'),
(10, 'Giant Inflatable Unicorn', 'Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '629', 'Gi-In-Un', 'giant-inflatable-unicorn.jpeg'),
(11, 'Purple Horse', 'Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '233', 'Pup', 'purplefaggot.jpeg'),
(12, 'Inflatable Elephant', 'Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '345', 'Elephant', 'inflatable-elephant.jpg'),
(13, 'Inflatable Toy', 'Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '345', 'Toy', 'inflatable-toy.jpg'),
(14, 'Inflatable Unic', 'Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '542', 'Toy', 'inflatable-unicorn-57.jpg'),
(15, 'Inflatable Unics', 'Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '542', 'Corns', 'inflatable-unicorns.jpg'),
(16, 'Dino', 'Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '144', 'Dino', 'kern-5.jpg'),
(17, 'Lion', 'Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '564', 'Lion', 'lion-inflatable-23.jpg'),
(18, 'Flamingo', 'Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '666', 'Flame', 'flamingo.jpg'),
(19, 'Shark Toy', 'Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '444', 'Sharky', 'sharktoy.jpg'),
(20, 'Special Unicorn', 'Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '623', 'Special U', 'special-unicorn.jpg'),
(21, 'Fine Unicorn', 'Material is 420D Oxford Nylon with PVC backing. All materials have been tested to comply with the CPSCIA guidelines for Lead and Phthalates.', '333', 'Fine', 'skylake.jpg');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `products_belongto_categories`
--

CREATE TABLE `products_belongto_categories` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `products_belongto_order`
--

CREATE TABLE `products_belongto_order` (
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `products_belongto_categories`
--
ALTER TABLE `products_belongto_categories`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks for tabel `products_belongto_order`
--
ALTER TABLE `products_belongto_order`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tilføj AUTO_INCREMENT i tabel `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tilføj AUTO_INCREMENT i tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `products_belongto_categories`
--
ALTER TABLE `products_belongto_categories`
  ADD CONSTRAINT `products_belongto_categories_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_belongto_categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Begrænsninger for tabel `products_belongto_order`
--
ALTER TABLE `products_belongto_order`
  ADD CONSTRAINT `products_belongto_order_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_belongto_order_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
