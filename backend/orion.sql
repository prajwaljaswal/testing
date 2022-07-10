-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2022 at 03:23 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orion`
--

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `email_lead` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `processBy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `body`, `date`, `email_lead`, `subject`, `status`, `processBy`) VALUES
(1, 'Hi Stephen,\r\n\r\nMany thanks for your email to Lauren below.\r\n\r\nI am now managing Linkedin for 2020 from a B2B perspective and would be interested to know more.\r\n\r\nI have some availability next week – does 9.30/10am work for you on Monday?\r\n\r\n \r\n\r\nBest wish', '2020.01.31', 'lauren@biscuiteers.com', 'RE: schedule a call, Lauren', 'pending', ''),
(2, 'Hi Stephen –\n\n \n\nI would like to use Linked In  to generate more sales and could do a 5 minute phone call.\n\n \n\nTammy     WE ARE HIRING!\n\n \n\nTamara A. Kiesa, Marketing Director & Assistant to Gary A. Grossman, CPA, CFP\n110 West Fayette Street | Suite 900 |', '2020.02.03', 'tkiesa@gsacpas.com', 'RE: schedule a call, Tamara', 'pending', ''),
(3, 'Hello Nikhil – thank you for reaching out.\n\nAs a first step, please explain how you ‘fund’ future sales.\n\n \n\nThank you.\n\n \n\nScott Macwilliam, MBA\nPresident\n\nElby Mobility\n1 + 905-302-1287\n\nVisit us @ \n\nwww.elbymobility.com and,\n\nhttps://business.elbymobil', '2020.01.15', 'scott.macwilliam@elbybike.com', 'POC - Nikhil Gokal', 'pending', ''),
(4, 'Adrian too busy right now, catch up end of March,\n\nthx', '2020.01.24', 'lindaw@parama.ca', 'question', 'pending', ''),
(5, 'Dear Saumil,\n\nI’m copying Jawwad who will be the in charge person for any insurance subject.\n\n \n\n \n\n \n\nBest regards,\n\n \n\nIbrahim Bala’awi\n\nManaging Director\n\n \n\nm\n\n+971 5o 6149641\n\nt\n\n+971 4 457 9119\n\ne\n\nibrahim.balaawi@waseela.com\n\n', '2020.01.29', 'ibrahim.balaawi@waseela.com', 'follow up', 'pending', ''),
(6, 'Thank you Sukhi, we are not interested, please remove my address from your contact list.\n\n \n\nKind regards\n\n \n\nDany', '2020.02.07', 'DanyO@avdynamics.com.au', 'previous email', 'pending', ''),
(7, 'Hi Brian\n\n\nThanks for getting in touch. However, we’re a public sector organisation and as such, don’t sell anything, so the answer to your question is no, we’re not looking to generate more sales.\n\n \n\nKind regards\n\nKatherine\n\n \n\n \n\nKatherine Goodwin\n\nHea', '2020.01.27', 'Katherine.Goodwin@fss.scot', 'question', 'pending', ''),
(8, 'Hi Daley,\n\n \n\nThanks for the email and I have copied in Martin our Business Development Director at Greyline who is the best person to talk to with regards to your proposal.\n\n \n\n \n\n \n\nKind regards,​\n\nTony Rogers\n\nManaging Director', '2020.01.29', 'trogers@greylineltd.com', 'follow-up', 'pending', ''),
(9, 'Hi Mark\n\nAll of this is under review right now, can I suggest you get back in touch in 4 weeks time and we will see where we have got to and what our plans will be.\n\nThanks\n\nEmma', '2020.01.15', 'emma@chikas.co.uk', 'last email', 'pending', ''),
(10, 'Hi Brian, this isn’t part of my domain but in any event, we are comfortable with regard to our use of LinkedIn at the moment.\n\n \n\nThanks,\n\nSteve.\n\n \n\nStephen Cannon\nHead of Digital Services \n\nT: +44(0) 131 297 2270  M: +44(0) 7879 407544\n\nwww.agenor.co.uk', '2020.02.03', 'steve.cannon@agenor.co.uk', 'schedule a call, Steve', 'pending', ''),
(11, 'Nathan,\n\n \n\nSorry for the delayed response.\n\nYou may contact Tom McAllister, who is the Director for Training globally.\n\n \n\nTom.McAllister@nov.com\n\n \n\n \n\n \n\nRegards,\n\n \n\nSujith Mohan | Director of Service, MENA & Asia, Marine & Construction\n\nNOV Rig Techn', '2020.01.21', 'Sujith.Mohan@nov.com', '5 minute call', 'pending', ''),
(12, 'Ivy,\n\n \n\nThanks so much for your email.  Currently, CBIS is not in need of a video production service.  However, we do have a full-suite of offerings to help get JLB Media in front of the right people in the association space.\n\n \n\nI’ve copied my colleague', '2020.01.29', 'spare@columbiabooks.com', 're: question', 'pending', ''),
(13, 'Hi Adrian,\n\n \n\nThanks for reaching out. Sure, always nice to have a chat and see if there is anything that might help.\n\nHow about giving me a call at 3pm?\n\n \n\nThanks\n\nAlex\n\n \n\nAlex McCloy\n\nBusiness Development Manager\n\n \n\nMobile: +44 (0)7447 740 591\n\n \n\nP', '2020.01.20', 'alex.mccloy@provek.co.uk', 'Hi Alex', 'pending', ''),
(14, 'Hi,\n\n \n\nSend me a time suggestion.\n\n \n\nBest regards\n\n/ Jonathan\n\n \n\nJonathan Wadström\n\n+46 73-660 69 02\n\nwww.zcooly.com', '2020.01.31', 'jonathan@zcooly.com', 'schedule a call, Jonathan', 'pending', ''),
(15, 'Hi Stephen\n\n \n\nThanks for your email. Unfortunately this is not something we’re looking to do either now or in the future.\n\n \n\nKind regards\n\n \n\n \n\nKimberley Hamilton-Young\n\nHead of Marketing & Planning\n\n \n\nTel: +44 (0)20 7096 1960\n\nMob: +44 (0) 7930 50667', '2020.02.10', 'Kimberley@inogesis.com', 'schedule a call, Kimberley', 'pending', ''),
(16, 'Hi Stephen,\n\n \n\nThanks for your email. This doesn’t really fit with our profile I’m afraid as we distribute via the Wholesale channel.\n\n \n\nWith regards\n\n \n\n \n\nStuart Eglin\nSales Director\nstuart.eglin@cromptonlamps.com\nwww.cromptonlamps.com', '2020.01.29', 'stuart.eglin@cromptonlamps.com', 'Hi Stuart', 'pending', ''),
(17, 'Hi Stephen,\n\nThank you for your email.\n\nAt present we primarily use LinkedIn for recruitment purposes - not to generate sales.\n\nIf this were to change in the future I’ll be in touch.\n\nKind Regards,\n\nTish ', '2020.02.03', 'Tish.Jayanetti@postalmuseum.org', 'schedule a call, Tish', 'pending', ''),
(18, 'Thanks Stephen, this is not relevant for us. \n\nAll the best.\n\n-Patrik', '2020.02.04', 'patrik.korhonen@dingle.fi', 'call on Thursday?', 'pending', ''),
(19, 'Hi Brian\n\nThis isn’t relevant to our business, we do not generate sales. \n\nNicole\n\nSent from my iPhone', '2020.02.03', 'ng@betterbankside.co.uk', 'I\'d love your feedback on that meeting, Nicole', 'pending', ''),
(20, 'Hi Nathan,\n\n \n\nThanks for reaching out.\n\n \n\nHonestly I do not understand the below message. What sort of solutions you are offering and how this will benefit our business?\n\n \n\nRegards,\n\n \n\nMutasem', '2020.01.15', 'mutasem.alkhalili@bakerhughes.com', 'EXT: schedule a call, Mutasem', 'pending', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Name`, `Status`) VALUES
(1, 'user 1', 'inactive'),
(2, 'user 2', 'inactive'),
(3, 'user 3', 'inactive'),
(4, 'user 4', 'inactive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
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
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
