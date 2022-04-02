-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2022 at 05:43 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be15cr12_mount_everest_ivan_maksimov`
--
CREATE DATABASE IF NOT EXISTS `be15cr12_mount_everest_ivan_maksimov` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be15cr12_mount_everest_ivan_maksimov`;

-- --------------------------------------------------------

--
-- Table structure for table `destin`
--

CREATE TABLE `destin` (
  `id` int(11) NOT NULL,
  `place` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `des` varchar(10000) NOT NULL,
  `lat` varchar(20) NOT NULL,
  `lon` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `sect` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destin`
--

INSERT INTO `destin` (`id`, `place`, `country`, `des`, `lat`, `lon`, `price`, `picture`, `sect`) VALUES
(1, 'Skiathos', 'Grece', 'Skiathos, a Greek island in the northwest Aegean Sea, is part of the Sporades archipelago. It’s best known for its beaches and buzzing, youth-driven nightlife scene. The action centers around Skiathos Town, where bars and restaurants spill onto sidewalks along the old harbor and Papadiamanti street, the main pedestrian thoroughfare. Between town and the airport are many open-air, waterfront clubs.', '39.1668', '23.4898', 359, '6248047709488.jpg', 'summer'),
(2, 'San Sebastian', 'Spain', 'San Sebastián is a resort town on the Bay of Biscay in Spain’s mountainous Basque Country. It’s known for Playa de la Concha and Playa de Ondarreta, beaches framed by a picturesque bayfront promenade, and world-renowned restaurants helmed by innovative chefs. In its cobblestoned old town (Parte Vieja), upscale shops neighbor vibrant pintxo bars pairing local wines with bite-size regional specialties', '43.3196', '-1.98144', 639, '6248049d213c8.jpg', 'summer'),
(3, 'Santa Maria', 'Portugal', 'One of my two favorite beaches in Lagos. Excellent for surfers. Some parts are wavy during certain times of the year. Excellent place to exercise. When low tide the beach extends through the caves to a another nice beach (which is a nudist beach).', '37.0988', '-8.69281', 479, '624804b4bd2b6.jpg', 'summer'),
(4, 'Sainte-Maxime', 'France', 'Sainte-Maxime is a commune in the Var department of the Provence-Alpes-Côte dAzur region in Southeastern France. Located on the French Riviera, 90 km west from Nice and 130 km east from Marseille, it had a population of 13,968 in 2017. Its inhabitants are called Maximois or Maximoises in French', '43.3098', '6.63853', 299, '62480442ebe98.jpg', 'summer'),
(5, 'Capri', 'Italy', 'Capri is a municipality, in the Metropolitan City of Naples, situated on the island of Capri in Italy. It comprises the centre and East of the island, while the West belongs to Anacapri', '40.5512', '14.2425', 499, '6248041a00889.jpg', 'summer'),
(6, 'Dubrovnik', 'Croatia', 'Dubrovnik is a city in southern Croatia fronting the Adriatic Sea. It is known for its distinctive Old Town, encircled with massive stone walls completed in the 16th century. Its well-preserved buildings range from baroque St. Blaise Church to Renaissance Sponza Palace and Gothic Rector’s Palace, now a history museum.', '42.6505', '18.0921', 269, '624805fca96db.jpg', 'summer'),
(7, 'Courchevel', 'France', 'Courchevel is the largest and most famous of the several interlinked ski resorts known as Les Trois Vallées (Three Valleys), which form the largest ski domain in Europe. In addition to the 150 kilometers of alpine runs you can reach from Courchevel own 60 lifts, these link into access to a total of 600 kilometers of interconnected ski runs, plus four glaciers.', '45.433', '6.62048', 459, '624808c62a13f.jpg', 'winter'),
(8, 'Zermatt', 'Switzerland', 'Zermatt is known for its long runs, some of which end right in the village - you can literally ski home. The Matterhorn Glacier Ride, which opened for the 2019 season, is the world highest 3S cableway and carries 2,000 skiers an hour to the glacier. At an altitude of 3,883 meters, the glacier makes year-round skiing possible.', '46.0213', '7.74675', 429, '62480a5632f24.jpg', 'winter'),
(9, 'Val Gardena', 'Italy', 'People come here for the skiing experiences, such as skiing four runs used for the men and women downhill and giant slalom World Championship races, with average gradients of more than 25 percent. The new experts-only La Ria run, starting from the Dantercepies cable car, has inclines as great as 52 percent in places.', '46.5597', '11.698', 529, '62480bdeb3039.jpg', 'winter'),
(10, 'Zugspitze', 'Germany', 'Rising to 2,962 meters, Zugspitze is Germany highest mountain, and its popularity with skiers is enhanced by the beautiful Bavarian town of Garmisch-Partenkirchen at its foot. From its summit, which can now be accessed by a new cable car, extends a 360-degree panorama that reaches as far as 250 kilometers and includes mountain peaks in four countries', '47.4214', '10.9853', 389, '62480cbf97c4e.jpg', 'winter'),
(11, 'St. Moritz', 'Switzerland', 'The number of world ski competitions that have been hosted at St. Moritz should tell you something about this famous resort: this is world-class skiing. The Winter Olympics were held here in 1928 and 1948, and you can often see competitions at its Olympic ski-jump.', '46.4909', '9.83476', 499, '62480dea668e7.jpg', 'winter'),
(12, 'Chamonix', 'France', 'Its setting on snowcapped Mont Blanc, Europe tallest peak at 4,807 meters, would make Chamonix a skiing icon, even without the quintessential French Alpine village that lies at its base. The altitude of the mountain and the glaciers around Chamonix have a cooling effect that preserves the snow, assuring it some of the best and longest lasting snow conditions in the Alps.', '45.9248', '6.86833', 359, '62480eeb78ff2.jpg', 'winter'),
(13, 'South Island', 'New Zealand', 'New Zealand South Island brims with majestic landscapes at every turn, from dramatic mountains to fjords to glaciers. Here, you can admire the mountains of Fiordland National Park, a UNESCO World Heritage Site, from hiking trails or a boat on Milford Sound. At night, journey to the University of Canterbury Mount John Observatory to gaze at the starry skies.', '-45.08939', '169.88668', 899, '624810d3590ea.jpg', 'special'),
(14, 'Tokyo', 'Japan', 'Simply setting foot in Japan cosmopolitan capital is an experience within itself. A city known for its bustling streets and flashing neon signs, Tokyo has an electric energy and plenty of attractions to discover. Foodies will not be let down by the city fresh sushi and hearty ramen.', '35.6847', '139.768', 419, '6248128903b94.jpg', 'special'),
(15, 'Rome', 'Italy', 'When you visit the Eternal City, prepare to cross a few must-see attractions – including the Colosseum, the Trevi Fountain and the Pantheon – off of your bucket list. Additional treasures, such as St. Peter Basilica and the Sistine Chapel, can be found in nearby Vatican City. Escape the tourist crowds by taking a twilight stroll along the cobblestone streets of Trastevere, or head to Mercato Centrale Roma to sample local delicacies like gelato and pizza.', '41.91005', '12.48518', 399, '624816e6ee3b9.jpg', 'special'),
(16, 'London', 'United Kingdom', 'London is a world unto itself. The eclectic neighborhoods, which are home to a blend of historical landmarks and modern-day attractions, can keep you occupied for days. If it is your first time in London, plan to visit the Tower of London, Tate Modern, Buckingham Palace or the British Museum before sitting down to a classic afternoon tea. The best time to travel to London is during the warmer months, but be warned that this is also the busiest and most expensive time of year.', '51.50933', '-0.12770', 354, '624817f5b01f0.jpg', 'special'),
(17, 'Marrakech', 'Morocco', 'What is there not to love about Marrakech!? This city is an abundance of colours and fabrics, an endless maze of souks, and with many mosques, palaces and gardens to keep you exploring for days on end. Be sure to avoid the warmer months, as Marrakech experiences extremely high temperatures year-round. Watch out for the snake charmers in the Djemaa el-Fna!', '31.63169', '-7.98193', 799, '6248192cde6e9.jpg', 'special'),
(18, 'Kathmandu', 'Nepal', 'Sadly devastated by the recent earthquake, the city of Kathmandu has long been a favourite for the adventurous traveller. While they are still picking up the pieces given the current crisis, now might be the perfect time to visit in a capacity where you can give back on an active and engaging trip away from home.', '27.70613', '85.32541', 899, '62481d82c4d91.jpg', 'special');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `destin`
--
ALTER TABLE `destin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `destin`
--
ALTER TABLE `destin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
