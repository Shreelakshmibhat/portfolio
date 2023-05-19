-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2022 at 06:41 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `showroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `uname`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cardno` bigint(16) NOT NULL,
  `m` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `cvv` int(11) NOT NULL,
  `amt` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `name`, `cardno`, `m`, `y`, `cvv`, `amt`) VALUES
(1, 'ASHWINI', 5555171305010001, 9, 2022, 255, 968980),
(4, 'RACHANA.k', 3333171305019003, 12, 2023, 199, 967600),
(5, 'Rashmi', 1234567891011121, 9, 2022, 132, 319529000),
(6, 'ramya', 1234567891012345, 9, 2022, 155, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `b_id` int(11) NOT NULL,
  `v_id` int(10) NOT NULL,
  `color` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `booking_num` varchar(100) NOT NULL,
  `book_date` date NOT NULL,
  `book_time` time NOT NULL,
  `d_date` timestamp NULL DEFAULT NULL,
  `s_id` int(11) NOT NULL,
  `advance` float(10,2) NOT NULL,
  `booking_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`b_id`, `v_id`, `color`, `user_id`, `booking_num`, `book_date`, `book_time`, `d_date`, `s_id`, `advance`, `booking_status`) VALUES
(37, 82, ' ORANGE', 19, '600055829', '2021-12-14', '11:31:44', '2021-12-29 08:00:00', 39, 29760.00, 'Delivered'),
(38, 82, ' ORANGE', 19, '904944357', '2021-12-14', '11:34:55', '2021-12-31 08:00:00', 39, 14880.00, 'Delivered'),
(39, 70, ' PEARL WHITE', 19, '273599680', '2021-12-14', '11:41:54', '2021-12-21 08:00:00', 46, 45540.00, 'Delivered'),
(40, 82, 'WHITE', 19, '160441947', '2021-12-14', '15:34:25', NULL, 39, 14880.00, 'Booked'),
(41, 82, 'WHITE', 19, '1812877042', '2021-12-14', '15:35:06', NULL, 39, 29760.00, 'Booked'),
(42, 82, 'WHITE', 19, '1320905549', '2021-12-14', '15:39:58', NULL, 39, 14880.00, 'Booked'),
(43, 59, 'MATTALIC Black ', 19, '977486246', '2021-12-14', '15:49:46', NULL, 36, 10800.00, 'Booked'),
(44, 82, 'WHITE', 19, '1634489829', '2021-12-15', '12:10:26', '2021-12-30 08:00:00', 39, 14880.00, 'Delivered'),
(45, 60, ' GUNMETAL GREY', 19, '411289452', '2021-12-15', '12:18:44', NULL, 36, 11099.70, 'Booked'),
(46, 81, ' ORANGE', 19, '172405936', '2021-12-15', '12:21:49', '2021-12-25 08:00:00', 39, 10320.00, 'Delivered'),
(47, 70, 'SILVER', 19, '842157916', '2021-12-15', '12:27:57', '2021-12-16 08:00:00', 46, 91080.00, 'Delivered'),
(48, 82, 'WHITE', 19, '499219120', '2022-01-03', '10:06:26', NULL, 39, 14880.00, 'Booked'),
(49, 82, 'WHITE', 21, '1374413379', '2022-01-19', '09:56:14', '2022-01-28 08:00:00', 39, 14880.00, 'Delivered'),
(50, 82, 'WHITE', 19, '1092596923', '2022-01-20', '17:53:50', NULL, 39, 29760.00, 'Booked'),
(51, 68, 'DARK MATTE BLUE', 19, '707409106', '2022-01-20', '17:58:11', '2022-02-02 08:00:00', 46, 31140.00, 'Delivered'),
(52, 68, 'DARK MATTE BLUE', 19, '858337865', '2022-01-21', '10:40:34', NULL, 46, 31140.00, 'Booked'),
(53, 81, ' ORANGE', 19, '533789414', '2022-01-21', '10:48:33', '2022-02-04 08:00:00', 39, 10320.00, 'Delivered'),
(54, 81, 'BLACK', 21, '2101910908', '2022-01-21', '11:22:06', NULL, 39, 10320.00, 'Booked'),
(55, 68, 'DARK MATTE BLUE', 21, '1515761759', '2022-01-21', '12:34:50', NULL, 46, 62280.00, 'Booked'),
(56, 68, 'DARK MATTE BLUE', 19, '541588423', '2022-01-21', '12:36:21', '2022-02-04 08:00:00', 46, 31140.00, 'Delivered'),
(57, 68, 'DARK MATTE BLUE', 19, '105230899', '2022-01-21', '13:29:47', '2022-02-03 08:00:00', 46, 31140.00, 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `user_id`, `s_id`, `msg`) VALUES
(8, 14, 39, 'excellent'),
(9, 0, 36, 'GOOD MILAGE');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int(11) NOT NULL,
  `galler_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `galler_image`) VALUES
(191, 'front-left-side-47.jpg'),
(192, 'front-left-side-47.webp'),
(193, 'front-view-118.webp'),
(194, 'm_access-125_11540279833.webp'),
(195, 'm_akula-310_11559304167.webp'),
(196, 'm_jupiter_11570181761.webp'),
(197, 'm_yzf-r15-v3_11540277694.webp'),
(198, 'rear-left-view-121.webp'),
(199, 'side-view-(right)-38.webp'),
(200, 'top-view-117.jpg'),
(201, 'v_sxl-125-cbs1546147451.webp'),
(202, 'm_classic-350_11539345735.webp'),
(203, 'm_himalayan_11540386022.webp'),
(204, 'm_rc-200_11560945059.webp'),
(205, 'm_thunderbird-350_11540276150.webp'),
(206, 'bs6-access-1255e12fe5b5b45b.webp'),
(207, 'exterior-image-168.webp'),
(208, 'front-left-side-47.webp'),
(209, 'front-view-118.webp'),
(210, 'ktm-duke5e381fe8839e9.webp'),
(211, 'm_activa-125_11539695291.webp'),
(212, 'm_avenger_11540274551.webp'),
(213, 'm_bajaj-pulsar-200-ns_11540274592.webp'),
(214, 'm_ct110_11562904445.webp'),
(215, 'm_dio_41539694957.webp'),
(216, 'm_duke-390_11539346124.webp'),
(217, 'm_grazia_31539696574.webp'),
(218, 'm_rc-200_11560945059.webp'),
(219, 'side-mirror-(glass)-92.webp'),
(220, 'side-view-(left)-90.webp');

-- --------------------------------------------------------

--
-- Table structure for table `showroom`
--

