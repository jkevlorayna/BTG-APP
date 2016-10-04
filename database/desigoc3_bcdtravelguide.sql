-- phpMyAdmin SQL Dump
-- version 4.2.8
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2016 at 11:32 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `desigoc3_bcdtravelguide`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
`Id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_desc` varchar(100) NOT NULL,
  `show_mobile` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`Id`, `category_name`, `category_desc`, `show_mobile`) VALUES
(24, 'Hotels', 'List of Hotels in Bacolod City', 1),
(25, 'Resorts', 'List of Resorts in Bacolod City', 1),
(27, 'Restaurant', 'List of Restuarant in Bacolod City', 1),
(28, 'Attraction', 'List Attraction of Transaction', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_default_tab`
--

CREATE TABLE IF NOT EXISTS `tbl_default_tab` (
`Id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_default_tab`
--

INSERT INTO `tbl_default_tab` (`Id`, `name`) VALUES
(1, 'Description'),
(2, 'Contact Information');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE IF NOT EXISTS `tbl_events` (
`Id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `event_date` date NOT NULL,
  `content` text NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_events`
--

INSERT INTO `tbl_events` (`Id`, `name`, `event_date`, `content`, `latitude`, `longitude`, `address`, `date_added`) VALUES
(2, 'Maskara Festival', '2016-08-08', '<p style="text-align:start"><br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The City has land area of 156.1 kilometers. In 1970, it had a population of 187,300. It has a cool invigorating climate with abundant rainfall. The majority of the people speak Ilonggo and the rest speak Cebuano.</p>\n\n<p style="text-align:start"><br />\n&nbsp;&nbsp;&nbsp;&nbsp; Bacolod, the &quot;Sugar City in the Philippines,&quot; is one of the most progressive and elite cities in the country. Along its highway, sugarcane plantation is a typical scene; coconut and rice are also grown. The people are engaged in livestock, fishing and pottery.</p>\n\n<p style="text-align:start"><br />\n&nbsp;&nbsp;&nbsp;&nbsp; Bacolod was derived from the Ilonggo word &quot;bakolod&quot; meaning &quot;stonehill&quot; since the settlement was founded in 1770 on a stonehill area, now the district of Granada and the former site of the Bacolod Murcia Milling Company.&nbsp;</p>\n\n<p style="text-align:start"><br />\n<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>Due to the Muslin raids in 1787, Bacolod was transferred towards the shorline. The old site was called &quot;Da-an Banwa,&quot; meaning old&nbsp; town.<br />\n&nbsp;&nbsp;&nbsp; In 1894, by order of Governor General Claveria, through Negros Island Governor Manuel Valdeviseo Morquecho, Bacolod was made the capital of the Province of Negros. Bernardino de los Santos became the first gobernadorcillo and Fray Julian Gonzaga the first parish priest.</p>\n', '', '', 'das', '2016-08-09'),
(3, 'Fun Run', '2016-08-16', '0', '', '', 'Capitol Lagoon', '2016-08-16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event_review`
--

CREATE TABLE IF NOT EXISTS `tbl_event_review` (
`Id` int(11) NOT NULL,
  `GuestId` varchar(250) NOT NULL,
  `content` varchar(250) NOT NULL,
  `EventReviewDate` date NOT NULL,
  `EventId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guest`
--

CREATE TABLE IF NOT EXISTS `tbl_guest` (
`Id` int(11) NOT NULL,
  `GuestId` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ImageUrl` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ContactNumber` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_guest`
--

INSERT INTO `tbl_guest` (`Id`, `GuestId`, `name`, `ImageUrl`, `email`, `ContactNumber`) VALUES
(3, '1548838811835405', 'John Kevin Lorayna', 'https://z-1-scontent.xx.fbcdn.net/v/t1.0-1/c0.0.50.50/p50x50/13938511_1529855317067088_8599084949918985642_n.jpg?oh=295065b6549d0f1cd89b29c9b3f51542&oe=586CC5EF', 'jkevlorayna@hotmail.com', 0),
(5, '110131672852029729037', 'john kevin Lorayna', 'https://lh5.googleusercontent.com/-irg-LOaEqRA/AAAAAAAAAAI/AAAAAAAAADA/aQpd1viruKo/photo.jpg?sz=50', 'jkevlorayna@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE IF NOT EXISTS `tbl_news` (
`Id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date_added` date NOT NULL,
  `news_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`Id`, `title`, `content`, `date_added`, `news_date`) VALUES
(1, 'Example News 1', '', '2016-08-20', '2016-08-19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE IF NOT EXISTS `tbl_pages` (
`Id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `status` varchar(100) NOT NULL,
  `date_added` date NOT NULL,
  `date_updated` date NOT NULL,
  `type` varchar(50) NOT NULL,
  `place` varchar(200) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`Id`, `name`, `content`, `status`, `date_added`, `date_updated`, `type`, `place`, `start_date`, `end_date`) VALUES
(1, 'About  this App', '', 'Active', '0000-00-00', '2016-09-20', '', '', '0000-00-00', '0000-00-00'),
(2, 'About Bacolod', '<p>BRIEF HISTORY</p>\n\n<p>Originally known as &quot;Buglas&quot; by its natives. This fourth largest island in the Philippine archipelago was given the name &quot;Negros&quot; by the Spanish navigators when Esteban de Rodriguez discovered the island in April, 1565 and found its earliest occupants to be dark-skinned natives belonging to the Negrito ethnic group. The natives then, occupied initially most of the southern portion of the province, being Binalbagan and Ilog. Two of the earliest native settlements which officially became towns in 1572 and 1584, respectively. Other settlements were Hinigaran, Bago, Marayo (now Pontevedra), Mamalan (now HImamaylan) and Candaguit.</p>\n\n<p>In 1734, the island became a military district and Ilog became its first capital. Bacolod was made provincial capital in 1849. Then in 1856, Negros Occidental was raised to the category of a politico-military province. During this time, several more towns were established like San Carlos and Calatrava. Other towns were created, particularly Saravia, Escalante and Valladolid (1860) as a result of the growth of Population and the influx of immigrants coming from neighboring provinces such as Iloilo, Antique, Capiz, and Cebu. These growth in population and immigrants brought to the province in turn rapid material growth and development during the later part of the 18th century.</p>\n\n<p>The major boon to the province at this time were two: the cultivation of sugar which brought economic boost as it later led Negros to pioneer other provinces in sugar production with its initial of 4,000 piculs of sugar in 1856 increasing to 2,000,000 piculs in 1897. With this, new machineries such as those operated by steam were used in the towns of Bacolod, Minuluan and Bago. Another boon was the opening of the ports like Iloilo and Cebu to foreign commerce.</p>\n\n<p>During the last decade of the 19th century, several important events may be summarized: one, the making of Negros Occidental as a separate province in 1890.Two, the joining of the Negrense revolutionary leaders in the nationwide Katipunan Movement which overcame the Spanish garrison in the province on November 6, 1898 during one of the Filipinos&acute;revolt against the Spanish rule. Three, the arrival of the Americans in the province in May, 1899 leading to the establishment of a Civil Government in Negros Occidental on April 20, 1901. Fouth, the ousting and surrender of the Japanese Forces in Negros (1945) after both civilian and military leaders in Negros Occidental pursued and organized a free government in the province.</p>\n\n<p>After the upheaval and destruction brought by the first and second world wars, the next years following it, were dedicated to the rehabilitation and reconstructions of various sectors as Industry and Commerce, principally the sugar industry. Following this recuperation period, socio-economic growth in the province ensued.</p>\n\n<p>&nbsp;</p>\n\n<p><a name="lan"></a>LANGUAGE/DIALECT</p>\n\n<p>Negrenses, as practically all Filipinos, are poly-lingual. Of the 87 dialects in the country, two Visayan dialects are predominantly used in the province: Ilonggo, which is spoken by 80% to 90% of the populace, and Cebuano which is used by the rest. English, however, is widely spoken; thus the English-speaking visitor will have little or no communication problem at all.</p>\n\n<p><a name="ind"></a>MAJOR INDUSTRIES</p>\n\n<p>Negros Occidental is primarily an agricultural province. Of the total land area of 792,607 hectares, 588,145 hectares are arable land of which appoximately 419,305.084 hectares or 53% are devoted to agriculture.</p>\n\n<p>With diversification as a major provincial development program, new land uses such as more inland fishing, livestock &amp; poultry, grains and new crops like coffee, cacao, black pepper, orchards, ramie and others are increasing.</p>\n\n<p>The province of Negros Occidental is reported by the Bureau of Mines to be rich in both metallic and non-metallic mineral resources, notably copper, gold, silver and molybdenum. Among the non-metallic minerals are stones, gravel, and sand and other construction materials, also salt and guano.</p>\n\n<p>The socio-economic life of Negros Occidental from the 1950&acute;s up to the 1980&acute;s depended mainly on sugar, producing annually about 60% of the country&acute;s sugar output. The four corners of the archipelago have focused their wide open eyes and melting mouth to the glory of the Negrenses. Negros is where high living and high eyebrows were.</p>\n\n<p>&nbsp;</p>\n\n<p><a name="attr"></a>HISTORICAL AND CULTURAL ATTRACTIONS</p>\n\n<p>Revolutionary Markers in Bago and Silay Cities and E. B. Magalona; 22 kms. and 15 kms. from Bacolod City, respectively; commemorate the spots where local revolutionaries fought against Spanish authorities during the Negros revolution of 1898 and the American forces later.</p>\n\n<p>Araneta and Lacson Monuments, Bago City and Talisay<br />\n22 kms. and 6 kms. from Bacolod City, respectively; in memory of two great leaders of the Negros revolution.</p>\n\n<p>Fountain Of Justice, Bacolod City<br />\nWhere the Capitulation of Bacolod was signed between the Spanish authorities and revolutionary forces.</p>\n\n<p>Instituto Rizal, Bacolod City<br />\nFirst public school established in Bacolod in 1902.</p>\n\n<p>Church Of Talisay, Talisay<br />\n7 kms. from Bacolod City constructed in the early part of 1900&#39;s where the remains of Fr. Fernando Cuenca and Gen Aniceto Lacson are being kept.</p>\n\n<p>Ancestral House Of Dr. Soriono, Bacolod City<br />\nConstructed in 1901, the house was made of hardwood with fine carvings; served as a hospital during the Japanese occupation.</p>\n\n<p>Hofile&ntilde;a Ancestral House, Silay City<br />\n15 kms. from Bacolod City; home to a collection of rare art pieces, antiques and paintings done by Luna, Rizal and Hidalgo; venue of the first wood printing in Negros.</p>\n\n<p>Hacieda Fe. - Ancestral House Of Don Eusebio Uriarte Y Hermanos, La Carlota City; 42 kms. from Bacolod City where the Circulo de Agriculture, a planters organization formed to undertake an anti-locust campaign</p>\n\n<p>The House Of Don Mariano Ramos, Bacolod City<br />\nAncestral home of the late Don Mariano Ramos, first appointed Presidente Municipal of Bacolod.</p>\n\n<p>Capitol Building, Bacolod City<br />\nImposing structure of Romanesque neo-classical architectural design, official seat of government of the Province of Negros Occidental; served as headquarters of the Japanese Imperial Army during World War II.</p>\n\n<p>Gaston Farm House, Silay City<br />\n15 kms. from Bacolod City; typical example of a &quot;sugar baron&#39;s mansion&quot;; converted into a museum and known today as the &quot;Balay Negrense&quot;.</p>\n\n<p>Old Fort At Himamaylan , Himamaylan<br />\n83 kms. from Bacolod City; served as a garrison when the town became the capital of Negros in 1795.</p>\n\n<p>Yulo Acestral House, Bacolod City<br />\nBy the sea; built in the early part of 1900&#39;s; residence of Don Alfredo Yulo, mayor of Bacolod at the coming of the World War II.</p>\n\n<p>The Church Of San Diego, Silay City<br />\n15 kms. from Bacolod City; Basilica type of architectural work constructed in the 1920&#39;s.</p>\n\n<p>Mural Of Birhen Sang Barangay, Bacolod City<br />\nLarge mural mosaic of 95,000 pieces of shells of various species in their natural colors. A unique work of art found at the Chapel of Sta. Clara.</p>\n\n<p>Chinese Temple, Bacolod City<br />\nSymbol of Chinese influence in the culture of the province.</p>\n\n<p>&nbsp;</p>\n\n<p><a name="tour"></a>SPECIAL INTEREST TOURS</p>\n\n<p>Iron Dinosaurs&nbsp;<br />\nKnown among locomotive enthusiasts as the &quot;Steam Paradise of the Philippines&quot;. Seven of the fifteen sugar centrals in the province maintain these machines in good working condition. Each milling season, one may occasionally encounter one of these &quot;dragons&quot; creeping along the cane fields like a mechanical caterpillar dragging along a host of cane field cars.</p>\n\n<p>War Memorial Tours<br />\nVisit memorial shrines, places of significant events, and other war related activities commemorating World War II.</p>\n\n<p><br />\n<a name="nature"></a>NATURE ADVENTURE AND ECOTOURISM</p>\n\n<p>Mt. Kanlaon<br />\nOne of the mountains found in the north-central portion of the island of Negros. It is the highest peak in Central Philippines, the most dominant and attractive feature of which is the active summit crater of a volcano.</p>\n\n<p>Mambucal Mountain Resort, Murcia<br />\n30 kms. from Bacolod City ; gateway to the Mt. Kanlaon National Park; built as a spa in 1927; situated at an altitude of roughly 2,000 ft. above sea level on the north-western foot of Mt. Kanlaon.<br />\n<br />\nSitio Guintubdan Nature Camp, La Carlota City<br />\n36 kms. from Bacolod City; a destination for nature enthusiasts; at the western foot of Mt. Kanlaon at an elevation of 700 meters above the plains of the sugarland.</p>\n\n<p>Patag Valley Trekking, Silay City<br />\n45 kms. from Bacolod City; located 400meters above sea level between the highlands of Mt. Silay and Mt. Marapara; home of the Philippines spotted deer; highlight of the visit is a skyline ride.</p>\n\n<p>Isla Puti, Escalante<br />\n101 kms. from Bacolod City; immense sand bar islet jutting out of the sea and measuring about 2 hectares in area</p>\n\n<p>Danjugan Island, Cauayan<br />\n177.5 kms. from Bacolod City; 3 hectare reserve marine sanctuary, a virtual marine paradise to lovers of the underwater world.</p>\n\n<p>Sagay Marine Sanctuary, Sagay<br />\n86 kms. from Bacolod City; established in1978; an aggregate area of 200 hectares covering the so called carbin reef, maca reef, maca shoal and panal reef.</p>\n\n<p>Ubong Cave, Hinobaan<br />\n202 kms. from Bacolod City; system of cave passages situated at the coastline of Sitio Ubong. Ideal for &quot;spelunker-to-be&quot;</p>\n\n<p>Pating Cave, Kabankalan<br />\nHighest cave found in the eastern part of Bgy. Magballo.</p>\n\n<p>Hagdanan Cave, Kabankalan<br />\nNamed so because of the natural formation of stairs made of stone inside the cave leading to the water under it.</p>\n\n<p>&nbsp;</p>\n\n<p><a name="fest"></a>FESTIVALS</p>\n\n<p>Masskara festival, Bacolod City; every October; a masquerade ball and beaming images of smiling masks street dancing and stomping to the frenzied beat of Latin sambas; depicts the Negrenses happy disposition despite adversities in life.</p>\n\n<p>Pasalamant Festival, La Carlota City; every May; based on the tradition of giving thanks to the Gods of the elements after a bountiful harvest by the ancients in &quot;Buglas&quot;.</p>\n\n<p>Kali-Kalihan Festival, Don Salvador Benedicto; every November; celebration of age-old practice showcasing ancient skills in martial arts and beliefs in the forces of nature; walking on live charcoal is one of the highlights.</p>\n\n<p>Pinta Flores Festival, San Carlos City; every November; coined from the words &quot;pinta&quot; and &quot;flores&quot;, depicts the tradition of welcoming visitors through dancing as in the &quot;pintados&quot; during the coming of the Spaniards in the Visayas. Flowers instead of tattoos are painted on the bodies and costumes of the dancers.</p>\n\n<p>Cadiz Ati-Atihan, Cadiz City; every January; festival in honor of the Sto. Nino, patron of Cadiz City believed to have created miracles protecting the city from the invading pirates long time ago.</p>\n\n<p>Sinulod, Ilog and Kabankalan; every January; reenactment of the battle between the Christian forces and the invading Moro pirates in the Ilog river; commemorates the defiance of Datu Manyabog against the conquering forces of Gov. Emilio Saravia.</p>\n\n<p>&nbsp;</p>\n\n<p><a name="topo"></a>TOPOGRAPHY, SOIL AND CLIMATE</p>\n\n<p>The City is ideally located on a level area, slightly sloping as it extends toward the sea with an average slopes of 0.9 percent for the City Proper and between 3 to 5 percent for the suburbs. The altitude is 32.8 feet or 10.0 meters above sea level. The benchmark is the Bacolod Public Plaza.By soil type, the different varieties of soil covering the entire area fall into several broad types and qualities like Bago Fine Sandy Loam, Bago Sandy Clay Loam, Guimbala-on Fine Sandy Loam, Guimbala-on Loam, Hydrosol, Rough Mountainous Land, Silay Loam, Silay Sandy Loam and Tupi Fine Sandy Loam.Bacolod has two (2) pronounced seasons, wet and dry. The rainy season starts from May to January of the following year with heavy rains occur during the months of August and September. Dry season starts from the month of February up to the last week of April.</p>\n\n<p>&nbsp;</p>\n', 'Active', '0000-00-00', '2016-09-20', '', '', '0000-00-00', '0000-00-00'),
(3, 'History', '<p><strong>Bacolod City, situated on the northwestern part of the island of Negros, is bounded by the Guimaras Strait on the west, the municipality of Talisay on the north, the municipality of Murcia on the east, and Bago City on the South.</strong><br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The City has land area of 156.1 kilometers. In 1970, it had a population of 187,300. It has a cool invigorating climate with abundant rainfall. The majority of the people speak Ilonggo and the rest speak Cebuano.</p>\n\n<p><br />\n&nbsp;&nbsp;&nbsp;&nbsp; Bacolod, the &quot;Sugar City in the Philippines,&quot; is one of the most progressive and elite cities in the country. Along its highway, sugarcane plantation is a typical scene; coconut and rice are also grown. The people are engaged in livestock, fishing and pottery.</p>\n\n<p><br />\n&nbsp;&nbsp;&nbsp;&nbsp; Bacolod was derived from the Ilonggo word &quot;bakolod&quot; meaning &quot;stonehill&quot; since the settlement was founded in 1770 on a stonehill area, now the district of Granada and the former site of the Bacolod Murcia Milling Company.&nbsp;</p>\n\n<p><br />\n<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>Due to the Muslin raids in 1787, Bacolod was transferred towards the shorline. The old site was called &quot;Da-an Banwa,&quot; meaning old&nbsp; town.<br />\n&nbsp;&nbsp;&nbsp; In 1894, by order of Governor General Claveria, through Negros Island Governor Manuel Valdeviseo Morquecho, Bacolod was made the capital of the Province of Negros. Bernardino de los Santos became the first gobernadorcillo and Fray Julian Gonzaga the first parish priest.</p>\n\n<p><br />\n&nbsp;&nbsp;&nbsp;&nbsp; The succes of the revolution in Bacolod was attributed to the low morale of the local Spanish detahcment-due to its defeat in Panay and Luzon and to the psychological warfare of Generals Aniceto Lacson and Juan Araneta. In 1897, a battle in Bacolod was fought in Matab-ang River. A year later, on November 5, 1898, the Negrense &quot;Revolucionarios,&quot; armed with knives, bolos, spears, and rifle-like &quot;nipa&quot; stems, and pieces of &quot;sawali&quot; mounted in carts, captured the convento where Coronel de Castro y Cisneros, well-armed &quot;casadores&quot; and platoons of civil guards, surrendered. Two days later, on the 17th, most of the revolutionary army gathered together to establish a Provisional Junta and to confirm the&nbsp;elections of Aniceto Lacson as president, Juan Araneta as war-delegate, as well as the other officials.<br />\n&nbsp;&nbsp;&nbsp;&nbsp; On March 1899, the American forces led by Colonel James G. Smith occupied Bacolod, the revolutionary capital of the Provisional Republic of Negros.<br />\n&nbsp;&nbsp;&nbsp;&nbsp; Bacolod City was occupied by the Japanese forces on May 21, 1942. Three years after, it was liberated by the American forces on May 29, 1945.<br />\n&nbsp;&nbsp;&nbsp;&nbsp; By virtue of Commonwealth Act No. 326, enacted by the National Assembly, the City of Bacolod was created on June 18, 1938.</p>\n', 'InActive', '0000-00-00', '2016-09-20', '', '', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_place`
--

CREATE TABLE IF NOT EXISTS `tbl_place` (
`Id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `geoLocation` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `contactInfo` text NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `icon` text NOT NULL,
  `shortDescription` text NOT NULL,
  `googleMapPlaceId` varchar(200) NOT NULL,
  `budget_from` decimal(12,2) NOT NULL,
  `budget_to` decimal(12,2) NOT NULL,
  `website_url` varchar(250) NOT NULL,
  `Tags` varchar(300) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_place`
--

INSERT INTO `tbl_place` (`Id`, `name`, `address`, `geoLocation`, `description`, `CategoryId`, `contactInfo`, `latitude`, `longitude`, `icon`, `shortDescription`, `googleMapPlaceId`, `budget_from`, `budget_to`, `website_url`, `Tags`) VALUES
(1, 'L Fisher Hotel', '14th Lacson Street, Downtown, Bacolod, 6100 Negros Occidental', 'dasd', '<p><span style="background-color:#ffffff; color:#222222; font-family:arial,sans-serif; font-size:13px">This relaxed hotel, set in downtown Bacolod City, lies an 8-minute walk from Capitol Park and Lagoon, a 10-minute walk from the Negros Museum and 2 km from <strong>Bacolod Public Plaza.</strong></span><strong><span style="background-color:#ffffff; color:#222222; font-family:arial,sans-serif; font-size:13px">&nbsp;</span></strong><br />\n<br />\n<span style="background-color:#ffffff; color:#222222; font-family:arial,sans-serif; font-size:13px">The laid-back rooms and suites come with cable TV, free Wi-Fi and minifridges, plus safes. Suites provide sitting or living areas; some upgraded suites feature 4-poster beds.<br />\n<br />\nThe hotel has an informal coffee shop and 3 restaurants, including a Japanese grill and a 24-hour international eatery. There&#39;s also a gym, a rooftop pool, a spa and meeting facilities.</span></p>\n', 24, '', '10.679819', '122.954391', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRQBPFDTHWREegjZ9ARYxdCj6ySmIA2zxgTGun3mpLjQvAJBRCmzAc8lg', '', 'ChIJ-SDvEKjRrjMRTtueCDt4qmI', '1000.00', '3000.00', 'http://localhost/btgApp-Admin/#/place/form/1', 'Hotels, Restaurant'),
(2, 'The Sugar Land Hotel', 'Araneta Ave, Bacolod, Negros Occidental', 'test', '<p>0</p>\n', 24, '', '10.652446', '122.937551', '', '', '', '0.00', '0.00', '', NULL),
(3, 'Luxur Place', 'Magsaysay Street', '0', '<p>0</p>\n', 24, '', '10.653021', '122.942964', '', '', '', '0.00', '0.00', '', NULL),
(4, 'Palmas Delmar', 'PALMAS DEL MAR BACOLOD J.R. Torres Avenue Bacolod City 6100 Negros Occidental, Philippines', '0', '<p>Palmas del Mar Bacolod is a five-acre resort right at the<br />\nedge of the sea. Set facing the majestic sunset are<br />\namenities for everyone in the family to enjoy.&nbsp;<br />\nThere are three swimming pools to choose from.&nbsp;<br />\na five-lane lapping pool...a free-form island pool.<br />\na Mediterranean-design pool. Kids also get their&nbsp;<br />\nshare of the splash with 2 kiddie pools.<br />\n<br />\nVisitors can relax in either of our two Jacuzzis.<br />\nfor intimate or large groups. More fun activities&nbsp;<br />\nabound within the resort. Visitors can go boating.<br />\nfishing. billiards.and table tennis.<br />\n<br />\nFor the fitness buff, there&#39;s a jogging path and an<br />\nexercise gym. For restaurant dining and room service,<br />\nour restaurant and friendly food service personnel&nbsp;<br />\noffers you a selection of international favorites and&nbsp;<br />\nthe island&#39;s specialties.<br />\n<br />\nAnd while we keep you away from the rest of the world,<br />\nvisitors can keep in touch with our wireless internet service.<br />\n<br />\nAll these make Palmas del Mar Bacolod one of the best&nbsp;<br />\nresort in the Philippines.</p>\n', 25, '<p>Email Address:<br />For hotel accommodation and other information:<br /><strong>info@palmasdelmarresort.net</strong><br />For weddings, conferences, and banquets:&nbsp;<br /><strong><a href="mailto:sales@palmasdelmarresort.net">sales@palmasdelmarresort.net</a></strong><br /><br /><br />Website: www.palmasdelmarresort.net<br /><br />Telephone:<br />+6334-434-8987 (Direct Line to Sales)<br />+6334-434-7971 to 72<br />+6334-433-3587 to 88<br />&nbsp;</p>', '10.644006', '122.924394', '', '', '', '0.00', '0.00', '', NULL),
(5, 'Chicken House', 'Lacson St, Bacolod City, Negros Occidental', '0', '<p>The scrumptious taste&nbsp;of chicken inasal served by Bacolod Chicken House is not only because of the&nbsp;exact ingredients and secret spices but it takes the work of passion and&nbsp;dedication to prepare a perfect masterpiece.</p>\n', 27, '<p>434 9405</p>\n', '10.685385', '122.957015', '', '', '', '0.00', '0.00', '', NULL),
(8, '21 Restaurant', '21 Street. cor Lacson St., Bacolod City, Negros Occidental', '0', '<p>21 Restaurant is definitely a place to&nbsp;visit in Bacolod, not just for good food, but for an ultimate fine dining experience you&#39;ll keep coming back.</p>\n', 27, '<p>433 4096</p>\n', '10.683033', '122.955749', '', '', '', '0.00', '0.00', '', NULL),
(9, 'Sandok Comfort Food', 'Narra Ave., Bacolod City, Negros Occidental', '0', '<p>Sandok is a nice place to dine.&nbsp;The inside of Sandok is very cozy and well-lit. &nbsp;The interior is a quite surprising change from the outside! Everything looks clean and enticing. &nbsp;The downstairs area is tiny but it is comfortable and charming.</p>\n', 27, '<p>703 2513</p>\n', '10.673328', '122.958652', '', '', '', '0.00', '0.00', '', NULL),
(10, 'Bob''s Cafe', 'B.S Aquino Drive, Bacolod City, Negros Occidental', '0', '<p>Bob&#39;s has a&nbsp;delicious cruisine here in Bacolod</p>\n', 27, '<p>434 2409</p>\n', '10.682724', '122.957365', '', '', '', '0.00', '0.00', '', NULL),
(11, 'Mambukal Mountain Resort', 'Brgy. Minoyan, Murcia, Negros Occidental', '0', '<p>The resort is operated by the Provincial Government of Negros Occidental. It boasts of a number of waterfalls and sulfur springs, and blessed with beautiful natural features which spread over 23.6 hectares.</p>\n', 25, '<p>(034) 473-0610 or their booking office at (034) 433-8516.</p>\n', '10.514434', '123.104972', '', '', '', '0.00', '0.00', '', NULL),
(12, 'Apollo Restaurant', 'Hilado - Malaspina St., Bacolod City, Negros Occidental', '0', '<p>Apollo is the best</p>\n', 27, '<p>433 4850</p>\n', '10.670897', '122.956329', '', '', '', '0.00', '0.00', '', NULL),
(13, 'Sta. Fe Resort', 'Brgy. Granada, Bacolod City, Negros Occidental', '0', '<p>Established in 1940s, Sta. Fe Resort &amp; Convention is the first privately owned resort in Bacolod City.It is open daily at 6:00am-9:00pm.</p>\n', 25, '<p>&nbsp;For overnight stays or inquiriecontact (034) 434-1456 / 432-1073.</p>', '10.662188', '123.004253', '', '', '', '0.00', '0.00', '', NULL),
(14, 'Campuestohan Highland Resort', 'Brgy. Cabatangan, Talisay, Negros Occidental', '0', '<p>Campuestohan Highland Resort, aside from being truly the perfect getaway for those who enjoy the cool atmosphere of nature, is also a gourmet haven for food connoisseurs.<br />\nOne of the resorts greatest assets is the owners themselves who enjoy cooking and serving delicious food specialties to friends and associates.<br />\nThis is why it is not surprising if the dishes served at Campuestohan Highland Resort are truly exceptional in taste and quality.<br />\nYou can choose from among the many variety of dishes that the resort restaurant offers, from the truly flavorsome &quot;Fried Cansi&quot; to the mouthwatering and extremely popular Ilonggo dish called KBL or &quot;Kadyos-Baboy-Langka.&quot;</p>\n', 25, '<p>&nbsp;if you wish to go on an overnight stay. Contact the resort at (034) 702-0964, (+63) 915-211-1406 / 0917-300-5007 / 0925-600-8088.</p>\n', '10.660712', '123.143981', '', '', '', '0.00', '0.00', '', NULL),
(15, 'The Water Garden, Forest Park', 'St. Francis Village, Brgy. Taculing, Bacolod City, Negros Occidental.', '0', '<p>The Water Garden is the ultimate destination for the whole family, be it a weekday or a weekend.&nbsp;<strong><em>Unwind</em></strong>. Having one of the widest&nbsp;<strong>POOLS</strong>&nbsp;in Western Visayas, guests especially kids will enjoy the 4-5 foot deep water. Dance around the&nbsp;<strong>PLAY FOUNTAIN</strong>&nbsp;and enjoy in the&nbsp;<strong>LAZY RIVER</strong>, which has a current pushing you around the bend. Take a rest on the&nbsp;<strong>COTTAGES</strong>,&nbsp;<strong>TABLES, and SWINGING BENCHES AND REST CHAIRS</strong>&nbsp;surrounding the pool area too. You can also stay the night or even longer from the&nbsp;<strong>9 ROOMS AND 7 VILLAS</strong>&nbsp;available for your accommodation.&nbsp; Find more leisure after swimming with our forest guardians in the&nbsp;<strong>MINI ZOO&nbsp;</strong>and<strong>&nbsp;AVIARY</strong>, a fun display located just beside our&nbsp;<strong>PLAYGROUND</strong>.&nbsp;<strong><em>Dine</em></strong>. Appetite is not a problem here because the<strong>FOOD COURT</strong>&nbsp;will cater to all the desires of your stomach. Served well and warm by the chef, we have various specialties in the menu. And we won&rsquo;t leave you thirsty with the refreshing drinks we have available. Of course with the chef on the house, we can assist you with the best&nbsp;<strong>CATERING</strong>&nbsp;services you need.&nbsp;<strong><em>Celebrate</em></strong>. Make us your venue for your special occasions and functions. Surrounded by the Lazy River, 3&nbsp;<strong>MINI GAZEBO</strong>&rsquo;s can cater to 40-70 persons &ndash; one of which could be availed with air-condition. Hold a wedding ceremony at the&nbsp;<strong>WISHING WELL&nbsp;</strong>garden, where the best ambience and often the best sunset could be captured on your moment. You may also gather conventions or sessions on our divided&nbsp;<strong>FUNCTION ROOMS</strong>&nbsp;located inside the restaurant.&nbsp; More visitors? Then we have two best options for you.&nbsp;<strong>LALAINE HALL&nbsp;</strong>is an air-conditioned room that fits a maximum of 200 visitors. Complete with a built PA system as well but non-air-conditioned is&nbsp;<strong>THE GRAND GAZEBO</strong>&nbsp;that can accommodate up to 800 persons and in it is an air-conditioned VIP lounge. &nbsp;And for all other events you wish to have, we have special&nbsp;<strong>PACKAGES</strong>&nbsp;just for you &ndash; Baptismal, Wedding, Debut, Prom, Kids Party, Educational Tour, Corporate, Seminars/ Conference, etc. To make things better and more convenient for you our place have Wireless Internet Access, audiovisual equipment, boardroom facilities, carpool services and other facilities for gatherings.</p>\n', 25, '<p>For inquiries, contact (034) 433-3114.</p>\n', '10.644315', '122.953510', '', '', '', '0.00', '0.00', '', NULL),
(16, 'Natureâ€™s Village Resort', 'Talisay Highway, Talisay City, Metro Bacolod, 6115 Negros Occidental', '0', '<p>Nature&rsquo;s Village Resort is a garden paradise located in Talisay City, only 3.5 kilometers from Bacolod City. It offers unique accommodations where nature lovers can bask in the unspoiled beauty while remaining close to the city.</p>\n', 25, '<p>For inquiries or reservations, contact (034) 495-0808 / 495-3368 to 69 or (+63) 922-851-2231 / 0917-300-7576.</p>\n', '10.726159', '122.964461', '', '', '', '0.00', '0.00', '', NULL),
(17, 'Imay''s Bar and Restaurant', '6th St., Bacolod City, Negros Occidental', '0', '<p>Imay&#39;s bar and restaurant has a nice foods and very accommodating people.</p>\n', 27, '<p>434 5113</p>\n', '10.674747', '122.954541', '', '', '', '0.00', '0.00', '', NULL),
(18, 'L''Kaisei', '10th St. cor Lacson St. Bacolod City, Negros Occidental', '0', '<p>L&#39; Kaisei Lacson, you&#39;ll find a much larger menu full of various Japanese foods including steaks, tofu, more sushi and sushimi choices, soups, and even wine. However, the food is not served with unlimited rice and is more expensive.</p>\n', 27, '<p>433 5599</p>\n', '10.677906', '122.954294', '', '', '', '0.00', '0.00', '', NULL),
(19, 'Kristin''s Steakhouse', '20th St., Bacolod City, Negros Occidental', '0', '<p>Kristin&rsquo;s is a great place to go to for the adventurous and for those who want a really good steak.&nbsp;</p>\n', 27, '<p>435 1979</p>\n', '10.68284', '122.9552', '', '', '', '0.00', '0.00', '', NULL),
(20, '365 Modern Cafe', 'BS. Aquino Drive, Bacolod City, Negros Occidental', '0', '<p>365 Modern Cafe brings good ambiance to the restaurant. The food are delicious but a bit pricey. The staff weren&#39;t that attentive though.</p>\n', 27, '<p>435 2351</p>\n', '10.677292', '122.960567', '', '', '', '0.00', '0.00', '', NULL),
(21, 'Avenue Suites', 'Corner 12th Lacson Street, Bacolod City, Negros Occidental 6100', '0', '<p>Avenue Suites is situated in a walking distance parameter to major banks, popular restaurants, 24-hour convenience stores, 24-hour drug stores, pastry shops, amusement spots.&nbsp;</p>\n', 24, '<p>435 7777</p>\n', '10.678070', '122.954030', '', '', '', '0.00', '0.00', '', NULL),
(22, 'O Hotel', 'San Sebastian St, Bacolod, Negros Occidental', '0', '<p>Warm, casual rooms feature cable TV and Wi-Fi, plus minifridges and desks. Suites add sitting areas, kitchenettes and pull-out sofas. An upgraded suite adds a Jacuzzi.<br /><br />The hotel serves a free breakfast buffet. There&rsquo;s also a bright modern restaurant with a bar</p>', 24, '<p>&nbsp;433 7401</p>\n', '10.664629', '122.947593', '', '', '', '0.00', '0.00', '', NULL),
(23, 'East View Hotel', 'Carlos Hilado Circumferential Road corner Esperanza Diola St. Circumferential Road, Bacolod, 6100 Negros Occidental', '0', '<p>Streamlined rooms with warm tones offer free Internet access, satellite TV, minifridges and safes, as well sitting areas. Upgraded rooms add extra beds, and some feature living areas with sofas. Room service is available.<br />\n<br />\nA stylish restaurant/bar with outdoor dining serves cocktails, grill-style and international cuisine, and a bar/nightclub has regular DJs</p>\n', 24, '<p>433 0596</p>\n', '10.665086', '122.968235', '', '', '', '0.00', '0.00', '', NULL),
(24, 'Grand Regal Hotel', 'Araneta Ave, Bacolod, 6100 Negros Occidental', '0', '', 24, '<p>432 0888</p>\n', '10.658327', '122.941123', '', '', '', '0.00', '0.00', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_place_tab`
--

CREATE TABLE IF NOT EXISTS `tbl_place_tab` (
`Id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `PlaceId` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_place_tab`
--

INSERT INTO `tbl_place_tab` (`Id`, `name`, `PlaceId`, `content`) VALUES
(13, 'Description', 5, '<p>The scrumptious taste&nbsp;of chicken inasal served by Bacolod Chicken House is not only because of the&nbsp;exact ingredients and secret spices but it takes the work of passion and&nbsp;dedication to prepare a perfect masterpiece.</p>\n'),
(14, 'Contact Information', 5, '<p>434 9405</p>\n'),
(15, 'Description', 10, '<p>Bob&#39;s has a&nbsp;delicious cruisine here in Bacolod</p>\n'),
(16, 'Contact Information', 10, '<p>434 2409</p>\n'),
(21, 'Description', 18, '<p>L&#39; Kaisei Lacson, you&#39;ll find a much larger menu full of various Japanese foods including steaks, tofu, more sushi and sushimi choices, soups, and even wine. However, the food is not served with unlimited rice and is more expensive.</p>\n'),
(22, 'Contact Information', 18, '<p>433 5599</p>\n'),
(23, 'Description', 19, '<p>Kristin&rsquo;s is a great place to go to for the adventurous and for those who want a really good steak.&nbsp;</p>\n'),
(24, 'Contact Information', 19, '<p>435 1979</p>\n'),
(26, 'Description', 4, '<p>Palmas del Mar Bacolod is a five-acre resort right at the<br />\nedge of the sea. Set facing the majestic sunset are<br />\namenities for everyone in the family to enjoy.&nbsp;<br />\nThere are three swimming pools to choose from.&nbsp;<br />\na five-lane lapping pool...a free-form island pool.<br />\na Mediterranean-design pool. Kids also get their&nbsp;<br />\nshare of the splash with 2 kiddie pools.<br />\n<br />\nVisitors can relax in either of our two Jacuzzis.<br />\nfor intimate or large groups. More fun activities&nbsp;<br />\nabound within the resort. Visitors can go boating.<br />\nfishing. billiards.and table tennis.<br />\n<br />\nFor the fitness buff, there&#39;s a jogging path and an<br />\nexercise gym. For restaurant dining and room service,<br />\nour restaurant and friendly food service personnel&nbsp;<br />\noffers you a selection of international favorites and&nbsp;<br />\nthe island&#39;s specialties.<br />\n<br />\nAnd while we keep you away from the rest of the world,<br />\nvisitors can keep in touch with our wireless internet service.<br />\n<br />\nAll these make Palmas del Mar Bacolod one of the best&nbsp;<br />\nresort in the Philippines.</p>\n'),
(27, 'Contact Information', 4, '<p>Email Address:<br />\nFor hotel accommodation and other information:<br />\n<strong>info@palmasdelmarresort.net</strong><br />\nFor weddings, conferences, and banquets:&nbsp;<br />\n<strong><a href="mailto:sales@palmasdelmarresort.net">sales@palmasdelmarresort.net</a></strong><br />\n<br />\n<br />\nWebsite: www.palmasdelmarresort.net<br />\n<br />\nTelephone:<br />\n+6334-434-8987 (Direct Line to Sales)<br />\n+6334-434-7971 to 72<br />\n+6334-433-3587 to 88<br />\n&nbsp;</p>\n'),
(28, 'Attraction', 4, '<p>Test 123</p>\n'),
(29, 'Description', 1, '<p><span style="background-color:#ffffff; color:#222222; font-family:arial,sans-serif; font-size:13px">This relaxed hotel, set in downtown Bacolod City, lies an 8-minute walk from Capitol Park and Lagoon, a 10-minute walk from the Negros Museum and 2 km from <strong>Bacolod Public Plaza.</strong></span><strong><span style="background-color:#ffffff; color:#222222; font-family:arial,sans-serif; font-size:13px">&nbsp;</span></strong><br />\n<br />\n<span style="background-color:#ffffff; color:#222222; font-family:arial,sans-serif; font-size:13px">The laid-back rooms and suites come with cable TV, free Wi-Fi and minifridges, plus safes. Suites provide sitting or living areas; some upgraded suites feature 4-poster beds.<br />\n<br />\nThe hotel has an informal coffee shop and 3 restaurants, including a Japanese grill and a 24-hour international eatery. There&#39;s also a gym, a rooftop pool, a spa and meeting facilities.</span></p>\n'),
(30, 'Contact Information', 1, '<p>contact information content</p>\n'),
(31, 'Description', 2, ''),
(32, 'Contact information', 2, ''),
(33, 'Description', 8, '<p>21 Restaurant is definitely a place to&nbsp;visit in Bacolod, not just for good food, but for an ultimate fine dining experience you&#39;ll keep coming back.</p>\n'),
(34, 'Contact Information', 8, '<p>433 4096</p>\n'),
(35, 'Desciption', 9, '<p>Sandok is a nice place to dine.&nbsp;The inside of Sandok is very cozy and well-lit. &nbsp;The interior is a quite surprising change from the outside! Everything looks clean and enticing. &nbsp;The downstairs area is tiny but it is comfortable and charming.</p>\n'),
(36, 'Contact Information', 9, '<p>703 2513</p>\n'),
(37, 'Desscription', 11, '<p>The resort is operated by the Provincial Government of Negros Occidental. It boasts of a number of waterfalls and sulfur springs, and blessed with beautiful natural features which spread over 23.6 hectares.</p>\n'),
(38, 'Contact Information', 11, '<p>(034) 473-0610 or their booking office at (034) 433-8516.</p>\n'),
(39, 'Description', 12, '<p>Apollo is the best</p>\n'),
(40, 'Contact Information', 12, '<p>433 4850</p>\n'),
(41, 'Description', 13, '<p>Established in 1940s, Sta. Fe Resort &amp; Convention is the first privately owned resort in Bacolod City.It is open daily at 6:00am-9:00pm.</p>\n'),
(42, 'Contact Information', 13, '<p>&nbsp;For overnight stays or inquiriecontact (034) 434-1456 / 432-1073.</p>\n'),
(43, 'Description', 14, '<p>Campuestohan Highland Resort, aside from being truly the perfect getaway for those who enjoy the cool atmosphere of nature, is also a gourmet haven for food connoisseurs.<br />\nOne of the resorts greatest assets is the owners themselves who enjoy cooking and serving delicious food specialties to friends and associates.<br />\nThis is why it is not surprising if the dishes served at Campuestohan Highland Resort are truly exceptional in taste and quality.<br />\nYou can choose from among the many variety of dishes that the resort restaurant offers, from the truly flavorsome &quot;Fried Cansi&quot; to the mouthwatering and extremely popular Ilonggo dish called KBL or &quot;Kadyos-Baboy-Langka.&quot;</p>\n'),
(44, 'Contact Information', 14, '<p>&nbsp;if you wish to go on an overnight stay. Contact the resort at (034) 702-0964, (+63) 915-211-1406 / 0917-300-5007 / 0925-600-8088.</p>\n'),
(45, 'Description', 15, '<p>The Water Garden is the ultimate destination for the whole family, be it a weekday or a weekend.&nbsp;<strong><em>Unwind</em></strong>. Having one of the widest&nbsp;<strong>POOLS</strong>&nbsp;in Western Visayas, guests especially kids will enjoy the 4-5 foot deep water. Dance around the&nbsp;<strong>PLAY FOUNTAIN</strong>&nbsp;and enjoy in the&nbsp;<strong>LAZY RIVER</strong>, which has a current pushing you around the bend. Take a rest on the&nbsp;<strong>COTTAGES</strong>,&nbsp;<strong>TABLES, and SWINGING BENCHES AND REST CHAIRS</strong>&nbsp;surrounding the pool area too. You can also stay the night or even longer from the&nbsp;<strong>9 ROOMS AND 7 VILLAS</strong>&nbsp;available for your accommodation.&nbsp; Find more leisure after swimming with our forest guardians in the&nbsp;<strong>MINI ZOO&nbsp;</strong>and<strong>&nbsp;AVIARY</strong>, a fun display located just beside our&nbsp;<strong>PLAYGROUND</strong>.&nbsp;<strong><em>Dine</em></strong>. Appetite is not a problem here because the<strong>FOOD COURT</strong>&nbsp;will cater to all the desires of your stomach. Served well and warm by the chef, we have various specialties in the menu. And we won&rsquo;t leave you thirsty with the refreshing drinks we have available. Of course with the chef on the house, we can assist you with the best&nbsp;<strong>CATERING</strong>&nbsp;services you need.&nbsp;<strong><em>Celebrate</em></strong>. Make us your venue for your special occasions and functions. Surrounded by the Lazy River, 3&nbsp;<strong>MINI GAZEBO</strong>&rsquo;s can cater to 40-70 persons &ndash; one of which could be availed with air-condition. Hold a wedding ceremony at the&nbsp;<strong>WISHING WELL&nbsp;</strong>garden, where the best ambience and often the best sunset could be captured on your moment. You may also gather conventions or sessions on our divided&nbsp;<strong>FUNCTION ROOMS</strong>&nbsp;located inside the restaurant.&nbsp; More visitors? Then we have two best options for you.&nbsp;<strong>LALAINE HALL&nbsp;</strong>is an air-conditioned room that fits a maximum of 200 visitors. Complete with a built PA system as well but non-air-conditioned is&nbsp;<strong>THE GRAND GAZEBO</strong>&nbsp;that can accommodate up to 800 persons and in it is an air-conditioned VIP lounge. &nbsp;And for all other events you wish to have, we have special&nbsp;<strong>PACKAGES</strong>&nbsp;just for you &ndash; Baptismal, Wedding, Debut, Prom, Kids Party, Educational Tour, Corporate, Seminars/ Conference, etc. To make things better and more convenient for you our place have Wireless Internet Access, audiovisual equipment, boardroom facilities, carpool services and other facilities for gatherings.</p>\n'),
(46, 'Contact Information', 15, '<p>For inquiries or reservations, contact (034) 495-0808 / 495-3368 to 69 or (+63) 922-851-2231 / 0917-300-7576.</p>\n'),
(47, 'Desscription', 16, '<p>Nature&rsquo;s Village Resort is a garden paradise located in Talisay City, only 3.5 kilometers from Bacolod City. It offers unique accommodations where nature lovers can bask in the unspoiled beauty while remaining close to the city.</p>\n'),
(48, 'Contact Information', 16, '<p>For inquiries or reservations, contact (034) 495-0808 / 495-3368 to 69 or (+63) 922-851-2231 / 0917-300-7576.</p>\n'),
(49, 'Description', 17, '<p>Imay&#39;s bar and restaurant has a nice foods and very accommodating people.</p>\n'),
(50, 'Contact Information', 17, '<p>434 5113</p>\n'),
(51, 'Description', 20, '<p>365 Modern Cafe brings good ambiance to the restaurant. The food are delicious but a bit pricey. The staff weren&#39;t that attentive though.</p>\n'),
(52, 'Contact Information', 20, '<p>435 7777</p>\n'),
(53, 'Description', 21, '<p>Avenue Suites is situated in a walking distance parameter to major banks, popular restaurants, 24-hour convenience stores, 24-hour drug stores, pastry shops, amusement spots.&nbsp;</p>\n'),
(54, 'Contact Information', 21, '<p>435 7777</p>\n'),
(55, 'Description', 22, '<p>Warm, casual rooms feature cable TV and Wi-Fi, plus minifridges and desks. Suites add sitting areas, kitchenettes and pull-out sofas. An upgraded suite adds a Jacuzzi.<br />\n<br />\nThe hotel serves a free breakfast buffet. There&rsquo;s also a bright modern restaurant with a bar</p>\n'),
(56, 'Contact Information', 22, '<p>&nbsp;433 7401</p>\n'),
(57, 'Description', 23, '<p>Streamlined rooms with warm tones offer free Internet access, satellite TV, minifridges and safes, as well sitting areas. Upgraded rooms add extra beds, and some feature living areas with sofas. Room service is available.<br />\n<br />\nA stylish restaurant/bar with outdoor dining serves cocktails, grill-style and international cuisine, and a bar/nightclub has regular DJs</p>\n'),
(58, 'Contact Information', 23, '<p>433 0596</p>\n'),
(59, 'Description', 24, ''),
(60, 'Contact Information', 24, '<p>432 0888</p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE IF NOT EXISTS `tbl_review` (
`Id` int(11) NOT NULL,
  `GuestId` varchar(50) NOT NULL,
  `content` varchar(250) NOT NULL,
  `reviewDate` date NOT NULL,
  `PlaceId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_review`
--

INSERT INTO `tbl_review` (`Id`, `GuestId`, `content`, `reviewDate`, `PlaceId`) VALUES
(1, '110131672852029729037', 'asasda sd', '2016-09-17', 3),
(2, '1548838811835405', 'Ehshdbdjs', '2016-09-17', 24),
(3, '1548838811835405', 'Snahdndb', '2016-09-17', 24),
(4, '1548838811835405', 'L fisher review', '2016-09-18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE IF NOT EXISTS `tbl_roles` (
`Id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`Id`, `role`) VALUES
(1, 'Member'),
(2, 'Product'),
(3, 'Setting'),
(4, 'OrderList');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE IF NOT EXISTS `tbl_setting` (
`Id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `settingKey` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`Id`, `title`, `settingKey`, `value`) VALUES
(2, 'te', 'das', 'das'),
(3, '2', '32', '23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
`user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `UserTypeId` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `name`, `username`, `password`, `UserTypeId`, `status`) VALUES
(4, 'Administrator', 'admin', 'admin', 0, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_rating`
--

CREATE TABLE IF NOT EXISTS `tbl_user_rating` (
`Id` int(11) NOT NULL,
  `GuestId` varchar(250) NOT NULL,
  `rating` int(11) NOT NULL,
  `PlaceId` int(11) NOT NULL,
  `RatingDate` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_rating`
--

INSERT INTO `tbl_user_rating` (`Id`, `GuestId`, `rating`, `PlaceId`, `RatingDate`) VALUES
(10, '110131672852029729037', 5, 2, '2016-09-05'),
(11, '110131672852029729037', 4, 21, '2016-09-17'),
(12, '1548838811835405', 5, 15, '2016-09-17'),
(13, '110131672852029729037', 3, 3, '2016-09-17'),
(14, '1548838811835405', 5, 24, '2016-09-17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_roles`
--

CREATE TABLE IF NOT EXISTS `tbl_user_roles` (
`Id` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_roles`
--

INSERT INTO `tbl_user_roles` (`Id`, `RoleId`, `UserId`) VALUES
(49, 3, 5),
(50, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_type`
--

CREATE TABLE IF NOT EXISTS `tbl_user_type` (
`Id` int(11) NOT NULL,
  `user_type` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_type`
--

INSERT INTO `tbl_user_type` (`Id`, `user_type`) VALUES
(3, 'Staff 1'),
(4, 'Staff 2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_default_tab`
--
ALTER TABLE `tbl_default_tab`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_event_review`
--
ALTER TABLE `tbl_event_review`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_guest`
--
ALTER TABLE `tbl_guest`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_place`
--
ALTER TABLE `tbl_place`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_place_tab`
--
ALTER TABLE `tbl_place_tab`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_user_rating`
--
ALTER TABLE `tbl_user_rating`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_user_roles`
--
ALTER TABLE `tbl_user_roles`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_user_type`
--
ALTER TABLE `tbl_user_type`
 ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tbl_default_tab`
--
ALTER TABLE `tbl_default_tab`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_event_review`
--
ALTER TABLE `tbl_event_review`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_guest`
--
ALTER TABLE `tbl_guest`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_place`
--
ALTER TABLE `tbl_place`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_place_tab`
--
ALTER TABLE `tbl_place_tab`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_user_rating`
--
ALTER TABLE `tbl_user_rating`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_user_roles`
--
ALTER TABLE `tbl_user_roles`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `tbl_user_type`
--
ALTER TABLE `tbl_user_type`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