CREATE TABLE `showroom` (
  `s_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `showroom`
--

INSERT INTO `showroom` (`s_id`, `category_id`, `s_name`, `contact`, `address`, `password`) VALUES
(36, 1, 'Royal Enfield Showroom', '6363046549', 'Mai surak-habba kadal RD,srinagar,jammu', 'Royal enfield2'),
(39, 1, 'KTM Jammu', '9484299999', 'Shop 57 morh,chowadhi,leh', 'Ktm jammu1'),
(40, 1, 'Stat Suzuki', '9125200334', 'Rehari cheengi,BC Rd,poonch', 'Star suzuki1'),
(46, 2, 'Maruti Suzuki', '9496730229', 'NH1A Near Dak Bangalow,Udhampur', 'Maruti 123'),
(48, 2, 'K C Hyundai', '9495113145', 'KC Hyundai Akhnoor,Sungal Morh,Akhnoor', 'hyundai 123'),
(127, 2, 'Maruti Suzuki ARENA', '9446056804', 'Arvind Building, Balmatta Rd, Hampankatta', 'Marina 1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `address` text NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `user_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `fullname`, `contact`, `address`, `email_id`, `password`, `user_status`) VALUES
(19, 'rashmi', 7994744229, 'kasaragod', 'rashmikalnad123@gmail.com', 'Rashmi123', 'Active'),
(20, 'rashmi', 7994744229, 'manglore', 'rashmikalnad124@gmail.com', 'Rashmi@123', 'Active'),
(21, 'RAMYA', 7994744229, 'MANGALORE', 'ramya@gmail.com', 'Ramya@123', 'Active'),
(22, 'xyz', 7667876556, 'fttt', 'ramya1233@gmail.com', 'Wr@112345', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `v_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `v_name` varchar(30) NOT NULL,
  `v_brand` varchar(150) NOT NULL,
  `v_about` text NOT NULL,
  `v_model` varchar(30) NOT NULL,
  `v_type` varchar(25) NOT NULL,
  `v_cost` float NOT NULL,
  `fuel_type` text NOT NULL,
  `mileage` varchar(25) NOT NULL,
  `displacement` varchar(35) NOT NULL,
  `engine_type` varchar(50) NOT NULL,
  `no_of_cylinder` int(10) DEFAULT NULL,
  `fuel_tank_capacity` varchar(25) NOT NULL,
  `maxtorque` varchar(50) NOT NULL,
  `v_colors` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`v_id`, `s_id`, `category_id`, `v_name`, `v_brand`, `v_about`, `v_model`, `v_type`, `v_cost`, `fuel_type`, `mileage`, `displacement`, `engine_type`, `no_of_cylinder`, `fuel_tank_capacity`, `maxtorque`, `v_colors`) VALUES
(42, 34, 1, 'Yamaha YZF R15 V3', 'Yamaha', 'Yamaha’s entry-level supersport offering in India is the R15 V3, which has long been king of the sporty 150cc segment. In this third iteration, it is powered by a 155cc liquid-cooled motor that is also equipped with Variable Valve Timing, ensuring an even spread of power across the rev range. Peak output stands at 19.3PS and XXNm.\r\n\r\nThe R15 also gets features such as an LED headlight, fully digital instrument console, slipper clutch and dual-channel ABS. It is held together by a Yamaha trademark Deltabox frame suspended on a conventional fork and preload-adjustable mono-shock. Stopping duties are taken care of by a 282mm front disc and 220mm rear disc. Yamaha recently launched the BS6-compliant version of the R15 V3 but the BS4 variant is still available for Rs 1,40,800 (ex-showroom Delhi).', 'FEB-2018', 'Bike', 140000, 'Petrol', '45kmpl', '155cc', 'Single Cylinder, 4 Stroke, 4 Valve, SOHC', 1, '11L', '14.7 Nm @ 8500 rpm', 'RACING BLUE, BLACK, THUNDER GREY, DARK KNIGHT'),
(44, 33, 1, 'Yamaha MT 15 BS6', 'Yamaha', 'The Yamaha MT-15 BS6 is powered by a 155 cc air-cooled engine which produces of power. It has a fuel tank of 10 L and a . The Yamaha MT-15 BS6 starts at Rs 1.38 and goes up to Rs 1.39 Lakh (ex-showroom, Delhi). It is available in three variants.', 'March 2019', 'Bike', 138000, 'Petrol', '48.58kmpl', '155cc', 'Liquid cooled, 4 stroke, SOHC, 4 valve', 1, '10L', '14.7 Nm @ 8500 rpm', 'MATTALIC Black , DARK MATTE BLUE, ICE FLUO VERMILLION'),
(45, 33, 1, 'Yamaha YZF R15 V3', 'Yamaha', 'Yamaha’s entry-level supersport offering in India is the R15 V3, which has long been king of the sporty 150cc segment. In this third iteration, it is powered by a 155cc liquid-cooled motor that is also equipped with Variable Valve Timing, ensuring an even spread of power across the rev range. Peak output stands at 19.3PS and XXNm.\r\n\r\nThe R15 also gets features such as an LED headlight, fully digital instrument console, slipper clutch and dual-channel ABS. It is held together by a Yamaha trademark Deltabox frame suspended on a conventional fork and preload-adjustable mono-shock. Stopping duties are taken care of by a 282mm front disc and 220mm rear disc. Yamaha recently launched the BS6-compliant version of the R15 V3 but the BS4 variant is still available for Rs 1,40,800 (ex-showroom Delhi).', 'FEB-2018', 'Bike', 140000, 'Petrol', '48.75kmpl', '155cc', 'Single Cylinder, 4 Stroke, 4 Valve, SOHC', 1, '11L', '14.7 Nm @ 8500 rpm', 'RACING BLUE, BLACK, THUNDER GREY, DARK KNIGHT'),
(46, 51, 1, 'Yamaha YZF R15 V3', 'Yamaha', 'Yamaha’s entry-level supersport offering in India is the R15 V3, which has long been king of the sporty 150cc segment. In this third iteration, it is powered by a 155cc liquid-cooled motor that is also equipped with Variable Valve Timing, ensuring an even spread of power across the rev range. Peak output stands at 19.3PS and XXNm.\r\n\r\nThe R15 also gets features such as an LED headlight, fully digital instrument console, slipper clutch and dual-channel ABS. It is held together by a Yamaha trademark Deltabox frame suspended on a conventional fork and preload-adjustable mono-shock. Stopping duties are taken care of by a 282mm front disc and 220mm rear disc. Yamaha recently launched the BS6-compliant version of the R15 V3 but the BS4 variant is still available for Rs 1,40,800 (ex-showroom Delhi).', 'FEB-2018', 'Bike', 142000, 'Petrol', '48.75kmpl', '155cc', 'Single Cylinder, 4 Stroke, 4 Valve, SOHC', 1, '11L', '14.7 Nm @ 8500 rpm', 'RACING BLUE, BLACK, THUNDER GREY, DARK KNIGHT'),
(54, 34, 1, 'Yamaha MT 15', 'Yamaha', 'The power figure for the BS6 MT-15 has been revealed ahead of its launch next month. Yamaha unveiled the BS6 MT-15 at the launch of the Fascino 125 Fi. It will launch the motorcycle in February. The new bike features a new Ice Fluo-Vermillion paint scheme along with a side stand engine cut-off switch and a rear radial tyre which now comes as part of the standard fitment.\r\n\r\nThe Yamaha MT-15 is essentially the naked streetfighter iteration of the YZF-R15 Version 3.0. It draws power from the same engine as the R15 but the final sprocket is larger, for better acceleration than outright top speed. Like the previous version, the BS6 MT-15 gets a six-speed gearbox with slipper clutch. The delta box frame is suspended on a telescopic fork and a linked mono-shock. Brakes include 282mm front and 220mm rear disc with single-channel ABS as standard. The 17-inch alloy wheels are shod with 100-section tyre front and 140-section rear radial tyre.', 'March-2019', 'Bike', 136000, 'Petrol', '48.58kmpl', '155cc', 'Liquid cooled, 4-stroke, SOHC, 4-valve', 1, '10L', '14.7 Nm @ 8500 rpm', 'MATTALIC Black , DARK MATTE BLUE'),
(55, 34, 1, 'Yamaha FZ S Fi ', 'Yamaha', 'Yamaha has launched the BS6 FZ-FI and FZS-FI. Both motorcycles now come with an updated BS6 compliant motor. In addition, the new FZS-FI now gets two new colours: Darknight and Metallic Red. \r\n\r\nIts updated BS6 149cc motor now makes 12.4PS at 7250rpm and 13.6Nm at 5500rpm. The new engine update should make the new FZS-FI friendlier in the city.  Competition for the FZ-S Fi V3.0 comes in the form of the TVS Apache RTR 160 4V and the 2019 Suzuki Gixxer.', 'JAN-2018', 'Bike', 98680, 'Petrol', '50kmpl', '149cc', 'Air cooled, 4-stroke, SOHC, 2-valve', 1, '12.8L', '13.2 PS @ 8000rpm', 'MATTALIC Black , DARK MATTE BLUE'),
(56, 35, 1, 'Royal Enfield Himalayan', 'RoyalEnfield', 'The current model is powered by a 411cc, single-cylinder, air and oil-cooled, fuel-injected engine, which churns a maximum power of 24.83PS @ 6500rpm and a maximum torque of 32Nm @ 4250rpm mated to a 5-speed gearbox. The total fuel tank capacity of the bike is 15 litres. The Himalayan is fitted with 21-inch front and 18-inch rear tube-type radial tyres. The suspension setup consists of telescopic forks with 200mm of wheel travel at the front and a rear monoshock, which offers 180mm wheel travel.', 'FEB-2016-present', 'Bike', 180000, 'Petrol', '29.48kmpl', '411cc', 'Single Cylinder, 4 stroke, Air cooled, SOHC', 1, '15L', '32 Nm @ 4500 rpm', 'MATTALIC Black , WHITE, SLEET GREY'),
(57, 35, 1, 'Royal Enfield Classic 350', 'RoyalEnfield', 'Royal Enfield Classic 350 Price: The Royal Enfield Classic 350’s price begins from Rs 1.59 lakh for the single-channel ABS version and from Rs 1.67 lakh for the dual-channel variant. On certain colours of the dual-channel ABS trim, you also get alloy rims. Prices of these models are a bit higher than that of the standard spoke rim versions. The dual-channel ABS Classic 350 comes in six colours: Chrome, Gunmetal Grey, Sandstorm Sand, Airborne Blue, Stealth Black and Classic Black (replete with golden pinstripes). The single-channel ABS version gets four colours: Chestnut Red, Ash, Mercury Silver and Redditch Red.  Royal Enfield Classic 350 Features:  The Classic 350 has never been a feature-rich motorcycle, receiving only some minor updates since 2009. The lighting systems are basic bulb units, the speedometer is a simple analogue unit and aside from the odometer, there is no other data relayed back to the rider. There are two tell-tale lights for low fuel and engine check (introduced with the BS6 updates). It arrives in two trims: single-channel and dual-channel ABS. The Classic 350 finally gets closed-loop fuel injection with an oxygen sensor in the exhaust. ', 'DEC-2009', 'Bike', 184995, 'Petrol', '40.8kmpl', '346cc', 'Single Cylinder, 4 Stroke, Twinspark', 1, '13.5L', '28 Nm @ 4000 rpm', 'BLACK, STORMRRIDER SAND, AIRBONE BLUE, STEALTH BLACK, CHROME BLACK, GUNMETAL GREY, CHESTNUT'),
(58, 35, 1, 'Royal Enfield Interceptor 650', 'RoyalEnfield', 'The Royal Enfield Interceptor 650 BS6 has started to reach select dealerships and the deliveries have commenced too. It now costs Rs 8,000 to Rs 9,000 more than the BS4 model depending on the variant. The new motorcycle remains cosmetically and mechanically unchanged. There is a negligible 0.2PS drop in power, now rated at 47.45PS. Select dealerships across the country have started accepting bookings for the BS6 Interceptor 650 for a token amount of Rs 10,000.    On a side note, customers can now customise their Interceptor 650 via Royal Enfield\'s online configurator tool. There are several accessories to choose from like mirrors, visors, guards and seats. Panniers, alloy wheels and auxiliary lamps will be added to the list soon. Royal Enfield has increased the price of the Interceptor 650 by around Rs 6,000. ', 'SEP-2018', 'Bike', 285000, 'Petrol', '15kmpl', '648cc', '4 Stroke, Air Oil Cooled, SOHC Engine', 2, '13.7L', '52 Nm @ 5250 rpm', 'MARK TREE, ORANGE CRUSH, BAKER EXPRESS, SILVER SPECTRE, GLITTER AND DUST, RAVISHING RED'),
(59, 36, 1, 'Royal Enfield Himalayan', 'RoyalEnfield', 'The current model is powered by a 411cc, single-cylinder, air and oil-cooled, fuel-injected engine, which churns a maximum power of 24.83PS @ 6500rpm and a maximum torque of 32Nm @ 4250rpm mated to a 5-speed gearbox. The total fuel tank capacity of the bike is 15 litres. The Himalayan is fitted with 21-inch front and 18-inch rear tube-type radial tyres. The suspension setup consists of telescopic forks with 200mm of wheel travel at the front and a rear monoshock, which offers 180mm wheel travel.', 'FEB-2016-present', 'Bike', 180000, 'Petrol', '29.48kmpl', '411cc', 'Single Cylinder, 4 stroke, Air cooled, SOHC', 1, '15L', '32 Nm @ 4500 rpm', 'MATTALIC Black , WHITE, SLEET GREY'),
(60, 36, 1, 'Royal Enfield Classic 350', 'RoyalEnfield', 'Royal Enfield Classic 350 Price: The Royal Enfield Classic 350’s price begins from Rs 1.59 lakh for the single-channel ABS version and from Rs 1.67 lakh for the dual-channel variant. On certain colours of the dual-channel ABS trim, you also get alloy rims. Prices of these models are a bit higher than that of the standard spoke rim versions. The dual-channel ABS Classic 350 comes in six colours: Chrome, Gunmetal Grey, Sandstorm Sand, Airborne Blue, Stealth Black and Classic Black (replete with golden pinstripes). The single-channel ABS version gets four colours: Chestnut Red, Ash, Mercury Silver and Redditch Red.  Royal Enfield Classic 350 Features:  The Classic 350 has never been a feature-rich motorcycle, receiving only some minor updates since 2009. The lighting systems are basic bulb units, the speedometer is a simple analogue unit and aside from the odometer, there is no other data relayed back to the rider. There are two tell-tale lights for low fuel and engine check (introduced with the BS6 updates). It arrives in two trims: single-channel and dual-channel ABS. The Classic 350 finally gets closed-loop fuel injection with an oxygen sensor in the exhaust. ', 'DEC-2009', 'Bike', 184995, 'Petrol', '40.8kmpl', '346cc', 'Single Cylinder, 4 Stroke, Twinspark', 1, '13.5L', '28 Nm @ 4000 rpm', 'BLACK, STORMRRIDER SAND, AIRBONE BLUE, STEALTH BLACK, CHROME BLACK, GUNMETAL GREY, CHESTNUT'),
(63, 37, 1, 'Bajaj Pulsar NS200', 'Bajaj', '19 January 2018: Back in 2012, when the Pulsar NS 200 was launched for the first time, it showed that first glimpse of what the next generation Pulsars will look like. Being absent in the market for a couple of years, the Pulsar NS 200 came back to the market with some nice and subtle changes. With a sharp styling akin to the bigger European street-fighters, the new Pulsar NS 200 offers a big bike like styling scaled down to a smaller size and segment, thus making it more aggressive. Packed with new age features like pilot lamps, clip-on handlebars, digital meters, backlit switchgear, disc brakes, single-channel ABS and LED tail lamp, the Pulsar NS 200 offers a premium over the conventional 150-180cc offerings. The Pulsar NS 200 is being offered with three different dual tone paint schemes, namely Graphite Black, Mirage White and Wild Red. The naked street-fighter retains the single cylinder, liquid cooled, four valve, triple spark, 199.5cc DTS-i engine from the previous model, with the same numbers: 23.5PS of maximum power at 9500rpm and 18.3Nm of peak torque at 8000rpm, though with enhanced levels of refinement than before. The suspension setup too has been carried forward, with a perimeter frame under the skin as well as hydraulic telescopic forks at the front and a Nitrox gas-charged mono-shock absorber with rectangular swing-arm at the rear. Starting at a price of Rs 1.36 Lakh (On road, Delhi), the new Pulsar NS 200 now comes with an option of single-channel ABS as well. It has claimed mileage of 30kmpl and a top speed of 135kmph.  The NS 200 competes against the likes of the TVS Apache RTR 200, the KTM 200 Duke and the Yamaha FZ 25. ', 'Oct-2012- present', 'Bike', 114000, 'Petrol', '36.1kmpl', '199cc', '4  stroke, SOHC 4 Valve, Liquid Cooled, Triple Spa', 1, '12L', '18.3 Nm @ 8000 rpm', 'Fiery Yellow, Wild Red, Mirage white, Graphite Black'),
(64, 37, 1, 'Bajaj Avenger Street 220', 'Bajaj', 'The Bajaj Avenger 220 is now available with single-channel ABS with both variants, the Cruise 220 and the Street 220. The new variants are priced at Rs 1.03 lakh (ex-showroom Delhi), which makes it around Rs 7,000 more expensive than the non-ABS version. Apart from the inclusion of ABS, the motorcycle remains identical to the previous model. The Street 220 is available in two paint options, white and black.\r\n\r\nIn terms of features, it gets LED DRLs and a fully digital instrument console. Mechanically, it continues to use the same 219.9cc engine which puts out 19.03PS at 8400rpm and 17.5Nm at 7000rpm. Transmission duties are handled by a 5-speed gearbox. The claimed mileage of Street 220 is 45kmpl. Suspension duties are taken care of by a telescopic fork up front and twin shocks absorber at the rear. Braking is handled by the same 260mm disc at the front and a 130mm drum at the rear, but as mentioned above, it now features single-channel ABS.\r\n\r\nIn terms of competition, it goes up against the Suzuki Intruder 150, which is priced at Rs 1.08 lakh (ex-showroom Delhi).', 'June-2005', 'Bike', 115000, 'Petrol', '45kmpl', '225cc', 'Twin spark, 2 valve. DTS i engine, oil cooled', 1, '13L', '17.5 Nm @ 7000 rpm', 'WHITE, MATTE BLACK'),
(65, 37, 1, 'Bajaj CT110', 'Bajaj', 'Bajaj has silently launched the new CT110 in India. The new commuter motorcycle is available in two variants: KS Alloy and ES Alloy. While the base variant is priced at Rs 37,997, the top-spec ES Alloy variant retails at Rs 44,480 (both prices ex-showroom Delhi). It borrows its 115cc powerplant from the Platina 110. This mill makes 8.6PS and 9.81Nm and gets a 4-speed gearbox. The CT110 will also get cosmetic updates like rubber tank pads, fork gaiters, braced handlebars, black alloy wheels and blacked out parts. It will be positioned between the CT100 and Platina 100. \r\n\r\nThe CT110’s main rivals will be the Radeon 110 and Hero Splendor. ', 'JULY-2019', 'Bike', 39994, 'Petrol', '104kmpl', '115cc', 'Air Cooled, Single Cylinder, 4 Stroke', 1, '10.5L', '9.81 Nm @ 5000 rpm', 'YELLOW, DARK MATTE BLUE, DARK RED'),
(66, 38, 1, 'Bajaj Pulsar NS200', 'Bajaj', '19 January 2018: Back in 2012, when the Pulsar NS 200 was launched for the first time, it showed that first glimpse of what the next generation Pulsars will look like. Being absent in the market for a couple of years, the Pulsar NS 200 came back to the market with some nice and subtle changes. With a sharp styling akin to the bigger European street-fighters, the new Pulsar NS 200 offers a big bike like styling scaled down to a smaller size and segment, thus making it more aggressive. Packed with new age features like pilot lamps, clip-on handlebars, digital meters, backlit switchgear, disc brakes, single-channel ABS and LED tail lamp, the Pulsar NS 200 offers a premium over the conventional 150-180cc offerings. The Pulsar NS 200 is being offered with three different dual tone paint schemes, namely Graphite Black, Mirage White and Wild Red. The naked street-fighter retains the single cylinder, liquid cooled, four valve, triple spark, 199.5cc DTS-i engine from the previous model, with the same numbers: 23.5PS of maximum power at 9500rpm and 18.3Nm of peak torque at 8000rpm, though with enhanced levels of refinement than before. The suspension setup too has been carried forward, with a perimeter frame under the skin as well as hydraulic telescopic forks at the front and a Nitrox gas-charged mono-shock absorber with rectangular swing-arm at the rear. Starting at a price of Rs 1.36 Lakh (On road, Delhi), the new Pulsar NS 200 now comes with an option of single-channel ABS as well. It has claimed mileage of 30kmpl and a top speed of 135kmph.  The NS 200 competes against the likes of the TVS Apache RTR 200, the KTM 200 Duke and the Yamaha FZ 25', 'Oct-2012- present', 'Bike', 114000, 'Petrol', '36.1kmpl', '199cc', '4  stroke, SOHC 4 Valve, Liquid Cooled, Triple Spa', 1, '12L', '18.3 Nm @ 8000 rpm', 'Fiery Yellow, Wild Red, Mirage white, Graphite Black'),
(67, 38, 1, 'Bajaj Avenger Street 220', 'Bajaj', 'The Bajaj Avenger 220 is now available with single-channel ABS with both variants, the Cruise 220 and the Street 220. The new variants are priced at Rs 1.03 lakh (ex-showroom Delhi), which makes it around Rs 7,000 more expensive than the non-ABS version. Apart from the inclusion of ABS, the motorcycle remains identical to the previous model. The Street 220 is available in two paint options, white and black.\r\n\r\nIn terms of features, it gets LED DRLs and a fully digital instrument console. Mechanically, it continues to use the same 219.9cc engine which puts out 19.03PS at 8400rpm and 17.5Nm at 7000rpm. Transmission duties are handled by a 5-speed gearbox. The claimed mileage of Street 220 is 45kmpl. Suspension duties are taken care of by a telescopic fork up front and twin shocks absorber at the rear. Braking is handled by the same 260mm disc at the front and a 130mm drum at the rear, but as mentioned above, it now features single-channel ABS.\r\n\r\nIn terms of competition, it goes up against the Suzuki Intruder 150, which is priced at Rs 1.08 lakh (ex-showroom Delhi).', 'June-2005', 'Bike', 115000, 'Petrol', '45kmpl', '225cc', 'Twin spark, 2 valve. DTS i engine, oil cooled', 1, '13L', '17.5 Nm @ 7000 rpm', 'WHITE, MATTE BLACK'),
(68, 46, 2, 'Maruti Swift', 'MarutiSuzuki', 'Maruti Suzuki Swift Prices & Variants: The Swift is priced between Rs 5.14 lakh and Rs 8.84 lakh (ex-showroom Delhi). It comes in four variants: L, V, Z, and Z+.\r\n\r\nMaruti Suzuki Swift Engine: It is powered by either a 1.2-litre petrol unit that churns out 83PS of power and 113Nm of torque or a 1.3-litre diesel engine that produces 75PS and 190Nm. Both the powertrains come with the option of either a 5-speed manual or a 5-speed AMT gearbox.\r\n\r\nThe petrol variant of the Swift claims an ARAI-certified mileage of 22kmpl, while the diesel variant has a claimed fuel efficiency of 28.4kmpl.\r\n\r\nMaruti Suzuki Swift Features: Maruti offers dual front airbags, ISOFIX child seat anchors and ABS with EBD as standard across all variants of the Swift. Other features on offer include auto LED projector headlamps with LED DRLs, tail lamps with LED brake lights, and a 7-inch touchscreen infotainment system with Apple CarPlay and Android Auto compatibility. What’s more, it also gets rear parking sensors with parking camera, electrically folding and adjustable ORVMs, automatic climate control, and push-button start. However, many of these comforts are restricted to the higher variants.', 'May-2005', 'Car', 519000, 'Diesel', '24.6kmpl', '1248cc', 'DDiS 190 Engine', 4, '37L', '190Nm@2000rpm', 'DARK MATTE BLUE, PLATINUM SILVER, VOLCANO RED, SPORTY WHITE, MERCURY GREY'),
(69, 46, 2, 'Maruti Vitara Brezza', 'MarutiSuzuki', 'Maruti Vitara Brezza Variants and Price: It is available in four variants: LXi, VXi, ZXi, and ZXi+. They are priced in the range of Rs 7.34 lakh to Rs 11.4 lakh (ex-showroom Delhi).\r\n\r\nMaruti Vitara Brezza Engine and Transmission: While the pre-facelift Vitara Brezza was offered with a diesel engine, the facelifted SUV comes with a BS6-compliant 1.5-litre petrol unit. This new engine puts out 105PS of power and 138Nm of torque. It comes mated to either a 5-speed manual transmission option or a 4-speed AT gearbox.\r\n\r\nMaruti Vitara Brezza Features: With the facelift, Maruti has also updated the feature list of the sub-4m SUV. Along with dual front airbags, ABS with EBD and rear parking sensors, it now comes with dual LED projector headlamps with dual functioning LED DRLs, LED fog lamps, LED tail lamps, auto-dimming IRVM, and a new 7-inch SmartPlay Studio infotainment system with Apple CarPlay and Android Auto.', 'Aug-2016-present', 'Car', 734000, 'Petrol', '18.76kmpl', '1462cc', 'K15B ISG Petrol Engine', 4, '48L', '138 Nm @ 4400 rpm', 'DARK MATTE BLUE, SLEET GREY, SNOW BLACK, ORANGE, DARK RED, SILVER'),
(70, 46, 2, 'Maruti Ertiga', 'MarutiSuzuki', 'Latest Update: Maruti has launched the BS6-compliant version of the Ertiga S-CNG.\r\n\r\nMaruti Ertiga Variants & Price: The Ertiga is available in four variants -- L, V, Z, and Z+ -- priced from Rs 7.59 lakh to Rs 11.20 lakh (ex-showroom Delhi). The CNG option is only available in the VXi variant and it is priced at Rs 8.95 lakh.\r\n\r\nMaruti Ertiga Engine & Transmission: The BS6 Ertiga is powered by a 1.5-litre petrol engine that produces 105PS of power and 138Nm of torque. The diesel variants are powered by a 1.5-litre engine that produces 95PS of power and 225Nm of torque. While the petrol engine is mated to a 5-speed manual, the diesel engine is paired with a 6-speed manual. Maruti also offers a 4-speed automatic transmission on the petrol version.\r\n\r\nThe CNG-petrol variant uses the same 1.5-litre petrol engine but without the smart hybrid tech. It has a claimed efficiency of 26.08km/kg but the performance drops to 92PS and 122Nm. Meanwhile, the 1.3-litre diesel unit is no longer available on the Ertiga.\r\n\r\nMaruti Ertiga Features: The second-gen Ertiga is loaded with features. It is equipped with projector headlamps, fog lamps, LED tail lamps, 15-inch wheels, a seven-inch infotainment system with Android Auto and CarPlay, push-button start-stop, ventilated front cup holders, auto climate control with rear AC vents, and a reverse parking camera. Safety features on offer include dual front airbags, ABS with EBD, ISOFIX child seat anchors, and reverse parking sensors. It also gets ESP and hill hold for safety, but these features are limited to the automatic variant.', 'jan-2012-present', 'Car', 759000, 'Diesel', '24.2kmpl', '1498cc', 'DDIS 200 Smart Hybrid', 4, '45L', '93.87bhp@4000rpm', 'SILVER, PEARL WHITE, DUAL TONE RED, DARK BLUE, TITANIUM GREY'),
(71, 46, 2, 'Maruti Wagon R', 'MarutiSuzuki', 'Maruti WagonR Engines & Transmissions: Maruti is offering the WagonR with two BS6-compliant engines: a 1.0-litre petrol and a 1.2-litre unit. The 1.2-litre engine produces 83PS of power and 113Nm of torque while the usual 1.0-litre 3-cylinder petrol engine is good for 68PS and 90Nm. Both engines are offered with the choice of 5-speed manual and AMT gearboxes. The new WagonR is also offered in a CNG variant in the 1.0-litre version.\r\n\r\nMaruti WagonR Safety Features: It comes with standard safety features such as a driver airbag, ABS with EBD, front seatbelt reminder, speed alert system, and rear parking sensors. The co-passenger airbag along with front seatbelts with pretensioners and load limiters are restricted to the top-spec Z variant and optional on the L and V variants.\r\n\r\nMaruti WagonR Features: The new WagonR features a 7-inch touchscreen infotainment system with Android Auto and Apple CarPlay, manual AC, all four power windows, and electrically adjustable and foldable ORVMs. What’s more, Maruti also offers the hatchback with rear washer and wiper with defogger, 60:40 split rear seats, and front fog lamps.', 'Feb-2019', 'Car', 445000, 'Petrol', '20.52kmpl', '1197cc', 'K12M Petrol Engine', 4, '32L', '113 Nm @ 4200 rpm', 'WHITE, DARK MATTE BLUE, THUNDER GREY, ORANGE, SILVER, BROWN'),
(74, 47, 2, 'Hyundai Creta', 'Hyundai', 'The Hyundai Creta has 2 Diesel Engine and 1 Petrol Engine on offer. The Diesel engine is 1396 cc and 1582 cc while the Petrol engine is 1591 cc. It is available with the Manual and Automatic transmission. Depending upon the variant and fuel type the Creta has a mileage of 14.8 to 22.1 kmpl. The Creta is a 5 seater SUV and has a length of 4270mm, width of 1780mm and a wheelbase of 2590mm.', 'July-2015', 'Car', 999000, 'Diesel', '20.5kmpl', '1582cc', 'U2 CRDI VGT Engine', 4, '55L', '259.87 NM @ 1500-3000 rpm', 'DARK MATTE BLUE'),
(75, 48, 2, 'Hyundai Elantra', 'Hyundai', ' The new Elantra is only available in two trim levels - SX and SX(O).\r\n\r\nEngine: Hyundai is offering the new Elantra with a BS6-compliant 2.0-litre petrol engine that produces 152PS of power and 192Nm of torque. It is mated to a 6-speed manual and also gets a 6-speed automatic option.\r\n\r\nFeatures: The Elantra comes equipped with premium features like front ventilated seats, an 8-inch touchscreen infotainment system, dual-zone auto AC and a sunroof as well. It also gets Hyundai BlueLink connected car technology, same as offered on the Venue.\r\n\r\nSafety: It now gets six airbags as standard along with ISOFIX child seat anchorage, ABS with EBD, rear parking sensors and front seatbelt reminders. It also comes with front parking sensors and a rear parking camera too.', 'Aug-2019', 'Car', 1588000, 'Petrol', '14.62kmpl', '1999cc', 'Nu 2.0 MPi Petrol Engine', 4, '50L', '192.2 Nm @ 4000 rpm', 'WHITE, BLACK, DARK RED, SILVER, DARK BLUE'),
(76, 40, 1, 'Suzuki Access 125', 'Suzuki', 'The Suzuki Access 125 has overtaken the TVS Jupiter in terms of sales. The 125cc scooter has managed to sell 15,906 units more than the 110cc scooter in the month of January 2020.\r\n\r\nSuzuki has launched the new BS6 Access 125 at Rs 69,500 (ex-showroom Delhi). It costs Rs 6,608 more than the BS4 Access 125. The 125cc scooter gets a fuel-injected motor and new features like an LED headlamp and external fuel filler cap. Know more details about the new BS6 Access 125 here. \r\n\r\nThe BS4 Suzuki Access 125 continues to use a halogen headlamp setup. When compared to other 125cc scooters, it feels low on features. Customers can choose from eight colour options - Candy Sonoma Red, Metallic Matte Fibroin Gray, Pearl Suzuki Deep Blue, Glass Sparkle Black, Pearl Mirage White and Metallic Sonic Silver. There’s a Special Edition variant on offer too which gets a contrasting seat cover, chrome mirrors, and a brown floorboard. \r\n\r\nPowering the scooter is a 124cc, single-cylinder, air-cooled engine that delivers 8.7PS at 7000rpm and 10.2Nm at 5000rpm. The scooter gets a 12-inch front and 10-inch rear wheel. Suspension setup includes telescopic forks and a monoshock. Braking is via drum brakes on both sides with an optional disc brake on offer. \r\n\r\nThe Suzuki Access 125 competes against the Honda Activa 125, TVS Jupiter, TVS NTorq 125, Hero Maestro Edge 125 and the Hero Destini 125', 'Sep 2007', 'Scooter', 59014, 'Petrol', '64kmpl', '124cc', 'Single Cylinder, 4-Stroke, 2 Valve, SOHC', 1, '5.6L', '10.2 Nm @ 5000 rpm', 'WHITE, BLACK, GREY, DARK RED'),
(77, 40, 1, 'Suzuki Burgman Street', 'Suzuki', 'Suzuki has finally launched the BS6 Burgman Street in India at Rs 77,900 (ex-showroom), making it around Rs 7,000 more expensive than before. The maxi-scooter has received fuel-injection and an additional catalytic converter. Power output has remained the same at 8.7PS, but torque is down by 0.2Nm to 10Nm. Aside from this, there are no changes to the Burgman.\r\n\r\nThe Suzuki Burgman Street comes with a plethora of features such as integrated LED headlamps, a fairly large windscreen and the Suzuki Gixxer’s digital instrument cluster. The scooter also gets a 12V charging socket, storage bins behind the front apron, tubeless tyres and multi-function key slot. The long wheelbase, the stretched out floorboard and the wide handlebars should make the Burgman Street a hoot to ride around town. It’s sheer size also gives it a generous under-seat storage space of 21.5 litres, which is the best in its class.\r\n\r\nPowering the Burgman Street is the same motor that does duty on the Suzuki Access 125. This 124.3cc, single-cylinder, air-cooled engine produces 8.7PS of power and 10.2Nm of torque.  Suspension duties are handled by telescopic forks at the front and a side-mounted single shock at the rear. Braking is handled by a disc brake at the front and drum brakes at the rear, with CBS (combi-braking system) offered as standard. \r\n\r\nEquipped with 12-inch front and 10-inch rear alloy wheels, the Suzuki Burgman Street boasts of a ground clearance of 160mm. The 780mm seat height should make it accessible for most riders. Fuel tank capacity is rated at 5.6 litres. Tipping the scale at 110kg, the Burgman Street doesn’t look as heavy as it looks. The Suzuki Burgman Street competes with the Honda Grazia, Hero Maestro Edge 125, TVS NTorq 125, Vespa VLX 125 and the Aprilia SR 125.', 'FEB-2018', 'Scooter', 71001, 'Petrol', '53.5kmpl', '124cc', '4 Stroke, 1 Cylinder, Air Cooled', 1, '5.5L', '10  Nm @ 5500 rpm', 'MATTE BLACK, PEARL WHITE, MATTE AXIX GREY MATALLIC, Wild Red'),
(78, 40, 1, 'BS6 Suzuki Access 125', 'Suzuki', 'At Auto Expo 2020, Suzuki showcased its entire BS6 product portfolio, including the Suzuki Access 125 BS6. The BS6-compliant Access 125 was launched earlier in 2020 at Rs 64,800, which is around Rs 6,480 more than before. Apart from some features like the new LED headlamp, an external fuel filling cap and Eco Assist, there are no new features to report. The fuel injected motor now makes 8.7PS of power and 10Nm of torque, which is almost similar to the BS4 model. Except for the updated motor, the rest of the mechanicals remain the same as the BS4 model. Head here for more details.', 'March 2019', 'Scooter', 64800, 'Petrol', '52.45kmpl', '124cc', '4 Stroke, 1 Cylinder, Air Cooled', 1, '5L', '10 Nm @ 5500 rpm', 'Grey Cyan'),
(81, 39, 1, 'KTM 200 Duke', 'KTM', 'KTM has updated its entire lineup to meet the BS6 emission norms, making them the first bike maker to be fully-future emission compliant. There are a lot of changes done to the KTM 200 Duke BS6 which now gets the same styling as the 250 Duke. The 1290 Super Duke-derived body work as well as the split-trellis frame make their way on to the 200 Duke. The new price for the 200 Duke BS6 is Rs 1,72,749 (ex-showroom Delhi), which is Rs 10,496 more than the BS4 bike.\r\n\r\nThe KTM 200 Duke is powered by a 199.5cc, single-cylinder, liquid-cooled motor that continues to produce the same 25PS and 19.3Nm in its BS6 trim. Drive is sent to the rear wheel via a 6-speed gearbox and chain final drive. The engine is housed in a trellis frame suspended on a 43mm WP upside-down fork and preload-adjustable mono-shock. 17-inch alloy wheels are wrapped in MRF tubeless radial tyres. Dual-channel ABS comes as standard from the BS6 model. The BS4 model only got a single-channel ABS unit.\r\n\r\nStyling of the BS4 model had remained largely unchanged since it was first launched in 2012. Hence, KTM has sought to refresh the look of the naked motorcycle. The Duke gets a fully digital instrument cluster, which also displays a clock, tripmeter, odometer and distance to empty. ', 'FEB-2017', 'Bike', 172000, 'Petrol', '35kmpl', '199.5cc', 'Single Cylinder, 4 Valve, Liquid Cooled, FI, DOHC', 1, '13.5L', '19.3 Nm @ 8000 rpm', 'BLACK, ORANGE'),
(82, 39, 1, 'KTM 390 Duke', 'KTM', 'The KTM 390 Duke BS6 price has been revealed. Set to cost Rs 2.52 lakh (ex-showroom), the updated motorcycle will be around Rs 5,000 dearer than the BS4 version. As per our sources, the BS6 KTM 390 Duke will come with a bidirectional quickshifter as standard. This helps in shifting up and down the cogs of the without the need to pull the clutch lever. To ensure safety while downshifting aggressively, the bike gets a slipper clutch, which will be offered in the BS6-compliant model as well. \r\n\r\nApart from this, the bike gets two new colour options: white and black with orange highlights, like the KTM 390 Adventure, and a grey and black dual-tone variant with orange highlights. \r\n\r\nExpect the BS6-compliant 373cc single-cylinder liquid-cooled engine to make the same 43.5PS of power and 37Nm of torque as the BS4 model. Apart from these, the motorcycle’s underpinnings have remained unchanged. It continues to employ the WP separate function front fork, WP monoshock at the rear, 320mm front and 230mm rear disc with dual-channel switchable ABS. \r\n\r\nOther features like ride-by-wire throttle, TFT screen with smartphone connectivity, all-LED lighting system will be carried over as well. In terms of rivals, the KTM 390 Duke BS6 will compete against the Honda CB300R, BMW G 310 R and Benelli TNT 300.', 'DEC-2014', 'Bike', 248000, 'Petrol', '25.7kmpl', '373.2cc', 'Single Cylinder, 4 Valve, Liquid Cooled, FI, DOHC', 1, '13.5L', '37 Nm @ 7000 rpm', 'WHITE, ORANGE'),
(83, 39, 1, 'KTM RC 200', 'KTM', 'KTM India becomes the first two-wheel manufacturer to update its entire product range to meet the BS6 emission norms. The RC 200 BS6 does feature as many updates as its naked sibling, the 200 Duke BS6, but it still gets refreshed graphics and dual-channel ABS as standard. The RC 200 BS6 is now priced at Rs 1,96,768 (ex-showroom Delhi), which is Rs 6,138 more than its outgoing BS4 model.\r\n\r\nThe last update the RC 200 received was in 2018 when KTM had updated the RC 200 with a new white/orange paint scheme and more robust orange alloy wheels. It also featured wider mirrors for a better field of vision, an extra 12mm seat padding and a plastic cover to protect the rear monoshock. \r\n\r\nThe RC 200 gets twin projector headlamps, LED turn indicators and tail lamps and an all-digital instrument console. Power comes from a 199.5cc liquid-cooled single-cylinder engine that churns out 25PS and 19.2Nm, even after meeting BS6 emission norms.  \r\n\r\nThe suspension setup comprises of WP upside-down forks at the front and a WP monoshock at the rear. It gets 17-inch alloy wheels and tubeless tyres sourced from MRF. Braking is handled by a 300mm front disc and a 230mm disc at the rear.\r\n\r\nThe RC 200 does not have any direct rivals but the Yamaha R15 V3 BS6 and the Suzuki Gixxer SF 250 offer similar levels of performance.', 'March 2019', 'Bike', 190000, 'Petrol', '32kmpl', '199.5cc', 'Single Cylinder, 4 Valve, Liquid Cooled, FI, DOHC', 1, '9.5L', '19.2 Nm @ 8000 rpm', 'WHITE, ORANGE'),
(84, 43, 1, 'Honda Activa 125', 'Honda', 'The new BS6-compliant Honda Activa 125 has tallied 25,000 units since its launch in September 2019. It is the first BS6 compliant scooter to be sold in India. While its bodywork remains similar to the previous Activa 125, the new scooter gets a new front fascia with integrated pilot lamps. The bodywork also includes an external fuel-filler cap. Other features include a new semi-digital instrument console that shows average and real-time fuel efficiency as well as distance-to-empty readout. It gets side-stand engine immobiliser, pass light switch and an engine start-stop system. You can check out our road test of the BS6 version here.\r\n\r\n \r\n\r\nThe Activa 125, which has been around for quite some time, has received an update in the form of LED headlamps, LED position lamps and a bigger \'Honda\' badge up front. Convenience-enhancing features include the addition of a retractable hook behind the front apron and an optional mobile charging socket under the seat.\r\n\r\n \r\n\r\nThe 4-stroke BSIV engine remains unchanged as the updates are only cosmetic. The 124.9cc, single-cylinder engine churns a maximum power of 8.63PS and a maximum torque of 10.54Nm and is mated to a CVT gearbox. The company claims that it can reach a top speed of 84kmph and returns a mileage of 60kmpl.\r\n\r\n \r\n\r\nThe Activa 125 is equipped with Honda’s Combi Brake System (CBS) for effective braking. The standard version gets 130mm drum brakes at both ends whereas the Deluxe version comes with a 190mm disc brake up front. The base variant gets steel wheels instead. Suspension duties are managed by telescopic front forks and preload-adjustable rear monoshock.\r\n\r\n \r\n\r\nThe Standard variant of the Honda Activa 125 is priced at Rs 60,240. The mid variant with Drum brakes and alloys wheels is priced at Rs 62,176. The disc brake variant, on the other hand, costs Rs 64,625 (all prices ex-showroom, Delhi). The Activa 125 competes against the Suzuki Access 125, Hero Destini 125 and the TVS NTORQ 125.', 'Feb-2014', 'Scooter', 61650, 'Petrol', '60kmpl', '124.9cc', 'Fan cooled, 4 stroke, SI Engine', 1, '5.3L', '8.63 PS @ 6500 rpm', 'WHITE, SILVER, PEARL WHITE, SPORTS RED'),
(86, 43, 1, 'Honda Dio', 'HONDA', 'Honda Dio BS6 Price: \r\n\r\nThe Honda Dio BS6 has received a second price hike since its launch in February. The Standard version of the Honda Dio BS6 is now priced at Rs 61,497 while the Deluxe variant retails at Rs 64,847 (both ex-showroom Delhi). The scooter was originally launched in India in February 2020 starting at Rs 59,990 for the Standard variant and Rs 63,340 for the Deluxe variant.\r\n\r\nHonda Dio BS6 Features:\r\n\r\nIt gets the same set of features as the Honda Activa 6G like silent starter, tumble flow, and friction reduction technology. Additionally, the scooter also gets an external fuel filler cap and side stand indicator with engine cut-off function. It also comes with a redesigned, fully digital instrument cluster which now shows real-time and average mileage apart from the regular trove of information.', 'spt-2001', 'Scooter', 61497, 'Petrol', '40kmpl', '109.51cc', 'Fan Cooled, 4 Stroke, SI Engine', 1, '5.3L', '9Nm 4750rpm', 'MATTALIC Black , YELLOW, BLACK, ORANGE, GREY, DARK RED, MATTE RED'),
(87, 43, 1, 'Honda Grazia', 'HONDA', 'Honda Grazia 125 BS6 Price:\r\n\r\nHonda has increased the prices for the Honda Grazia BS6 by Rs 576. The standard BS6 Honda Grazia is priced at Rs 73,912 for the base variant. This variant gets steel wheels and drum brakes on both ends. It also does not feature Idling Stop System but gets an engine kill switch, instead. The top-of-the-line Deluxe priced at Rs 80,978 (all prices, ex-showroom Delhi) is loaded with all the bells and whistles like alloy wheels with a front disc brake, Idling Stop System.\r\n\r\n \r\n\r\nHonda Grazia 125 BS6 Features:\r\n\r\nThe Honda Grazia BS6 comes with an all-new sportier bodywork with sharper LED headlamps, LED DRL on the handlebar cowl and a redesigned, ‘Jet-inspired’ tail lamp. The scooter gets a fully digital instrument cluster which shows the tachometer readings, distance-to-empty, realtime and average mileage figures. There’s also a 3-step eco speed indicator apart from the regular tell-tale lights.', 'DCE-2018', 'Scooter', 73912, 'Petrol', '50.7kmpl', '124cc', 'Fan Cooled, 4 Stroke, SI Engine', 1, '5.3L', '10.3Nm@5000rpm', 'YELLOW, DARK MATTE BLUE, GREY, DARK RED'),
(91, 34, 1, 'Yamaha FZ 25', 'YAMAHA', '\r\nYamaha FZ25 Features:\r\n\r\nThe biggest change comes in the form of a new front fascia, which now looks sharper and uses a bi-function LED headlight flanked by LED DRLs. It also features a new engine cowl. The new FZS 25 variant gets a couple of extra goodies, which may aid its touring capabilities. This includes a taller visor for better wind deflection, knuckle guards, and funky gold-painted wheels. The standard model is offered in two colours: black and blue, while the FZS 25 gets three: green, white and matte blue.\r\n\r\n \r\n\r\nYamaha FZ25 Engine:\r\n\r\nThe FZ25 is powered by a BS6-compliant 249cc air-cooled engine which now gets fuel-injection. Despite the changes to the motor, the bike still makes 20.8PS at 8000rpm and 20.1Nm at 6000rpm, mated to a 5-speed transmission.', 'March-2018', 'Bike', 152000, 'Petrol', '50.7kmpl', '249cc', 'Air cooled 4 stroke SOHC 2 valve', 1, '14L', '20.1Nm@6000rpm', 'MATTALIC Black , RACING BLUE'),
(92, 36, 1, 'Royal Enfield Interceptor 650', 'Royalenfield', 'The Royal Enfield Interceptor 650 BS6 has started to reach select dealerships and the deliveries have commenced too. It now costs Rs 8,000 to Rs 9,000 more than the BS4 model depending on the variant. The new motorcycle remains cosmetically and mechanically unchanged. There is a negligible 0.2PS drop in power, now rated at 47.45PS. Select dealerships across the country have started accepting bookings for the BS6 Interceptor 650 for a token amount of Rs 10,000.  \r\n\r\nOn a side note, customers can now customise their Interceptor 650 via Royal Enfield\'s online configurator tool. There are several accessories to choose from like mirrors, visors, guards and seats. Panniers, alloy wheels and auxiliary lamps will be added to the list soon. Royal Enfield has increased the price of the Interceptor 650 by around Rs 6,000. ', 'SEP-2018', 'Bike', 285000, 'Petrol', '15kmpl', '648cc', '4 Stroke, Air-Oil Cooled, SOHC Engine', 1, '13.7L', '52Nm@5250rpm', 'SPORTS RED, SPORTS YELLOW, VIBRANT ORANGE'),
(93, 47, 2, 'Hyundai Elantra', 'Hyundai', 'Hyundai Elantra Price: The sedan is now priced between Rs 17.60 lakh and Rs 20.65 lakh (ex-showroom Delhi).\r\n\r\nHyundai Elantra Variants: The facelifted Elantra is now available in two variants: SX and SX(O), as Hyundai has discontinued the base-spec S petrol variant.\r\n\r\nHyundai Elantra Powertrain: It comes with a BS6-compliant 2.0-litre petrol engine that produces 152PS of power and 192Nm of torque. It is mated to a 6-speed manual or a 6-speed automatic transmission. The diesel-powered Elantra is powered by the second-gen Hyundai Creta’s 1.5-litre diesel engine (115PS/250Nm). It shares its transmission options with its petrol counterpart.\r\n\r\nHyundai Elantra Features: The Hyundai sedan gets an 8-inch touchscreen infotainment system with Android Auto and Apple CarPlay, dual-zone climate control, a sunroof, wireless charging, and connected car tech, and Infinity sound system.\r\n\r\nHyundai Elantra Safety: Standard safety features on offer include six airbags, ABS with EBD, and rear parking sensors.', 'DEC-2012', 'Car', 1706000, 'Diesel', '14.62kmpl', '1999cc', '1.5 CRDi Petrol Engine', 4, '50L', '250nm@1500-2750rpm', 'DARK RED, SILVER, MATTE BLACK, GREENISH BLUE, SPORTY WHITE'),
(94, 47, 2, 'Hyundai Tucson', 'Hyundai', 'Hyundai Tucson Price: The facelifted SUV is priced from Rs 22.30 lakh to Rs 27.03 lakh (ex-showroom).\r\n\r\nHyundai Tucson Variants: It is offered in three variants: 2WD AT GL(O), 2WD AT GLS and 4WD AT GLS.\r\n\r\nHyundai Tucson Seating Capacity: Hyundai offers the facelifted Tucson in a 5 seater layout.\r\n\r\nHyundai Tucson Powertrains: Under the hood, it is powered by BS6-compliant 2.0-litre petrol and diesel engines. While the petrol engine continues to come mated to a 6-speed AT, the diesel unit gets a new 8-speed automatic transmission option instead of the 6-speed AT in the pre-facelift model. The petrol engine produces 152PS and 192Nm, while the output of the diesel unit stands at 185PS and 400Nm.', 'June-2016', 'Car', 2206000, 'Diesel', '15.38kmpl', '1995cc', 'R 2.0 I Diesel (BS6)', 4, '62L', '400.11nm@1750-2750rpm', 'MATTALIC Black , WHITE, SILVER'),
(95, 48, 2, 'Hyundai Tucson', 'Hyundai', 'Hyundai Tucson Price: The facelifted SUV is priced from Rs 22.30 lakh to Rs 27.03 lakh (ex-showroom).\r\n\r\nHyundai Tucson Variants: It is offered in three variants: 2WD AT GL(O), 2WD AT GLS and 4WD AT GLS.\r\n\r\nHyundai Tucson Seating Capacity: Hyundai offers the facelifted Tucson in a 5 seater layout.\r\n\r\nHyundai Tucson Powertrains: Under the hood, it is powered by BS6-compliant 2.0-litre petrol and diesel engines. While the petrol engine continues to come mated to a 6-speed AT, the diesel unit gets a new 8-speed automatic transmission option instead of the 6-speed AT in the pre-facelift model. The petrol engine produces 152PS and 192Nm, while the output of the diesel unit stands at 185PS and 400Nm.', 'June-2016', 'Car', 2706000, 'Diesel', '15.38kmpl', '1995cc', 'R 2.0 I Diesel (BS6)', 4, '62L', '400.11nm@1750-2750rpm', 'MATTALIC Black , WHITE, SILVER'),
(96, 48, 2, 'Hyundai Creta', 'Hyundai', 'The Hyundai Creta has 2 Diesel Engine and 1 Petrol Engine on offer. The Diesel engine is 1396 cc and 1582 cc while the Petrol engine is 1591 cc. It is available with the Manual and Automatic transmission. Depending upon the variant and fuel type the Creta has a mileage of 14.8 to 22.1 kmpl. The Creta is a 5 seater SUV and has a length of 4270mm, width of 1780mm and a wheelbase of 2590mm.', 'July-2015', 'Car', 999000, 'Diesel', '20.5kmpl', '1582cc', 'U2 CRDI VGT Engine', 4, '55L', '259.87 NM @ 1500-3000 rpm', 'MATTALIC Black , DARK MATTE BLUE, DARK RED'),
(98, 126, 1, 'TVS Jupiter', 'TVS', 'TVS Jupiter Price: The TVS Jupiter BS6 is available in four variants: standard, ZX, ZX disc and Classic priced at Rs 63,102, Rs 65,102, Rs 69,052 and Rs 69,602 respectively. Previously a front disc brake was offered as an option which now makes a comeback in the ZX disc variant.\r\n\r\nTVS Jupiter Features: The Jupiter ZX disc gets an ACG starter generator which offers silent starting operation and an all-in-one ignition key slot. While these two features are exclusive to the ZX variant, we expect them to feature in other Jupiter variants soon. The Jupiter BS6 now comes equipped with an LED headlight as compared to the previous halogen unit. Since it’s fuel-injected, it also gets a check-engine light. There is a large 21-litre underseat storage compartment, a sizeable 2-litre cubbyhole on the back of the apron, as well as mobile phone charging.\r\n\r\nTVS Jupiter Engine: The TVS Jupiter BS6 continues to be powered by the same 109.7cc single-cylinder engine that it has always used, but the motor is now fuel-injected to help it comply with BS6 emission norms. It currently generates 7.47PS and 8.4Nm which is 0.51PS less than the BS4 version, but torque remains the same.', '2000', 'Scooter', 63102, 'Petrol', '50kmpl', '109.7cc', 'Single cylinder, 4 stroke, CVTi, fuel injection', 1, '6L', '8.4 Nm @ 5500 rpm', 'MATTALIC Black , WHITE, VOLCANO RED, ROYAL WINE, DARK BLUE, Matt Black'),
(99, 126, 1, 'TVS Sport', 'TVS', 'TVS Sport Price:\r\n\r\nTheTVS Sport  price starts at Rs 52,500for the kick-start version while its self-start variant now carries a price tag of Rs 59,675 (all prices ex-showroom Delhi). This is the first price hike for the bike since its launch in April earlier this year.\r\n\r\n \r\n\r\nTVS Sport Features:\r\n\r\nThe design of the TVS Sport is fairly conventional, just like the plethora of commuters in the country. What makes it stand apart though are the bright colours and striking liveries on offer. The TVS Sport isn’t a feature-rich motorcycle. It doesn’t get LED headlight, digital console or panel and no disc brake either. The only LED bits here are the DRLs. The info cluster contains an analogue speedometer, odometer and fuel gauge with a few tell-tale signs also found.\r\n\r\n \r\n\r\nTVS Sport Engine:\r\n\r\nIn order to meet the BS6 emission norms, the 109.7cc single-cylinder air-cooled engine had to be fuel-injected. It now produces 8.29PS and 8.7Nm. There are no changes to the four-speed gearbox. TVS claims the top speed of the TVS Sport is 90kmph.', 'spt-2001', 'Bike', 53567, 'Petrol', '75kmpl', '109.7cc', 'Single Cylinder, 4 Stroke, fuel injection , air co', 1, '10L', '8.7 Nm @ 4500 rpm', 'DARK MATTE BLUE, GREY, DARK RED, VOLCANO RED, PURPLE'),
(100, 126, 1, ' Tvs Apache RR310', 'TVS', 'TVS Apache RR 310 Price:The TVS Apache RR 310 received its first price hike of Rs 5,000 since its launch in January 2020. The motorcycle now retails at Rs 2,45,000 (ex-showroom pan-India). The bike that was once plagued with engine vibes has been thoroughly reworked for 2020. While it remains cosmetically unchanged, the bike features a truckload of updates including some segment-first features, new tyres, and a tweaked motor. When the motorcycle was launched, these changes added a premium of Rs 12,000 to the BS4-compliant bike’s price tag. It’s available in two colours: Titanium Black and Racing Red.  TVS Apache RR 310 Features:The 2020 TVS Apache RR 310 features a full-colour TFT screen with information such as post-ride analytics, gear shift assist indicator, turn-by-turn navigation, vehicle health information, vehicle status, and overview. Other notable features include the ability to accept and reject calls using the control cubes placed on the left-hand side switchgear. The Apache RR 310 also comes equipped with Glide Through Technology PLUS (GTTP) and a hazard switch. TVS Apache RR 310 Engine:The Apache RR 310’s BS6-compliant 312.2cc liquid-cooled single-cylinder motor makes 34PS of power and 27.3Nm of peak torque (same as before). It comes mated to a 6-speed transmission which gets a slipper clutch. That said, the engine runs on two different power maps that are available through four ride modes (Rain, Urban, Sport, Track). The first map, which is meant for Rain and Urban, restricts the power output to 28.5PS, while the second map used for Sport and Track unleashes the full 34PS. Same goes for torque -- 25Nm and 27Nm. ', '2018-present', 'Bike', 245000, 'Petrol', '30kmpl', '312.2cc', 'Single Cylinder, 4-Stroke, 4-Valve, Reverse Inclin', 1, '11L', '27.3 Nm @ 7700 rpm', 'BLACK, DARK RED');
INSERT INTO `vehicle` (`v_id`, `s_id`, `category_id`, `v_name`, `v_brand`, `v_about`, `v_model`, `v_type`, `v_cost`, `fuel_type`, `mileage`, `displacement`, `engine_type`, `no_of_cylinder`, `fuel_tank_capacity`, `maxtorque`, `v_colors`) VALUES
(102, 42, 1, 'TVS NTORQ 125', 'TVS', 'TVS NTorq 125 Price:\r\n\r\nBase version of the TVS NTorq 125 price is Rs 68,885, while the disc brake variant now retails for Rs 72,885. The top-spec TVS NTorq 125 Race Edition price is Rs 74,365. The price difference between the BS4 and the BS6 NTorq 125 is Rs 9,423, Rs 12,890 and Rs 10,440 respectively.\r\n\r\n \r\n\r\nTVS NTorq 125 Features:\r\n\r\nThe TVS NTorq 125 is a feature-packed scooter. The NTorq 125 was the first TVS two-wheeler to get an all-digital console equipped with smartphone connectivity, which TVS calls SmartXonnect. You can hook up your phone and get ride data analytics, call and SMS alerts, turn-by-turn navigation, and vehicle diagnostics alerts. Fuel-injection now comes as standard on the TVS NTorq.\r\n\r\n \r\n\r\nOn the top-of-the-line TVS NTorq 125 Race Edition, you also get snazzier graphics, a hazard light switch, and LED headlight.', '2018-present', 'Scooter', 67885, 'Petrol', '42kmpl', '124.8cc', 'Single Cylinder, 4 - Stroke, SI, Air Cooled, Fuel ', 1, '5.8L', '10.5 Nm @ 5500 rpm', 'MATTALIC Black , WHITE, YELLOW, MATTE RED'),
(103, 42, 1, ' Tvs Apache RR310', 'TVS', 'TVS Apache RR 310 Price:The TVS Apache RR 310 received its first price hike of Rs 5,000 since its launch in January 2020. The motorcycle now retails at Rs 2,45,000 (ex-showroom pan-India). The bike that was once plagued with engine vibes has been thoroughly reworked for 2020. While it remains cosmetically unchanged, the bike features a truckload of updates including some segment-first features, new tyres, and a tweaked motor. When the motorcycle was launched, these changes added a premium of Rs 12,000 to the BS4-compliant bike’s price tag. It’s available in two colours: Titanium Black and Racing Red.  TVS Apache RR 310 Features:The 2020 TVS Apache RR 310 features a full-colour TFT screen with information such as post-ride analytics, gear shift assist indicator, turn-by-turn navigation, vehicle health information, vehicle status, and overview. Other notable features include the ability to accept and reject calls using the control cubes placed on the left-hand side switchgear. The Apache RR 310 also comes equipped with Glide Through Technology PLUS (GTTP) and a hazard switch. TVS Apache RR 310 Engine:The Apache RR 310’s BS6-compliant 312.2cc liquid-cooled single-cylinder motor makes 34PS of power and 27.3Nm of peak torque (same as before). It comes mated to a 6-speed transmission which gets a slipper clutch. That said, the engine runs on two different power maps that are available through four ride modes (Rain, Urban, Sport, Track). The first map, which is meant for Rain and Urban, restricts the power output to 28.5PS, while the second map used for Sport and Track unleashes the full 34PS. Same goes for torque -- 25Nm and 27Nm. ', '2018-present', 'Bike', 245000, 'Petrol', '30kmpl', '312.2cc', 'Single Cylinder, 4-Stroke, 4-Valve, Reverse Inclin', 1, '11L', '27.3 Nm @ 7700 rpm', 'MATTALIC Black , DARK RED'),
(104, 126, 1, 'TVS Wego', 'TVS', 'The TVS Wego is a good looking 110cc moto-scooter. It gets a stainless steel muffler guard, a full digital speedometer, body-coloured grab rails, blacked-out alloy wheels, and two-tone colours. Other features include 16-litres of underseat storage, external fuel filler cap, mobile charging socket, and a back lit ignition key slot. TVS also offers retro-fitment kits for the differently-abled on the Wego. It\'s priced at Rs 11,999 and comes with pillion footrests and provisions for holding crutches.\r\n\r\nThe 109.7cc engine is not yet BS6-compliant. It delivers 7.9PS and 8.4Nm and gets a CVT automatic gearbox. Suspension setup includes telescopic fork and gas-charged monoshock while braking is via drum brakes on both ends', 'June-2016', 'Scooter', 53469, 'Petrol', '70kmpl', '109.7cc', 'Single Cylinder, 4-Stroke', 1, '5L', '8.4 Nm @ 5500 rpm', 'MATTALIC Black , WHITE, ICE FLUO VERMILLION, RACING BLUE, THUNDER GREY, SNOW BLACK'),
(106, 127, 2, 'Maruti Celerio', 'marutisuzuki', 'Maruti Celerio Variants: Maruti Suzuki sells the Celerio via its Arena chain of showrooms across India. It is available in three variants: base-spec L, mid-spec V, and top-spec Z. Maruti offers the mid-spec V and top-spec Z variants with an AMT gearbox. However, only the mid-spec V variant is offered with a CNG kit.\r\n\r\nMaruti Celerio Price: The Celerio BS6 is priced between Rs 4.41 lakh and Rs 5.68 lakh. Maruti has priced the V, V(O), Z, and the top-spec Z(O) variants (equipped with the AMT gearbox) at Rs 5.23 lakh, Rs 5.30 lakh, Rs 5.48 lakh, and Rs 5.58 lakh respectively. The V and V(O) CNG variants are priced at Rs 5.60 lakh and Rs 5.68 lakh respectively (all prices ex-showroom Delhi).\r\n\r\nMaruti Celerio Engine, Transmission and Mileage: It still has the same BS6 1.0-litre, three-cylinder petrol engine that produces 68PS/90Nm on petrol and 60PS/78Nm on CNG. Irrespective of the fuel type, it gets a 5-speed manual transmission while the petrol variant also gets an AMT option. Maruti claims a mileage of 21.63kmpl when driven on petrol (both MT and AMT) and 30.47km/kg in CNG mode.', 'June-2016', 'Car', 441000, 'CNG', '30.47kmpl', '998cc', 'K10B Engine', 3, '60L', '78Nm@3500rpm', 'WHITE, THUNDER GREY, ORANGE, DARK RED, SILVER, PEARL WHITE'),
(107, 127, 2, 'Maruti Wagon R', 'marutisuzuki', 'Maruti Wagon R Variants: Maruti Suzuki sells the Wagon R via its Arena chain of showrooms across the country. It is offered in three variants: base-spec L, mid-spec V, and top-spec Z. Maruti offers only the base-spec L and mid-spec V variants with the BS6 1.0-litre petrol engine, while only the mid-spec V and top-spec Z variants are available with the BS6 1.2-litre petrol motor. It also offers the BS6 1.0-litre powered L variants of the Wagon R with a CNG kit.\r\n\r\nMaruti Wagon R Prices: The Wagon R is priced in the range of Rs 4.45 lakh to Rs 5.94 lakh. Maruti has priced the L and L(O) variants with the CNG kit at Rs 5.25 lakh and Rs 5.32 lakh respectively. On the other hand, the BS6 1.0-litre powered V and V(O) variants with the AMT gearbox are priced at Rs 5.37 lakh and Rs 5.44 lakh respectively. The BS6 1.2-litre powered V, V(O), and Z (top-spec) variants with the AMT gearbox are priced at Rs 5.60 lakh, Rs 5.67 lakh and Rs 5.94 lakh respectively (all prices, ex-showroom Delhi).', 'DCE-2018', 'Car', 445000, 'Petrol', '20.52kmpl', '1197cc', 'K12M Petrol Engine', 4, '32L', '113Nm@4200rpm', 'ORANGE, PLATINUM SILVER, MERCURY GREY, BROWN, REDDITCH BLUE, Mirage white, Mettallic Red'),
(108, 127, 2, 'Maruti Ertiga', 'marutisuzuki', 'Maruti Ertiga Variants & Price: The Ertiga is available in four variants -- L, V, Z, and Z+ -- priced from Rs 7.59 lakh to Rs 10.13 lakh (ex-showroom Delhi). The CNG option is only available in the VXi variant and it is priced at Rs 8.95 lakh.\r\n\r\nMaruti Ertiga Engine & Transmission: The BS6 Ertiga is powered by a 1.5-litre petrol engine that produces 105PS of power and 138Nm of torque. The petrol engine is mated to a 5-speed manual. Maruti also offers a 4-speed automatic transmission on the petrol version.\r\n\r\nThe CNG-petrol variant uses the same 1.5-litre petrol engine but without the smart hybrid tech. It has a claimed efficiency of 26.08km/kg but the performance drops to 92PS and 122Nm. \r\n\r\nMaruti Ertiga Features: The second-gen Ertiga is loaded with features. It is equipped with projector headlamps, fog lamps, LED tail lamps, 15-inch wheels, a seven-inch infotainment system with Android Auto and CarPlay, push-button start-stop, ventilated front cup holders, auto climate control with rear AC vents, and a reverse parking camera. Safety features on offer include dual front airbags, ABS with EBD, ISOFIX child seat anchors, and reverse parking sensors. It also gets ESP and hill hold for safety, but these features are limited to the automatic variant.', 'DCE-2018', 'Car', 759000, 'Petrol', '17.99kmpl', '1462cc', 'K15 Smart Hybrid', 4, '45L', '138Nm@4400rpm', 'MATTALIC Black , WHITE, RACING BLUE, THUNDER GREY, DARK RED'),
(109, 143, 2, 'Nissan GT R', 'Nissan', 'The handcrafted Nissan GT-R supercar is priced at Rs 2.12 crore (ex-showroom Noida). The GT-R packs a 3.8-litre V6 twin-turbocharged petrol, which puts out 570PS of max power at 6800rpm and 637Nm of peak torque. The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3 seconds and can hit a top speed of 315kmph. In terms of features, the Nissan GT-R packs six airbags, 20-inch alloys, Bose audio system with 11 speakers and black, red, ivory or tan leather seats & interior, among others. ', '2009-Present', 'Car', 21200000, 'Petrol', '9.0kmpl', '3798cc', 'V6 Twin Turbo Petrol Engi', 6, '74L', '637Nm@3300-5800rpm', 'MATTALIC Black , RACING BLUE, PEARL WHITE, SPORTS RED, VIBRANT ORANGE, GUNMETAL GREY'),
(110, 143, 2, 'Nissan Kicks', 'Nissan', 'Nissan Kicks Engine and Transmission: Nissan is offering the Kicks with two BS6 petrol engines: a 1.5-litre engine and a new 1.3-litre turbocharged motor. The 1.3-litre turbocharged engine is the most powerful in its class, producing 156PS of power and 254Nm of torque. While the 1.5-litre engine (106PS/142Nm) comes mated to a 5-speed manual gearbox, the new 1.3-litre turbo-petrol motor gets both MT and CVT options. It also features idle start-stop which makes it more efficient.\r\n\r\nNissan Kicks Features: It continues to be a feature-laden offering equipped with a 360-degree camera monitor, rain-sensing wipers, four airbags, cruise control, auto LED headlamps, and front fog lamps with cornering function. The 2020 model also comes with new tech that allows for remote engine start and cabin pre-cool functions. It gets an 8-inch touchscreen infotainment system with Android Auto and Apple CarPlay compatibility and auto AC with rear AC vents.', '2018-present', 'Car', 949000, 'Petrol', '14.23kmpl', '1330cc', '1.3 L HR13DDT Turbo Petrol', 4, '50L', '254nm@1600rpm', 'MATTALIC Black , PLATINUM SILVER, SPORTY WHITE, DUAL TONE RED, DEEP SKY BLUE'),
(111, 145, 2, 'Nissan Kicks', 'Nissan', 'Nissan Kicks Engine and Transmission: Nissan is offering the Kicks with two BS6 petrol engines: a 1.5-litre engine and a new 1.3-litre turbocharged motor. The 1.3-litre turbocharged engine is the most powerful in its class, producing 156PS of power and 254Nm of torque. While the 1.5-litre engine (106PS/142Nm) comes mated to a 5-speed manual gearbox, the new 1.3-litre turbo-petrol motor gets both MT and CVT options. It also features idle start-stop which makes it more efficient.\r\n\r\nNissan Kicks Features: It continues to be a feature-laden offering equipped with a 360-degree camera monitor, rain-sensing wipers, four airbags, cruise control, auto LED headlamps, and front fog lamps with cornering function. The 2020 model also comes with new tech that allows for remote engine start and cabin pre-cool functions. It gets an 8-inch touchscreen infotainment system with Android Auto and Apple CarPlay compatibility and auto AC with rear AC vents.', '2018-present', 'Car', 949000, 'Petrol', '14.23kmpl', '1330cc', '1.3 L HR13DDT Turbo Petrol', 4, '50L', '254nm@1600rpm', 'MATTALIC Black , WHITE, PLATINUM SILVER'),
(112, 146, 1, 'KTM 200 duke', 'ktm', 'KTM 200 Duke Price: \r\n\r\nThe 200 Duke, which helped KTM gain footing in India, finally receives a much-needed overhaul for 2020. It features a new design, split frame, and a BS6-compliant motor. Dual-channel ABS comes as part of the standard equipment as well. With the new updates, the KTM 200 Duke is priced at Rs 1,76,845 (ex-showroom Delhi), a price hike of Rs 10,496 over the BS4 200 Duke.\r\n\r\n \r\n\r\nKTM 200 Duke Features:\r\n\r\nOn the feature front, the Duke 200 gets a halogen headlamp running fork-like LED DRLs and a new LED tail lamp similar to the KTM 250 Duke. It retains the same digital instrument console as before with readouts such as a gear position indicator, real-time fuel efficiency, average fuel efficiency, service indicator, distance-to-empty gauge, clock, and side-stand warning light. Tell-tale lights sit above the speedometer along with a shift indicator placed in the centre.  \r\n\r\n ', 'DCE-2016', 'Bike', 176000, 'Petrol', '34kmpl', '199.5cc', 'Single Cylinder, 4 Valve, Liquid Cooled, FI, DOHC', 1, '13.5L', '19.3 Nm @ 8000 rpm', 'WHITE, ORANGE'),
(113, 33, 1, 'yamaha fz', 'rashmi', 'jhjsjjsjsjjsj', 'spt-2001', 'Bike', 900000, 'Petrol', '42kmpl', '124cc', 'Fan Cooled, 4 Stroke, SI Engine', 1, '11L', '8.4 Nm @ 5500 rpm', 'ORANGE, DARK RED, MATTE BLACK');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_category`
--

CREATE TABLE `vehicle_category` (
  `category_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_category`
--

INSERT INTO `vehicle_category` (`category_id`, `category`) VALUES
(1, 'Two Wheeler'),
(2, 'Four Wheeler');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_image`
--

CREATE TABLE `vehicle_image` (
  `vimage_id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `vimage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_image`
--

INSERT INTO `vehicle_image` (`vimage_id`, `v_id`, `vimage`) VALUES
(307, 42, 'm_yzf-r15-v3_11540277694.webp'),
(308, 42, 'm_yzf-r15-v3_21540277695.webp'),
(309, 42, 'm_yzf-r15-v3_31540277696.webp'),
(310, 42, 'm_yzf-r15-v3_71540277699.webp'),
(311, 42, 'm_yzf-r15-v3_81540277700.webp'),
(312, 42, 'yzf-r15-v3-abs_black_ambassador_1547103790.webp'),
(313, 42, 'yzf-r15-v3-abs_grey_new_1547214334.webp'),
(314, 42, 'yzf-r15-v3-moto-gp-limited-edition_black_1564807391.webp'),
(315, 43, 'm_mt-15_11560414504.webp'),
(316, 43, 'm_mt-15_31560414506.webp'),
(317, 43, 'm_mt-15_41560414507.webp'),
(318, 43, 'm_mt-15_71560414510.webp'),
(319, 43, 'm_mt-15_81560414511.webp'),
(320, 43, 'm_mt-15_91560414541.webp'),
(321, 43, 'mt-15-std_blue_diamond_1552647138.webp'),
(322, 44, 'mt-15-bs65dfb67f215499.webp'),
(323, 44, 'mt-15-bs65e3a3f0a3feb6.webp'),
(324, 44, 'mt-15-bs65e3a3f03e6b99.webp'),
(325, 44, 'mt-15-bs65e3a3f04cac4c.webp'),
(326, 44, 'mt-15-bs65e3a3f06a34c9.webp'),
(327, 44, 'mt-15-bs65e3a3f096e3ae.webp'),
(328, 44, 'mt-15-bs65e3a3f07966cb.webp'),
(329, 45, 'm_yzf-r15-v3_11540277694.webp'),
(330, 45, 'm_yzf-r15-v3_21540277695.webp'),
(331, 45, 'm_yzf-r15-v3_31540277696.webp'),
(332, 45, 'm_yzf-r15-v3_71540277699.webp'),
(333, 45, 'm_yzf-r15-v3_81540277700.webp'),
(334, 45, 'yzf-r15-v3-abs_black_ambassador_1547103790.webp'),
(335, 45, 'yzf-r15-v3-abs_grey_new_1547214334.webp'),
(336, 45, 'yzf-r15-v3-moto-gp-limited-edition_black_1564807391.webp'),
(337, 46, 'm_yzf-r15-v3_11540277694.webp'),
(338, 46, 'm_yzf-r15-v3_21540277695.webp'),
(339, 46, 'm_yzf-r15-v3_31540277696.webp'),
(340, 46, 'm_yzf-r15-v3_71540277699.webp'),
(341, 46, 'm_yzf-r15-v3_81540277700.webp'),
(342, 46, 'yzf-r15-v3-abs_black_ambassador_1547103790.webp'),
(343, 46, 'yzf-r15-v3-abs_grey_new_1547214334.webp'),
(344, 46, 'yzf-r15-v3-moto-gp-limited-edition_black_1564807391.webp'),
(378, 51, 'm_yzf-r15-v3_11540277694.webp'),
(379, 51, 'm_yzf-r15-v3_21540277695.webp'),
(380, 51, 'm_yzf-r15-v3_31540277696.webp'),
(381, 51, 'm_yzf-r15-v3_71540277699.webp'),
(382, 51, 'm_yzf-r15-v3_81540277700.webp'),
(383, 51, 'yzf-r15-v3-abs_black_ambassador_1547103790.webp'),
(384, 51, 'yzf-r15-v3-abs_grey_new_1547214334.webp'),
(385, 51, 'yzf-r15-v3-moto-gp-limited-edition_black_1564807391.webp'),
(386, 52, 'm_yzf-r15-v3_11540277694.webp'),
(387, 52, 'm_yzf-r15-v3_21540277695.webp'),
(388, 52, 'm_yzf-r15-v3_31540277696.webp'),
(389, 52, 'm_yzf-r15-v3_71540277699.webp'),
(390, 52, 'm_yzf-r15-v3_81540277700.webp'),
(391, 52, 'yzf-r15-v3-abs_black_ambassador_1547103790.webp'),
(392, 52, 'yzf-r15-v3-abs_grey_new_1547214334.webp'),
(393, 52, 'yzf-r15-v3-moto-gp-limited-edition_black_1564807391.webp'),
(394, 53, 'm_mt-15_11560414504.webp'),
(395, 53, 'm_mt-15_31560414506.webp'),
(396, 53, 'm_mt-15_41560414507.webp'),
(397, 53, 'm_mt-15_71560414510.webp'),
(398, 53, 'm_mt-15_81560414511.webp'),
(399, 53, 'm_mt-15_91560414541.webp'),
(400, 53, 'mt-15-std_blue_diamond_1552647138.webp'),
(401, 54, 'm_mt-15_11560414504.webp'),
(402, 54, 'm_mt-15_31560414506.webp'),
(403, 54, 'm_mt-15_41560414507.webp'),
(404, 54, 'm_mt-15_71560414510.webp'),
(405, 54, 'm_mt-15_81560414511.webp'),
(406, 54, 'm_mt-15_91560414541.webp'),
(407, 54, 'mt-15-std_blue_diamond_1552647138.webp'),
(408, 55, 'fz-s-fi-version-3-std_grey_new_1561183048.webp'),
(409, 55, 'fz-s-fi-version-3-std_matte_black_1561183049.webp'),
(410, 55, 'fz-s-fi-version-35e1581cc29b49.webp'),
(411, 55, 'm_fz-s-fi-version-3_11548157560.webp'),
(412, 55, 'm_fz-s-fi-version-3_71548157564.webp'),
(413, 55, 'm_fz-s-fi-version-3_81548157565.webp'),
(414, 55, 'm_fz-s-fi-version-3_91548157566.webp'),
(415, 56, 'himalayan-abs_black_1563368201.webp'),
(416, 56, 'himalayan-abs_show_stopperblue_1563368235.webp'),
(417, 56, 'm_himalayan_11540386022.webp'),
(418, 56, 'm_himalayan_31540386025.webp'),
(419, 56, 'm_himalayan_51540386027.webp'),
(420, 56, 'm_himalayan_61540386029.webp'),
(421, 56, 'm_himalayan_81540386031.webp'),
(422, 56, 'm_himalayan_111540386036.webp'),
(423, 56, 'royal-enfield-himalayan-sleet_sleet_grey.webp'),
(424, 57, 'classic-350-abs_ash_1563425753.webp'),
(425, 57, 'classic-350-abs_blue_es_1561552642.webp'),
(426, 57, 'classic-350-s_silver_es_1568616994.webp'),
(427, 57, 'm_classic-350_11539345735.webp'),
(428, 57, 'm_classic-350_21539345737.webp'),
(429, 57, 'm_classic-350_31539345737.webp'),
(430, 57, 'm_classic-350_51539345739.webp'),
(431, 57, 'm_classic-350_61539345740.webp'),
(432, 57, 'm_classic-350_81539345741.webp'),
(433, 57, 'royal-enfield-classic-3505e1c12ea7d07b.webp'),
(434, 57, 'royal-enfield-classic-3505e1c16d985a38.webp'),
(435, 57, 'royal-enfield-classic-3505e1c128cccf13.webp'),
(436, 57, 'royal-enfield-classic-3505e1c131c2426c.webp'),
(437, 57, 'royal-enfield-classic-3505e1c121839ffc.webp'),
(438, 58, 'interceptor-6505e32ae4de561f.webp'),
(439, 58, 'interceptor-6505e32ae53ee4b1.webp'),
(440, 58, 'interceptor-6505e32ae527e9dd.webp'),
(441, 58, 'interceptor-6505e32ae5103b11.webp'),
(442, 58, 'interceptor-6505e254efcbf027.webp'),
(443, 58, 'interceptor-6505e254fa814ac1.webp'),
(444, 58, 'interceptor-6505e254fcce2e2c.webp'),
(445, 58, 'interceptor-6505e254ff586296.webp'),
(446, 58, 'interceptor-6505e255033acf5b.webp'),
(447, 58, 'interceptor-6505e25501940a47.webp'),
(448, 59, 'himalayan-abs_black_1563368201.webp'),
(449, 59, 'himalayan-abs_show_stopperblue_1563368235.webp'),
(450, 59, 'm_himalayan_11540386022.webp'),
(451, 59, 'm_himalayan_31540386025.webp'),
(452, 59, 'm_himalayan_51540386027.webp'),
(453, 59, 'm_himalayan_61540386029.webp'),
(454, 59, 'm_himalayan_81540386031.webp'),
(455, 59, 'm_himalayan_111540386036.webp'),
(456, 59, 'royal-enfield-himalayan-sleet_sleet_grey.webp'),
(457, 60, 'classic-350-abs_ash_1563425753.webp'),
(458, 60, 'classic-350-abs_blue_es_1561552642.webp'),
(459, 60, 'classic-350-s_silver_es_1568616994.webp'),
(460, 60, 'm_classic-350_11539345735.webp'),
(461, 60, 'm_classic-350_21539345737.webp'),
(462, 60, 'm_classic-350_31539345737.webp'),
(463, 60, 'm_classic-350_51539345739.webp'),
(464, 60, 'm_classic-350_61539345740.webp'),
(465, 60, 'm_classic-350_81539345741.webp'),
(466, 60, 'royal-enfield-classic-3505e1c12ea7d07b.webp'),
(467, 60, 'royal-enfield-classic-3505e1c16d985a38.webp'),
(468, 60, 'royal-enfield-classic-3505e1c128cccf13.webp'),
(469, 60, 'royal-enfield-classic-3505e1c131c2426c.webp'),
(470, 60, 'royal-enfield-classic-3505e1c121839ffc.webp'),
(471, 61, 'royal-enfield-classic-3505e1c16d985a38.webp'),
(472, 62, 'royal-enfield-classic-3505e1c128cccf13.webp'),
(473, 63, 'bajaj-pulsar-200-ns5e1437397451d.webp'),
(474, 63, 'm_bajaj-pulsar-200-ns_11540274592.webp'),
(475, 63, 'm_bajaj-pulsar-200-ns_21540274594.webp'),
(476, 63, 'm_bajaj-pulsar-200-ns_51540274595.webp'),
(477, 63, 'm_bajaj-pulsar-200-ns_51540274596.webp'),
(478, 63, 'm_bajaj-pulsar-200-ns_91540274599.webp'),
(479, 63, 'm_bajaj-pulsar-200-ns_101540274600.webp'),
(480, 63, 'm_bajaj-pulsar-200-ns_121540274612.webp'),
(481, 63, 'pulsar-200-ns-abs_graphite_black_1567837781.webp'),
(482, 63, 'pulsar-200-ns-abs_grey_1567837782.webp'),
(483, 63, 'pulsar-200-ns-abs_red_1567837782.webp'),
(484, 64, 'avenger-street-220_black_1523433039.webp'),
(485, 64, 'avenger-street-220_white_1523433040.webp'),
(486, 64, 'm_avenger_11540274551.webp'),
(487, 64, 'm_avenger_41540274554.webp'),
(488, 64, 'm_avenger_51540274555.webp'),
(489, 65, 'ct110-es-alloy_blue_es_1562905697.webp'),
(490, 65, 'ct110-es-alloy_flame_red_1562905798.webp'),
(491, 65, 'ct110-es-alloy_yellow_1562905882.webp'),
(492, 65, 'm_ct110_11562904445.webp'),
(493, 65, 'm_ct110_21562904447.webp'),
(494, 65, 'm_ct110_31562904448.webp'),
(495, 65, 'm_ct110_41562904449.webp'),
(496, 65, 'm_ct110_51562904449.webp'),
(497, 66, 'bajaj-pulsar-200-ns5e1437397451d.webp'),
(498, 66, 'm_bajaj-pulsar-200-ns_11540274592.webp'),
(499, 66, 'm_bajaj-pulsar-200-ns_21540274594.webp'),
(500, 66, 'm_bajaj-pulsar-200-ns_51540274595.webp'),
(501, 66, 'm_bajaj-pulsar-200-ns_51540274596.webp'),
(502, 66, 'm_bajaj-pulsar-200-ns_91540274599.webp'),
(503, 66, 'm_bajaj-pulsar-200-ns_101540274600.webp'),
(504, 66, 'm_bajaj-pulsar-200-ns_121540274612.webp'),
(505, 66, 'pulsar-200-ns-abs_graphite_black_1567837781.webp'),
(506, 66, 'pulsar-200-ns-abs_grey_1567837782.webp'),
(507, 66, 'pulsar-200-ns-abs_red_1567837782.webp'),
(508, 67, 'avenger-street-220_black_1523433039.webp'),
(509, 67, 'avenger-street-220_white_1523433040.webp'),
(510, 67, 'm_avenger_11540274551.webp'),
(511, 67, 'm_avenger_41540274554.webp'),
(512, 67, 'm_avenger_51540274555.webp'),
(513, 68, 'a.webp'),
(514, 68, 'dashboard-59.webp'),
(515, 68, 'door-handle-45.webp'),
(516, 68, 'front-fog-lamp-41.webp'),
(517, 68, 'front-left-side-47.webp'),
(518, 68, 'front-view-118.webp'),
(519, 68, 'front-wiper-96.webp'),
(520, 68, 'Magma-Grey_373533.webp'),
(521, 68, 'Midnight-Blue_15234b.webp'),
(522, 68, 'Pearl-Arctic-WhiteN_e1e2e4.webp'),
(523, 68, 'Prime-Lucent-OrangeN_b52716.webp'),
(524, 68, 'seats-(aerial-view)-53.webp'),
(525, 68, 'side-view-(left)-90.webp'),
(526, 68, 'Solid-Fire-RedN_9d1411.webp'),
(527, 69, 'Autumn-Orange.webp'),
(528, 69, 'Autumn-Orange-and-Pearl-Arctic-White.webp'),
(529, 69, 'Blazing-Red.webp'),
(530, 69, 'Blazing-Red-And-Midnight-Black.webp'),
(531, 69, 'cup-holders-(front)-66.webp'),
(532, 69, 'dashboard-59.webp'),
(533, 69, 'door-controls-40.webp'),
(534, 69, 'entertainment-system-(rear)-143.webp'),
(535, 69, 'Fiery-Yellow.webp'),
(536, 69, 'Fiery-Yellow-Pearl-Arctic-White.webp'),
(537, 69, 'front-left-side-47.webp'),
(538, 69, 'front-view-118.webp'),
(539, 69, 'Granite-Grey.webp'),
(540, 69, 'instrument-cluster-62.webp'),
(541, 69, 'Pearl-Arctic-White.webp'),
(542, 69, 'Premium-Silver.webp'),
(543, 69, 'rear-left-view-121.webp'),
(544, 69, 'seats-(aerial-view)-53.webp'),
(545, 69, 'side-view-(left)-90.webp'),
(546, 69, 'steering-wheel-54.webp'),
(547, 70, '3d-model-163.webp'),
(548, 70, '221_Pearl-Metallic-Auburn-Red_6a151e.webp'),
(549, 70, '222_Pearl-Metallic-Oxford-Blue_01154b.webp'),
(550, 70, '223_Pearl-Arctic-White_cccccc.webp'),
(551, 70, '224_Metallic-Silky-Silver_c2c5c8.webp'),
(552, 70, '225_Metallic-Magma-Grey_403e3d.webp'),
(553, 70, 'dashboard-59.webp'),
(554, 70, 'front-fog-lamp-41.webp'),
(555, 70, 'front-left-side-47.webp'),
(556, 70, 'instrument-cluster-62.webp'),
(557, 70, 'seats-(aerial-view)-53.webp'),
(558, 70, 'side-view-(left)-90.webp'),
(559, 71, '221_POOLSIDE-BLUE_16367d.webp'),
(560, 71, '223_NUTMEG-BROWN_322419.webp'),
(561, 71, '224_MAGMA-GREY_303030.webp'),
(562, 71, '225_AUTUMN-ORANGE_bb2b1b.webp'),
(563, 71, 'dashboard-59.webp'),
(564, 71, 'front-fog-lamp-41.webp'),
(565, 71, 'front-left-side-47.webp'),
(566, 71, 'gear-shifter-87.webp'),
(567, 71, 'grille-97.webp'),
(568, 71, 'headlight-43.webp'),
(569, 71, 'rear-left-view-121.webp'),
(570, 71, 'rear-right-side-48.webp'),
(571, 71, 'side-mirror-(body)-93.webp'),
(572, 71, 'side-view-(right)-38.webp'),
(573, 71, 'Silky-Silver_77787a.webp'),
(574, 71, 'steering-wheel-54.webp'),
(575, 71, 'Superior-White_ededef.webp'),
(576, 71, 'taillight-44.webp'),
(577, 72, 'dashboard-59.webp'),
(578, 72, 'front-fog-lamp-41.webp'),
(579, 72, 'front-left-side-47.webp'),
(580, 72, 'front-view-118.webp'),
(581, 72, 'gear-shifter-87.webp'),
(582, 72, 'grille-97.webp'),
(583, 72, 'headlight-43.webp'),
(584, 72, 'Metalic-Glistening-Grey.webp'),
(585, 72, 'Metalic-Silky-Silver.webp'),
(586, 72, 'Orange.webp'),
(587, 72, 'Pearl-Arctic-White.webp'),
(588, 72, 'Premium-Cerulean-Blue.webp'),
(589, 72, 'rear-view-119.webp'),
(590, 72, 'recessed-steering-controls-139.webp'),
(591, 72, 'seats-(aerial-view)-53.webp'),
(592, 72, 'side-view-(right)-38.webp'),
(593, 72, 'taillight-44.webp'),
(594, 72, 'USE-THIS-RED.webp'),
(595, 72, 'wheel-42.webp'),
(596, 73, 'a.webp'),
(597, 73, 'dashboard-59.webp'),
(598, 73, 'front-fog-lamp-41.webp'),
(599, 73, 'front-left-side-47.webp'),
(600, 73, 'front-view-118.webp'),
(601, 73, 'gear-shifter-87.webp'),
(602, 73, 'grille-97.webp'),
(603, 73, 'headlight-43.webp'),
(604, 73, 'Metalic-Silky-Silver.webp'),
(605, 73, 'Orange.webp'),
(606, 73, 'Pearl-Arctic-White.webp'),
(607, 73, 'Premium-Cerulean-Blue.webp'),
(608, 73, 'rear-view-119.webp'),
(609, 73, 'recessed-steering-controls-139.webp'),
(610, 73, 'seats-(aerial-view)-53.webp'),
(611, 73, 'side-view-(right)-38.webp'),
(612, 73, 'taillight-44.webp'),
(613, 73, 'USE-THIS-RED.webp'),
(614, 73, 'wheel-42.webp'),
(615, 74, 'airbags-94.webp'),
(616, 74, 'center-tunnel-with-attached-smartphone-123.webp'),
(617, 74, 'dashboard-59.webp'),
(618, 74, 'Fiery-Red_711e21.webp'),
(619, 74, 'front-view-118.webp'),
(620, 74, 'Marina-Blue_015ca3.webp'),
(621, 74, 'Passion-Orange_d36e31.webp'),
(622, 74, 'Phantom-Black_080808.webp'),
(623, 74, 'rear-seats-52.webp'),
(624, 74, 'side-view-(left)-90.webp'),
(625, 74, 'Sleek-Silver_8d9090.webp'),
(626, 74, 'sun-roof-moon-roof-81.webp'),
(627, 74, 'top-view-117.webp'),
(628, 74, 'wheel-42.webp'),
(629, 75, '221_Marina-Blue_024585.webp'),
(630, 75, '222_Typhoon-Silver_e1e2e4.webp'),
(631, 75, '223_Polar-White_eef3f3.webp'),
(632, 75, '224_Phantom-Black_020001.webp'),
(633, 75, '225_Fiery-Red_a01616.webp'),
(634, 75, 'dashboard-59.webp'),
(635, 75, 'door-view-of-driver-seat-51.webp'),
(636, 75, 'front-left-side-47.webp'),
(637, 75, 'front-view-118.webp'),
(638, 75, 'instrument-cluster-62.webp'),
(639, 75, 'rear-seats-52.webp'),
(640, 75, 'rear-side-curtains-147.webp'),
(641, 75, 'wheel-42.webp'),
(642, 76, 'access-125-cbs_blue_1565695407.webp'),
(643, 76, 'access-125-drum-cbs_white_1565695655.webp'),
(644, 76, 'access-125-special-edition-drum-alloy-cbs_black_1565770526.webp'),
(645, 76, 'access-125-special-edition-drum-alloy-cbs_grey_1565770571.webp'),
(646, 76, 'access-125-special-edition-drum-alloy-cbs_red_hot_1565770551.webp'),
(647, 76, 'access-125-special-edition-drum-alloy-cbs_white_1565770605.webp'),
(648, 76, 'm_access-125_11540279833.webp'),
(649, 76, 'm_access-125_31540279835.webp'),
(650, 76, 'm_access-125_91540279841.webp'),
(651, 76, 'm_access-125_111540279842.webp'),
(652, 76, 'm_access-125_121540279857.webp'),
(653, 76, 'm_access-125_161540279862.webp'),
(654, 77, 'm_burgman-street_31540378510.webp'),
(655, 77, 'm_burgman-street_51540378513.webp'),
(656, 77, 'm_burgman-street_61540378515.webp'),
(657, 77, 'm_burgman-street_91540378519.webp'),
(658, 77, 'm_burgman-street_101540378520.webp'),
(659, 77, 'm_burgman-street_111540378608.webp'),
(660, 77, 'm_burgman-street_121540378609.webp'),
(661, 77, 'm_burgman-street_201540378618.webp'),
(662, 77, 'suzuki-burgman-street-std_black.webp'),
(663, 77, 'suzuki-burgman-street-std_grey_new.webp'),
(664, 77, 'suzuki-burgman-street-std_matte_black_1563798236.webp'),
(665, 77, 'suzuki-burgman-street-std_white.webp'),
(666, 78, 'bs6-access-1255e12fe5b5b45b.webp'),
(667, 78, 'bs6-access-1255e12fe5c2ad1d.webp'),
(668, 78, 'bs6-access-1255e12fe5ce8af2.webp'),
(669, 78, 'bs6-access-1255e12fe5da4a21.webp'),
(670, 78, 'bs6-access-1255e12fe5e5c454.webp'),
(671, 78, 'bs6-access-1255e12fe5f11aa0.webp'),
(672, 78, 'bs6-access-1255e12fe5fc01c6.webp'),
(673, 78, 'bs6-access-1255e12fe6081eda.webp'),
(674, 78, 'bs6-access-1255e12fe6137f88.webp'),
(675, 78, 'bs6-access-1255e12ffe493243.webp'),
(676, 78, 'bs6-access-1255e1300a834691.webp'),
(677, 78, 'bs6-access-1255e1302a3a4f77.webp'),
(678, 78, 'bs6-access-1255e1302e69cf57.webp'),
(679, 78, 'bs6-access-1255e13020c7194c.webp'),
(680, 78, 'bs6-access-1255e130105cf2a5.webp'),
(681, 78, 'bs6-access-1255e13005351361.webp'),
(682, 78, 'bs6-access-1255e13016738215.webp'),
(683, 78, 'bs6-access-1255e13026261897.webp'),
(684, 79, 'm_wego_11539842487.webp'),
(685, 79, 'm_wego_31539842490.webp'),
(686, 79, 'm_wego_51539842492.webp'),
(687, 79, 'm_wego_101539842497.webp'),
(688, 79, 'm_wego_111539842498.webp'),
(689, 79, 'm_wego_171539842522.webp'),
(690, 79, 'wego-drum_deep_sky_blue_1559194724.webp'),
(691, 79, 'wego-drum_mercury_grey_1559195574.webp'),
(692, 79, 'wego-drum_midnight_black_1559195682.webp'),
(693, 79, 'wego-drum_sporty_white_1559196468.webp'),
(694, 79, 'wego-drum_volcano_red_1559196593.webp'),
(695, 80, 'jupiter-110_matte_blue_1559814343.webp'),
(696, 80, 'jupiter-110_pristine_white_1559814347.webp'),
(697, 80, 'jupiter-110_titanium_grey_1559814348.webp'),
(698, 80, 'jupiter-110_volcano_red_1559814349.webp'),
(699, 80, 'jupiter-classic-edition_brown_1559818789.webp'),
(700, 80, 'm_jupiter_11570181761.webp'),
(701, 80, 'm_jupiter_31570181763.webp'),
(702, 80, 'm_jupiter_41570181766.webp'),
(703, 80, 'm_jupiter_61570181767.webp'),
(704, 80, 'm_jupiter_71570181768.webp'),
(705, 80, 'm_jupiter_81570181770.webp'),
(706, 80, 'm_jupiter_111570181774.webp'),
(707, 81, 'duke-200-std_black_ambassador_1561443408.webp'),
(708, 81, 'duke-200-std_orange_rush1_1561443422.webp'),
(709, 81, 'ktm-duke5e381fe9d70f1.webp'),
(710, 81, 'ktm-duke5e381fe93bd67.jpg'),
(711, 81, 'ktm-duke5e381fe8839e9.webp'),
(712, 81, 'ktm-duke5e381fea7fd61.webp'),
(713, 81, 'ktm-duke5e381feb2639d.webp'),
(714, 81, 'ktm-duke5e381febc7311.webp'),
(715, 81, 'ktm-duke5e381fed1166d.webp'),
(716, 81, 'ktm-duke5e3417be52bc4.webp'),
(717, 82, 'duke-390-std_orange_1524555544.webp'),
(718, 82, 'duke-390-std_white_1524555545.webp'),
(719, 82, 'ktm-duke-3905e38f2eb57209.webp'),
(720, 82, 'm_duke-390_11539346124.webp'),
(721, 82, 'm_duke-390_61539346128.webp'),
(722, 82, 'm_duke-390_71539346129.webp'),
(723, 82, 'm_duke-390_81539346130.webp'),
(724, 82, 'm_duke-390_91539346131.webp'),
(725, 82, 'm_duke-390_121539346153.webp'),
(726, 82, 'm_duke-390_121539346154.webp'),
(727, 83, 'ktm-rc5e34187191113.webp'),
(728, 83, 'm_rc-200_11560945059.webp'),
(729, 83, 'm_rc-200_21560945132.webp'),
(730, 83, 'm_rc-200_31560945133.webp'),
(731, 83, 'm_rc-200_41560945134.webp'),
(732, 83, 'm_rc-200_51560945135.webp'),
(733, 83, 'm_rc-200_61560945136.webp'),
(734, 83, 'm_rc-200_81560945149.webp'),
(735, 83, 'm_rc-200_111560945152.webp'),
(736, 83, 'rc-200-abs_orange_1561443632.webp'),
(737, 84, 'activa-125-alloy-drum_black_1542785097.webp'),
(738, 84, 'activa-125-alloy-drum_mat_crust_metallic_1542785099.webp'),
(739, 84, 'activa-125-alloy-drum_midnight_blue_metallic_1542785100.webp'),
(740, 84, 'activa-125-alloy-drum_red_1_1542785098.webp'),
(741, 84, 'activa-125-alloy-drum_silver_es_1542785100.webp'),
(742, 84, 'activa-125-alloy-drum_white_1542785098.webp'),
(743, 84, 'm_activa-125_11539695291.webp'),
(744, 84, 'm_activa-125_41539695293.webp'),
(745, 84, 'm_activa-125_51539695294.webp'),
(746, 84, 'm_activa-125_101539695314.webp'),
(747, 84, 'm_activa-125_121539695315.webp'),
(748, 84, 'm_activa-125_141539695316.webp'),
(749, 85, '1586787929410_3.webp'),
(750, 85, '1586787962961_0.webp'),
(751, 85, '1586787963377_1.webp'),
(752, 85, '1586787965347_2.webp'),
(753, 85, '1586787965812_7.webp'),
(754, 86, 'dio-deluxe_blue.webp'),
(755, 86, 'dio-deluxe_orange_rush1.webp'),
(756, 86, 'dio-deluxe_red_hot.webp'),
(757, 86, 'dio-deluxe_yellow1.webp'),
(758, 86, 'dio-dlx_black_ambassador_1525845777.webp'),
(759, 86, 'dio-dlx_green_matt_black_1525845776.webp'),
(760, 86, 'dio-dlx_grey_new_1525845775.webp'),
(761, 86, 'dio-dlx_yellow_new_1525845774.webp'),
(762, 86, 'm_dio_11539694955.webp'),
(763, 86, 'm_dio_41539694957.webp'),
(764, 86, 'm_dio_51539694958.webp'),
(765, 86, 'm_dio_91539694984.webp'),
(766, 86, 'm_dio_101539694984.webp'),
(767, 86, 'm_dio_111539694985.webp'),
(768, 86, 'm_dio_131539694986.webp'),
(769, 87, 'honda-grazia-std_blue_1564465449.webp'),
(770, 87, 'honda-grazia-std_matte_grey_2_1564465307.webp'),
(771, 87, 'honda-grazia-std_neo_orange_mettalic_1564465325.webp'),
(772, 87, 'honda-grazia-std_pearl_amazing_white_1564465364.webp'),
(773, 87, 'honda-grazia-std_red_1564465415.webp'),
(774, 87, 'm_grazia_11539696572.webp'),
(775, 87, 'm_grazia_31539696574.webp'),
(776, 87, 'm_grazia_51539696575.webp'),
(777, 88, 'SP 125 Front.jpg'),
(778, 88, 'SP 125 Imperial Red Metallic.jpg'),
(779, 88, 'SP 125 Matte Axis Grey Metallic.jpg'),
(780, 88, 'SP 125 Model Image.jpg'),
(781, 88, 'SP 125 Pearl Siren Blue.jpg'),
(782, 88, 'SP 125 Rear three-quarter.jpg'),
(783, 88, 'SP 125 Rear.jpg'),
(784, 88, 'SP 125 Striking Green.jpg'),
(785, 89, '1.jpg'),
(786, 89, 'SP 125 Front.jpg'),
(787, 89, 'SP 125 Matte Axis Grey Metallic.jpg'),
(788, 89, 'SP 125 Model Image.jpg'),
(789, 89, 'SP 125 Pearl Siren Blue.jpg'),
(790, 89, 'SP 125 Rear three-quarter.jpg'),
(791, 89, 'SP 125 Rear.jpg'),
(792, 89, 'SP 125 Striking Green.jpg'),
(793, 90, '1.jpg'),
(794, 90, 'X-Blade Front.jpg'),
(795, 90, 'X-Blade Matte Marvel Blue Metallic.jpg'),
(796, 90, 'X-Blade Pearl Igneous Black.jpg'),
(797, 90, 'X-Blade Pearl Spartan Red (1).jpg'),
(798, 90, 'X-Blade Pearl Spartan Red.jpg'),
(799, 90, 'X-Blade Rear three-quarter.jpg'),
(800, 90, 'X-Blade Rear.jpg'),
(801, 90, 'X-Blade Side (1).jpg'),
(802, 90, 'X-Blade Side.jpg'),
(803, 91, '1586787929410_3.webp'),
(804, 91, '1586787962961_0.webp'),
(805, 91, '1586787963377_1.webp'),
(806, 91, '1586787965347_2.webp'),
(807, 91, '1586787965812_7.webp'),
(808, 92, 'interceptor-6505e32ae4de561f.webp'),
(809, 92, 'interceptor-6505e32ae53ee4b1.webp'),
(810, 92, 'interceptor-6505e32ae527e9dd.webp'),
(811, 92, 'interceptor-6505e32ae5103b11.webp'),
(812, 92, 'interceptor-6505e254efcbf027.webp'),
(813, 92, 'interceptor-6505e254fa814ac1.webp'),
(814, 92, 'interceptor-6505e254fcce2e2c.webp'),
(815, 92, 'interceptor-6505e254ff586296.webp'),
(816, 92, 'interceptor-6505e255033acf5b.webp'),
(817, 92, 'interceptor-6505e25501940a47.webp'),
(818, 93, '221_Marina-Blue_024585.webp'),
(819, 93, '222_Typhoon-Silver_e1e2e4.webp'),
(820, 93, '223_Polar-White_eef3f3.webp'),
(821, 93, '224_Phantom-Black_020001.webp'),
(822, 93, '225_Fiery-Red_a01616.webp'),
(823, 93, 'dashboard-59.webp'),
(824, 93, 'door-view-of-driver-seat-51.webp'),
(825, 93, 'front-left-side-47.webp'),
(826, 93, 'front-view-118.webp'),
(827, 93, 'instrument-cluster-62.webp'),
(828, 93, 'rear-seats-52.webp'),
(829, 93, 'rear-side-curtains-147.webp'),
(830, 93, 'wheel-42.webp'),
(831, 94, '1 (1).webp'),
(832, 94, '1 (2).webp'),
(833, 94, '1 (3).webp'),
(834, 94, '1 (4).webp'),
(835, 94, '1 (5).webp'),
(836, 94, '1 (6).webp'),
(837, 94, '1 (7).webp'),
(838, 94, '1 (8).webp'),
(839, 94, '1 (9).webp'),
(840, 94, '1 (10).webp'),
(841, 94, '1 (11).webp'),
(842, 94, '1 (12).webp'),
(843, 94, '1 (13).webp'),
(844, 95, '1 (1).webp'),
(845, 95, '1 (2).webp'),
(846, 95, '1 (3).webp'),
(847, 95, '1 (4).webp'),
(848, 95, '1 (5).webp'),
(849, 95, '1 (6).webp'),
(850, 95, '1 (7).webp'),
(851, 95, '1 (8).webp'),
(852, 95, '1 (9).webp'),
(853, 95, '1 (10).webp'),
(854, 95, '1 (11).webp'),
(855, 95, '1 (12).webp'),
(856, 95, '1 (13).webp'),
(857, 96, 'airbags-94.webp'),
(858, 96, 'center-tunnel-with-attached-smartphone-123.webp'),
(859, 96, 'dashboard-59.webp'),
(860, 96, 'Fiery-Red_711e21.webp'),
(861, 96, 'front-view-118.webp'),
(862, 96, 'Marina-Blue_015ca3.webp'),
(863, 96, 'Passion-Orange_d36e31.webp'),
(864, 96, 'Phantom-Black_080808.webp'),
(865, 96, 'rear-seats-52.webp'),
(866, 96, 'side-view-(left)-90.webp'),
(867, 96, 'Sleek-Silver_8d9090.webp'),
(868, 96, 'sun-roof-moon-roof-81.webp'),
(869, 96, 'top-view-117.webp'),
(870, 96, 'wheel-42.webp'),
(871, 97, '1.jpg'),
(872, 97, 'Ntorq 125 Instrument cluster.jpg'),
(873, 97, 'Ntorq 125 Matte Black_Metallic Black_Metallic Red.jpg'),
(874, 97, 'Ntorq 125 Matte Red.jpg'),
(875, 97, 'Ntorq 125 Matte Silver (1).jpg'),
(876, 97, 'Ntorq 125 Matte Silver.jpg'),
(877, 97, 'Ntorq 125 Matte Yellow.jpg'),
(878, 97, 'Ntorq 125 Metallic Blue (1).jpg'),
(879, 97, 'Ntorq 125 Metallic Blue.jpg'),
(880, 97, 'Ntorq 125 Metallic Red.jpg'),
(881, 97, 'Ntorq 125 Rear three-quarter.jpg'),
(882, 97, 'Ntorq 125 Rear.jpg'),
(883, 97, 'Ntorq 125 Yellow & Black.jpg'),
(884, 98, 'Jupiter Front three-quarter.jpg'),
(885, 98, 'Jupiter Front view.jpg'),
(886, 98, 'Jupiter Indiblue.jpg'),
(887, 98, 'Jupiter Matte Blue.jpg'),
(888, 98, 'Jupiter Matte Silver.jpg'),
(889, 98, 'Jupiter Midnight Black.jpg'),
(890, 98, 'Jupiter Model Image.jpg'),
(891, 98, 'Jupiter Mystic Gold.jpg'),
(892, 98, 'Jupiter Rear three-quarter (1).jpg'),
(893, 98, 'Jupiter Rear three-quarter.jpg'),
(894, 98, 'Jupiter Rear view.jpg'),
(895, 98, 'Jupiter Royal Wine (1).jpg'),
(896, 98, 'Jupiter Royal Wine.jpg'),
(897, 98, 'Jupiter Side.jpg'),
(898, 98, 'Jupiter Sunlit Ivory (1).jpg'),
(899, 98, 'Jupiter Sunlit Ivory.jpg'),
(900, 98, 'Jupiter Titanium Grey.jpg'),
(901, 98, 'Jupiter Volcano Red.jpg'),
(902, 99, 'Sport Black Blue (1).jpg'),
(903, 99, 'Sport Black Blue.jpg'),
(904, 99, 'Sport Black Red (1).jpg'),
(905, 99, 'Sport Black Red.jpg'),
(906, 99, 'Sport Front three-quarter (1).jpg'),
(907, 99, 'Sport Front three-quarter (2).jpg'),
(908, 99, 'Sport Front three-quarter (3).jpg'),
(909, 99, 'Sport Front three-quarter (4).jpg'),
(910, 99, 'Sport Front three-quarter (5).jpg'),
(911, 99, 'Sport Front three-quarter.jpg'),
(912, 99, 'Sport Mercury Grey (1).jpg'),
(913, 99, 'Sport Mercury Grey.jpg'),
(914, 99, 'Sport Model Image.jpg'),
(915, 99, 'Sport Rear (1).jpg'),
(916, 99, 'Sport Rear.jpg'),
(917, 99, 'Sport Side.jpg'),
(918, 99, 'Sport Volcano Red.jpg'),
(919, 99, 'Sport White Purple.jpg'),
(920, 100, 'Apache RR310 Action (1).jpg'),
(921, 100, 'Apache RR310 Action.jpg'),
(922, 100, 'Apache RR310 Brakes (1).jpg'),
(923, 100, 'Apache RR310 Brakes.jpg'),
(924, 100, 'Apache RR310 Exterior.jpg'),
(925, 100, 'Apache RR310 Front three-quarter.jpg'),
(926, 100, 'Apache RR310 Headlamp.jpg'),
(927, 100, 'Apache RR310 Headlamps.jpg'),
(928, 100, 'Apache RR310 Instrument cluster.jpg'),
(929, 100, 'Apache RR310 Model Image.jpg'),
(930, 100, 'Apache RR310 Racing Red (1).jpg'),
(931, 100, 'Apache RR310 Racing Red.jpg'),
(932, 100, 'Apache RR310 Tail lamp.jpg'),
(933, 100, 'Apache RR310 Tank.jpg'),
(934, 100, 'Apache RR310 Titanium Black.jpg'),
(935, 100, 'Apache RR310 Wheels-Tyres.jpg'),
(936, 101, '1.jpg'),
(937, 101, 'Apache RR310 Action (1).jpg'),
(938, 101, 'Apache RR310 Brakes (1).jpg'),
(939, 101, 'Apache RR310 Brakes.jpg'),
(940, 101, 'Apache RR310 Exterior.jpg'),
(941, 101, 'Apache RR310 Front three-quarter.jpg'),
(942, 101, 'Apache RR310 Headlamp.jpg'),
(943, 101, 'Apache RR310 Headlamps.jpg'),
(944, 101, 'Apache RR310 Instrument cluster.jpg'),
(945, 101, 'Apache RR310 Model Image.jpg'),
(946, 101, 'Apache RR310 Racing Red (1).jpg'),
(947, 101, 'Apache RR310 Racing Red.jpg'),
(948, 101, 'Apache RR310 Tail lamp.jpg'),
(949, 101, 'Apache RR310 Tank.jpg'),
(950, 101, 'Apache RR310 Titanium Black.jpg'),
(951, 101, 'Apache RR310 Wheels-Tyres.jpg'),
(952, 102, '1.jpg'),
(953, 102, 'Ntorq 125 Instrument cluster.jpg'),
(954, 102, 'Ntorq 125 Matte Black_Metallic Black_Metallic Red.jpg'),
(955, 102, 'Ntorq 125 Matte Red.jpg'),
(956, 102, 'Ntorq 125 Matte Silver (1).jpg'),
(957, 102, 'Ntorq 125 Matte Silver.jpg'),
(958, 102, 'Ntorq 125 Matte Yellow.jpg'),
(959, 102, 'Ntorq 125 Metallic Blue (1).jpg'),
(960, 102, 'Ntorq 125 Metallic Blue.jpg'),
(961, 102, 'Ntorq 125 Metallic Red.jpg'),
(962, 102, 'Ntorq 125 Rear three-quarter.jpg'),
(963, 102, 'Ntorq 125 Rear.jpg'),
(964, 102, 'Ntorq 125 Yellow & Black.jpg'),
(965, 103, '1.jpg'),
(966, 103, 'Apache RR310 Action (1).jpg'),
(967, 103, 'Apache RR310 Brakes (1).jpg'),
(968, 103, 'Apache RR310 Brakes.jpg'),
(969, 103, 'Apache RR310 Exterior.jpg'),
(970, 103, 'Apache RR310 Front three-quarter.jpg'),
(971, 103, 'Apache RR310 Headlamp.jpg'),
(972, 103, 'Apache RR310 Headlamps.jpg'),
(973, 103, 'Apache RR310 Instrument cluster.jpg'),
(974, 103, 'Apache RR310 Model Image.jpg'),
(975, 103, 'Apache RR310 Racing Red (1).jpg'),
(976, 103, 'Apache RR310 Racing Red.jpg'),
(977, 103, 'Apache RR310 Tail lamp.jpg'),
(978, 103, 'Apache RR310 Tank.jpg'),
(979, 103, 'Apache RR310 Titanium Black.jpg'),
(980, 103, 'Apache RR310 Wheels-Tyres.jpg'),
(981, 104, 'Wego Black.jpg'),
(982, 104, 'Wego Exterior (1).jpg'),
(983, 104, 'Wego Exterior.jpg'),
(984, 104, 'Wego Grey (1).jpg'),
(985, 104, 'Wego Grey.jpg'),
(986, 104, 'Wego Headlamp.jpg'),
(987, 104, 'Wego Mirror (1).jpg'),
(988, 104, 'Wego Mirror.jpg'),
(989, 104, 'Wego Model Image.jpg'),
(990, 104, 'Wego Red.jpg'),
(991, 104, 'Wego Silver Black (1).jpg'),
(992, 104, 'Wego Silver Black.jpg'),
(993, 104, 'Wego Silver Grey.jpg'),
(994, 104, 'Wego Silver Red.jpg'),
(995, 104, 'Wego Tail lamp (1).jpg'),
(996, 104, 'Wego White.jpg'),
(997, 105, 'XL 100 Heavy Duty Beaver Brown.jpg'),
(998, 105, 'XL 100 Heavy Duty Front Footpeg.jpg'),
(999, 105, 'XL 100 Heavy Duty Front three-quarter.jpg'),
(1000, 105, 'XL 100 Heavy Duty Headlamp.jpg'),
(1001, 105, 'XL 100 Heavy Duty Instrument cluster (2).jpg'),
(1002, 105, 'XL 100 Heavy Duty Instrument cluster (3).jpg'),
(1003, 105, 'XL 100 Heavy Duty Instrument cluster.jpg'),
(1004, 105, 'XL 100 Heavy Duty Model Image.jpg'),
(1005, 105, 'XL 100 Heavy Duty Rear three-quarter (1).jpg'),
(1006, 105, 'XL 100 Heavy Duty Rear three-quarter (2).jpg'),
(1007, 105, 'XL 100 Heavy Duty Rear three-quarter.jpg'),
(1008, 105, 'XL 100 Heavy Duty RHS Switchgear.jpg'),
(1009, 105, 'XL 100 Heavy Duty Wheels-Tyres (1).jpg'),
(1010, 106, 'a (2).webp'),
(1011, 106, 'a.webp'),
(1012, 106, 'dashboard-59.webp'),
(1013, 106, 'front-fog-lamp-41.webp'),
(1014, 106, 'front-view-118.webp'),
(1015, 106, 'gear-shifter-87.webp'),
(1016, 106, 'grille-97.webp'),
(1017, 106, 'headlight-43.webp'),
(1018, 106, 'Metalic-Silky-Silver.webp'),
(1019, 106, 'Orange.webp'),
(1020, 106, 'Pearl-Arctic-White.webp'),
(1021, 106, 'Premium-Cerulean-Blue.webp'),
(1022, 106, 'rear-view-119.webp'),
(1023, 106, 'recessed-steering-controls-139.webp'),
(1024, 106, 'seats-(aerial-view)-53.webp'),
(1025, 106, 'side-view-(right)-38.webp'),
(1026, 106, 'taillight-44.webp'),
(1027, 106, 'USE-THIS-RED.webp'),
(1028, 106, 'wheel-42.webp'),
(1029, 107, '221_POOLSIDE-BLUE_16367d.webp'),
(1030, 107, '223_NUTMEG-BROWN_322419.webp'),
(1031, 107, '224_MAGMA-GREY_303030.webp'),
(1032, 107, '225_AUTUMN-ORANGE_bb2b1b.webp'),
(1033, 107, 'dashboard-59.webp'),
(1034, 107, 'front-fog-lamp-41.webp'),
(1035, 107, 'front-left-side-47.webp'),
(1036, 107, 'gear-shifter-87.webp'),
(1037, 107, 'grille-97.webp'),
(1038, 107, 'headlight-43.webp'),
(1039, 107, 'rear-left-view-121.webp'),
(1040, 107, 'rear-right-side-48.webp'),
(1041, 107, 'side-mirror-(body)-93.webp'),
(1042, 107, 'side-view-(right)-38.webp'),
(1043, 107, 'Silky-Silver_77787a.webp'),
(1044, 107, 'steering-wheel-54.webp'),
(1045, 107, 'Superior-White_ededef.webp'),
(1046, 107, 'taillight-44.webp'),
(1047, 108, '3d-model-163.webp'),
(1048, 108, '221_Pearl-Metallic-Auburn-Red_6a151e.webp'),
(1049, 108, '222_Pearl-Metallic-Oxford-Blue_01154b.webp'),
(1050, 108, '223_Pearl-Arctic-White_cccccc.webp'),
(1051, 108, '224_Metallic-Silky-Silver_c2c5c8.webp'),
(1052, 108, '225_Metallic-Magma-Grey_403e3d.webp'),
(1053, 108, 'dashboard-59.webp'),
(1054, 108, 'front-fog-lamp-41.webp'),
(1055, 108, 'front-left-side-47.webp'),
(1056, 108, 'instrument-cluster-62.webp'),
(1057, 108, 'seats-(aerial-view)-53.webp'),
(1058, 108, 'side-view-(left)-90.webp'),
(1059, 109, '1.webp'),
(1060, 109, 'dashboard-59.webp'),
(1061, 109, 'door-view-of-driver-seat-51.webp'),
(1062, 109, 'engine-50.webp'),
(1063, 109, 'front-left-side-47.webp'),
(1064, 109, 'key-79.webp'),
(1065, 109, 'Nissan_GT-R_BLUE-RACING_000514.webp'),
(1066, 109, 'Nissan_GT-R_GUN-METALLIC_282828.webp'),
(1067, 109, 'Nissan_GT-R_KATSURA-ORANGE_d75308.webp'),
(1068, 109, 'Nissan_GT-R_PEARL-WHITE_c5c5c2.webp'),
(1069, 109, 'Nissan_GT-R_ULTIMATE-SILVER_454647.webp'),
(1070, 109, 'Nissan_GT-R_VIBRANT-RED_791104.webp'),
(1071, 109, 'rear-left-view-121.webp'),
(1072, 109, 'rear-seats-52.webp'),
(1073, 110, '221_BRONZE-GREY-WITH-AMBER-ORANGE_675f59 - Copy.webp'),
(1074, 110, '222_PEARL-WHITE-WITH-ONYX-BLACK_ffffff.webp'),
(1075, 110, '223_PEARL-WHITE-WITH-AMBER-ORANGE_d0d0d2.webp'),
(1076, 110, '224_FIRE-RED-WITH-ONYX-BLACK_ee383b.webp'),
(1077, 110, '225_AMBER-ORANGE_d05f2f.webp'),
(1078, 110, '226_PEARL-WHITE_b6b6b8.webp'),
(1079, 110, '229_BLADE-SILVER_b0b5bc - Copy.webp'),
(1080, 110, '230_NIGHT-SHADE_39393b.webp'),
(1081, 110, '231_DEEP-BLUE-PEARL_59b0e2.webp'),
(1082, 110, 'configuration-selector-knob-140.webp'),
(1083, 110, 'cup-holders-(front)-66.webp'),
(1084, 110, 'front-left-side-47 - Copy.webp'),
(1085, 110, 'front-left-side-47.webp'),
(1086, 110, 'gear-shifter-87 - Copy.webp'),
(1087, 110, 'gear-shifter-87.webp'),
(1088, 110, 'ignition-start-stop-button-142.webp'),
(1089, 110, 'instrument-cluster-62.webp'),
(1090, 110, 'seats-(aerial-view)-53 - Copy.webp'),
(1091, 110, 'seats-(aerial-view)-53.webp'),
(1092, 110, 'side-view-(left)-90.webp'),
(1093, 111, '221_BRONZE-GREY-WITH-AMBER-ORANGE_675f59 - Copy.webp'),
(1094, 111, '222_PEARL-WHITE-WITH-ONYX-BLACK_ffffff.webp'),
(1095, 111, '223_PEARL-WHITE-WITH-AMBER-ORANGE_d0d0d2.webp'),
(1096, 111, '224_FIRE-RED-WITH-ONYX-BLACK_ee383b.webp'),
(1097, 111, '225_AMBER-ORANGE_d05f2f.webp'),
(1098, 111, '226_PEARL-WHITE_b6b6b8.webp'),
(1099, 111, '229_BLADE-SILVER_b0b5bc - Copy.webp'),
(1100, 111, '230_NIGHT-SHADE_39393b.webp'),
(1101, 111, '231_DEEP-BLUE-PEARL_59b0e2.webp'),
(1102, 111, 'configuration-selector-knob-140.webp'),
(1103, 111, 'cup-holders-(front)-66.webp'),
(1104, 111, 'front-left-side-47 - Copy.webp'),
(1105, 111, 'front-left-side-47.webp'),
(1106, 111, 'gear-shifter-87 - Copy.webp'),
(1107, 111, 'gear-shifter-87.webp'),
(1108, 111, 'ignition-start-stop-button-142.webp'),
(1109, 111, 'instrument-cluster-62.webp'),
(1110, 111, 'seats-(aerial-view)-53 - Copy.webp'),
(1111, 111, 'seats-(aerial-view)-53.webp'),
(1112, 111, 'side-view-(left)-90.webp'),
(1113, 112, '1.jpg'),
(1114, 112, '200 Duke Brakes.jpg'),
(1115, 112, '200 Duke Ceramic White.jpg'),
(1116, 112, '200 Duke Engine.jpg'),
(1117, 112, '200 Duke Front Forks.jpg'),
(1118, 112, '200 Duke Front Wheel & Tyre.jpg'),
(1119, 112, '200 Duke Headlamps.jpg'),
(1120, 112, '200 Duke Instrument cluster.jpg'),
(1121, 112, '200 Duke Rear Suspension.jpg'),
(1122, 112, '200 Duke Right Front Three Quarter (1).jpg'),
(1123, 112, '200 Duke Right Front Three Quarter.jpg'),
(1124, 112, '200 Duke Seat.jpg'),
(1125, 113, '1.jpg'),
(1126, 113, '200 Duke Brakes.jpg'),
(1127, 113, '200 Duke Ceramic White.jpg'),
(1128, 113, '200 Duke Front Forks.jpg'),
(1129, 113, '200 Duke Front Wheel & Tyre.jpg'),
(1130, 113, '200 Duke Headlamps.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`b_id`),
  ADD KEY `v_id` (`v_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `showroom`
--
ALTER TABLE `showroom`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`v_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `vehicle_category`
--
ALTER TABLE `vehicle_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `vehicle_image`
--
ALTER TABLE `vehicle_image`
  ADD PRIMARY KEY (`vimage_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `showroom`
--
ALTER TABLE `showroom`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `vehicle_category`
--
ALTER TABLE `vehicle_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicle_image`
--
ALTER TABLE `vehicle_image`
  MODIFY `vimage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1131;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
