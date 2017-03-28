-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 28, 2017 at 09:05 PM
-- Server version: 5.1.73
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `CityRealty`
--

-- --------------------------------------------------------

--
-- Table structure for table `BDetails`
--

CREATE TABLE IF NOT EXISTS `BDetails` (
  `RealEstateNo` int(11) NOT NULL COMMENT 'Foreign Key of Building',
  `DetailNo` int(11) NOT NULL COMMENT 'Foreign Key of BDetailsChoices'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `BDetails`:
--   `DetailNo`
--       `BDetailsChoices` -> `DetailΝο`
--   `RealEstateNo`
--       `Building` -> `RealEstateNo`
--

-- --------------------------------------------------------

--
-- Table structure for table `BDetailsChoices`
--

CREATE TABLE IF NOT EXISTS `BDetailsChoices` (
  `DetailΝο` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(35) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`DetailΝο`),
  UNIQUE KEY `Description` (`Description`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `BFloorType`
--

CREATE TABLE IF NOT EXISTS `BFloorType` (
  `RealEstateNo` int(11) NOT NULL COMMENT 'Foreign Key of Building',
  `FloorTypeNo` int(11) NOT NULL COMMENT 'Foreign Key of BFloorTypeChoices'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `BFloorType`:
--   `FloorTypeNo`
--       `BFloorTypeChoices` -> `FloorTypeNo`
--   `RealEstateNo`
--       `Building` -> `RealEstateNo`
--

-- --------------------------------------------------------

--
-- Table structure for table `BFloorTypeChoices`
--

CREATE TABLE IF NOT EXISTS `BFloorTypeChoices` (
  `FloorTypeNo` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`FloorTypeNo`),
  UNIQUE KEY `Description` (`Description`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `BFrames`
--

CREATE TABLE IF NOT EXISTS `BFrames` (
  `RealEstateNo` int(11) NOT NULL COMMENT 'Foreign Key of Building',
  `FrameNo` int(11) NOT NULL COMMENT 'Foreign Key of BFloorTypeChoices'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `BFrames`:
--   `FrameNo`
--       `BFramesChoices` -> `FrameNo`
--   `RealEstateNo`
--       `Building` -> `RealEstateNo`
--

-- --------------------------------------------------------

--
-- Table structure for table `BFramesChoices`
--

CREATE TABLE IF NOT EXISTS `BFramesChoices` (
  `FrameNo` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(35) NOT NULL,
  PRIMARY KEY (`FrameNo`),
  UNIQUE KEY `Description` (`Description`),
  UNIQUE KEY `Description_2` (`Description`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Table structure for table `BLocationDetails`
--

CREATE TABLE IF NOT EXISTS `BLocationDetails` (
  `RealEstateNo` int(11) NOT NULL COMMENT 'Foreign Key of Building',
  `DetailNo` int(11) NOT NULL COMMENT 'Foreign Key of BDetailsChoices'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `BLocationDetails`:
--   `DetailNo`
--       `BLocationDetailsChoices` -> `DetailNo`
--   `RealEstateNo`
--       `Building` -> `RealEstateNo`
--

-- --------------------------------------------------------

--
-- Table structure for table `BLocationDetailsChoices`
--

CREATE TABLE IF NOT EXISTS `BLocationDetailsChoices` (
  `DetailNo` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(35) NOT NULL,
  PRIMARY KEY (`DetailNo`),
  UNIQUE KEY `Description` (`Description`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- --------------------------------------------------------

--
-- Table structure for table `Building`
--

CREATE TABLE IF NOT EXISTS `Building` (
  `RealEstateNo` int(10) unsigned NOT NULL,
  `BuildingType` enum('Άλλο','Κατοικία','Επαγγελματικός χώρος','Ξενοδοχείο') COLLATE utf8_bin NOT NULL DEFAULT 'Κατοικία',
  `ConstructionYear` year(4) NOT NULL,
  `Renovated` tinyint(1) NOT NULL DEFAULT '0',
  `RenovationYear` year(4) NOT NULL,
  `NumOfFloors` tinyint(4) NOT NULL DEFAULT '0',
  `ParkingSpots` tinyint(4) NOT NULL DEFAULT '0',
  `NumOfRooms` tinyint(4) NOT NULL DEFAULT '1',
  `NumOfWC` tinyint(4) NOT NULL DEFAULT '1',
  `Drainage` tinyint(1) NOT NULL DEFAULT '0',
  `EnergyCertificate` enum('Unknown','Class A','Class B','Class C','Class D') COLLATE utf8_bin NOT NULL DEFAULT 'Unknown',
  `Levels` enum('0','1','2','3','4','5') COLLATE utf8_bin NOT NULL DEFAULT '0',
  `HeatingFuel` enum('Άλλο','Πετρέλαιο','Γκάζι','Ηλεκτρική','Τζάκι','Κλιματισμός') COLLATE utf8_bin NOT NULL DEFAULT 'Άλλο',
  `HeatingType` enum('Άλλο','Κεντρική','Ανεξάρτητη','Κοινόχρηστη') COLLATE utf8_bin NOT NULL DEFAULT 'Άλλο',
  `AvgSharedCosts` double NOT NULL DEFAULT '0',
  `UnderConstruction` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`RealEstateNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS FOR TABLE `Building`:
--   `RealEstateNo`
--       `RealEstate` -> `RealEstateNo`
--

-- --------------------------------------------------------

--
-- Table structure for table `CityFamagusta`
--

CREATE TABLE IF NOT EXISTS `CityFamagusta` (
  `CityName` varchar(15) NOT NULL DEFAULT 'Αμμόχωστος',
  `RegionCode` int(11) NOT NULL AUTO_INCREMENT,
  `RegionName` varchar(25) NOT NULL,
  `NumOfListings` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`RegionCode`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=98 ;

-- --------------------------------------------------------

--
-- Table structure for table `CityLarnaca`
--

CREATE TABLE IF NOT EXISTS `CityLarnaca` (
  `CityName` varchar(15) NOT NULL DEFAULT 'Λάρνακα',
  `RegionCode` int(11) NOT NULL AUTO_INCREMENT,
  `RegionName` varchar(25) NOT NULL,
  `NumOfListings` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`RegionCode`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

-- --------------------------------------------------------

--
-- Table structure for table `CityLimassol`
--

CREATE TABLE IF NOT EXISTS `CityLimassol` (
  `CityName` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT 'Limassol',
  `RegionCode` int(11) NOT NULL AUTO_INCREMENT,
  `RegionName` varchar(25) COLLATE utf8_bin NOT NULL,
  `NumOfListings` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`RegionCode`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=113 ;

-- --------------------------------------------------------

--
-- Table structure for table `CityNicosia`
--

CREATE TABLE IF NOT EXISTS `CityNicosia` (
  `CityName` varchar(15) NOT NULL DEFAULT 'Nicosia',
  `RegionCode` int(11) NOT NULL AUTO_INCREMENT,
  `RegionName` varchar(25) NOT NULL,
  `NumOfListings` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`RegionCode`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=171 ;

-- --------------------------------------------------------

--
-- Table structure for table `CityPafos`
--

CREATE TABLE IF NOT EXISTS `CityPafos` (
  `CityName` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT 'Pafos',
  `RegionCode` int(4) NOT NULL,
  `RegionName` varchar(25) COLLATE utf8_bin NOT NULL,
  `NumOfListings` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `CommunicationMessage`
--

CREATE TABLE IF NOT EXISTS `CommunicationMessage` (
  `MessageNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) COLLATE utf8_bin NOT NULL,
  `Email` varchar(255) COLLATE utf8_bin NOT NULL,
  `PhoneNumber` bigint(20) NOT NULL,
  `Message` varchar(1500) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`MessageNo`),
  UNIQUE KEY `MessageNo` (`MessageNo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `Contact`
--

CREATE TABLE IF NOT EXISTS `Contact` (
  `ContactNo` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Surname` varchar(30) NOT NULL,
  `MobilePhone` bigint(20) NOT NULL,
  `Phone` bigint(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Profession` varchar(35) NOT NULL,
  `ANumber` varchar(10) NOT NULL COMMENT 'Address',
  `AStreet` varchar(50) NOT NULL COMMENT 'Address',
  `ACity` varchar(50) NOT NULL COMMENT 'Address',
  `AArea` varchar(50) NOT NULL COMMENT 'Address',
  `ACountry` varchar(50) NOT NULL COMMENT 'Address',
  `APostalCode` varchar(10) NOT NULL COMMENT 'Address',
  PRIMARY KEY (`ContactNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `File`
--

CREATE TABLE IF NOT EXISTS `File` (
  `FileNo` int(11) NOT NULL AUTO_INCREMENT,
  `RealEstateNo` int(11) NOT NULL,
  `HyperLink` varchar(350) COLLATE utf8_bin NOT NULL,
  `Name` tinyint(30) NOT NULL,
  `Description` varchar(300) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`FileNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- RELATIONS FOR TABLE `File`:
--   `RealEstateNo`
--       `RealEstate` -> `RealEstateNo`
--

-- --------------------------------------------------------

--
-- Table structure for table `Land`
--

CREATE TABLE IF NOT EXISTS `Land` (
  `RealEstateNo` int(11) NOT NULL,
  `LandType` enum('Άλλο','Έκταση','Κτήμα','Οικόπεδο','Οικιστικό οικόπεδο','Βιομηχανικό οικόπεδο','Επαγγελματικό οικόπεδο') NOT NULL DEFAULT 'Άλλο',
  `BuildIn` tinyint(1) NOT NULL DEFAULT '0',
  `TMLand` double NOT NULL,
  `TMBuilding` double NOT NULL,
  `SD` double NOT NULL,
  `SK` double NOT NULL,
  `Builded` double NOT NULL,
  `NotBuilded` double NOT NULL,
  `Front` double NOT NULL,
  `Depth` double NOT NULL,
  `CityPlan` enum('Άλλο','Εντός σχεδίου','Εκτός σχεδίου','Εντός οικισμού','Εκτός οικισμού') NOT NULL DEFAULT 'Άλλο',
  `AOT` varchar(50) NOT NULL,
  `InvestmentField` tinyint(1) NOT NULL DEFAULT '0',
  `NumOfPlots` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`RealEstateNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `Land`:
--   `RealEstateNo`
--       `RealEstate` -> `RealEstateNo`
--

-- --------------------------------------------------------

--
-- Table structure for table `LDetails`
--

CREATE TABLE IF NOT EXISTS `LDetails` (
  `RealEstateNo` int(11) NOT NULL,
  `DetailNo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `LDetails`:
--   `DetailNo`
--       `LDetailsChoices` -> `DetailNo`
--   `RealEstateNo`
--       `Land` -> `RealEstateNo`
--

-- --------------------------------------------------------

--
-- Table structure for table `LDetailsChoices`
--

CREATE TABLE IF NOT EXISTS `LDetailsChoices` (
  `DetailNo` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(35) NOT NULL,
  PRIMARY KEY (`DetailNo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `LUse`
--

CREATE TABLE IF NOT EXISTS `LUse` (
  `RealEstateNo` int(11) NOT NULL,
  `UseNo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `LUse`:
--   `RealEstateNo`
--       `Land` -> `RealEstateNo`
--   `UseNo`
--       `LUseChoices` -> `UseNo`
--

-- --------------------------------------------------------

--
-- Table structure for table `LUseChoices`
--

CREATE TABLE IF NOT EXISTS `LUseChoices` (
  `UseNo` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(35) NOT NULL,
  PRIMARY KEY (`UseNo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `Office`
--

CREATE TABLE IF NOT EXISTS `Office` (
  `RealEstateNo` int(11) NOT NULL,
  `OfficeType` enum('Άλλο','Επαγγελματικός χώρος','Αποθήκη','Αίθουσα','Κτήριο','Κατάστημα','Γραφεία','Ιατρεία','Βιομηχανικός χώρος','Γυμναστήριο','Φροντιστήριο','Εκθεσιακός χώρος') NOT NULL DEFAULT 'Επαγγελματικός χώρος',
  `Investment` tinyint(1) NOT NULL DEFAULT '0',
  `NumOfBasements` smallint(6) NOT NULL DEFAULT '0',
  `NumOfFloors` int(11) NOT NULL DEFAULT '0',
  `SurfaceArea` double NOT NULL DEFAULT '0',
  `NumOfSegments` int(11) NOT NULL DEFAULT '0',
  `StoreFrontArea` double NOT NULL DEFAULT '0',
  `GroundFloorArea` double NOT NULL DEFAULT '0',
  `LoftArea` double NOT NULL DEFAULT '0',
  `BasementArea` double NOT NULL DEFAULT '0',
  `AirPrice` double NOT NULL DEFAULT '0',
  `EquipmentIncluded` tinyint(1) NOT NULL DEFAULT '0',
  `AnnualRent` double NOT NULL DEFAULT '0',
  `AnnualGrossReturn` double NOT NULL DEFAULT '0',
  `AnnualNetReturn` double NOT NULL DEFAULT '0',
  `AnnualExpenses` double NOT NULL DEFAULT '0',
  `AnnualProduction` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`RealEstateNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `Office`:
--   `RealEstateNo`
--       `Building` -> `RealEstateNo`
--

-- --------------------------------------------------------

--
-- Table structure for table `OfficeTeenant`
--

CREATE TABLE IF NOT EXISTS `OfficeTeenant` (
  `RealEstateNo` int(11) NOT NULL,
  `ContactID` int(11) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `OfficeTeenant`:
--   `ContactID`
--       `Contact` -> `ContactNo`
--   `RealEstateNo`
--       `Office` -> `RealEstateNo`
--

-- --------------------------------------------------------

--
-- Table structure for table `RealEstate`
--

CREATE TABLE IF NOT EXISTS `RealEstate` (
  `RealEstateNo` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `AStreetNo` varchar(5) COLLATE utf8_bin DEFAULT NULL COMMENT 'Basic Info',
  `AStreet` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT 'Basic Info',
  `ACity` enum('Λευκωσία','Λάρνακα','Λεμεσός','Πάφος','Αμμόχωστος') COLLATE utf8_bin DEFAULT 'Λευκωσία' COMMENT 'Basic Info',
  `ARegionCode` int(11) NOT NULL COMMENT 'Address',
  `ACountry` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT 'Cyprus' COMMENT 'Basic Info',
  `APostalCode` int(10) DEFAULT NULL COMMENT 'Basic Info',
  `RegistrationTitleNo` int(11) NOT NULL DEFAULT '0' COMMENT 'Common Info',
  `PieceNo` int(11) NOT NULL DEFAULT '0' COMMENT 'Common Info',
  `FolderNo` int(11) NOT NULL DEFAULT '0' COMMENT 'Common Info',
  `ArithmosFilSxed` int(11) NOT NULL DEFAULT '0' COMMENT 'Common Info',
  `ArithmosAdOik` int(11) NOT NULL DEFAULT '0' COMMENT 'Common Info',
  `LegalControl` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Common Info',
  `InitialPrice` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Common Info',
  `EstimatedPrice` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Common Info',
  `MortgageLoan` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Common Info',
  `ObjectiveValue` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Common Info',
  `FinalPrice` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Common Info',
  `Corner` tinyint(1) NOT NULL DEFAULT '0',
  `Zone` varchar(150) COLLATE utf8_bin NOT NULL,
  `AvailableFrom` date NOT NULL,
  `DateRegistered` date NOT NULL,
  `RegistrationPurpose` enum('Πώληση','Ενοικίαση','Αντιπαροχή','Επένδυση') COLLATE utf8_bin NOT NULL DEFAULT 'Πώληση',
  `Price` double NOT NULL DEFAULT '0',
  `Currency` enum('EUR','GBP','RUS','USD','Other') COLLATE utf8_bin NOT NULL DEFAULT 'EUR',
  `PricePerTM` double NOT NULL,
  `AreaTM` double NOT NULL DEFAULT '0',
  `TM` double NOT NULL,
  `VAT` double NOT NULL,
  `ShortDescription` varchar(300) COLLATE utf8_bin NOT NULL,
  `Description` varchar(500) COLLATE utf8_bin NOT NULL,
  `AboutRenting` varchar(100) COLLATE utf8_bin NOT NULL,
  `RecommendedBy` int(10) NOT NULL COMMENT 'ContactNo',
  `Rating` varchar(300) COLLATE utf8_bin NOT NULL,
  `RegistrationTitle` tinyint(1) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL,
  `OwnerRating` varchar(300) COLLATE utf8_bin NOT NULL,
  `AgentRating` varchar(300) COLLATE utf8_bin NOT NULL,
  `OrderCode` varchar(100) COLLATE utf8_bin NOT NULL,
  `TypeOrder` varchar(100) COLLATE utf8_bin NOT NULL,
  `Exclusive` tinyint(1) NOT NULL DEFAULT '0',
  `OrderStart` date NOT NULL,
  `OrderStop` date NOT NULL,
  `Category` enum('Γη','Κατοικία','Επαγγελματικός χώρος','Ξενοδοχείο') COLLATE utf8_bin NOT NULL DEFAULT 'Κατοικία',
  `Notes` varchar(500) COLLATE utf8_bin NOT NULL,
  `NotifyColleague` tinyint(1) NOT NULL DEFAULT '0',
  `AgentUsername` varchar(50) COLLATE utf8_bin NOT NULL,
  `RealEstateStatus` varchar(100) COLLATE utf8_bin NOT NULL,
  `AgentRewardPercentage` double NOT NULL DEFAULT '0',
  `AgentReward` double NOT NULL DEFAULT '0',
  `ViewAddress` varchar(300) COLLATE utf8_bin NOT NULL,
  `TransferCost` double NOT NULL DEFAULT '0',
  `TransferVAT` double NOT NULL DEFAULT '0',
  `ConsiderationExchange` tinyint(1) NOT NULL DEFAULT '0',
  `REState` enum('Published','Unpublished','To be published') COLLATE utf8_bin DEFAULT 'To be published',
  PRIMARY KEY (`RealEstateNo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=15 ;

--
-- RELATIONS FOR TABLE `RealEstate`:
--   `AgentUsername`
--       `UserExtended` -> `Username`
--   `OwnerID`
--       `Contact` -> `ContactNo`
--

-- --------------------------------------------------------

--
-- Table structure for table `REAppearance`
--

CREATE TABLE IF NOT EXISTS `REAppearance` (
  `RealEstateNo` int(11) NOT NULL,
  `AppearanceNo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `REAppearance`:
--   `AppearanceNo`
--       `REAppearanceChoices` -> `AppearanceNo`
--   `RealEstateNo`
--       `RealEstate` -> `RealEstateNo`
--

-- --------------------------------------------------------

--
-- Table structure for table `REAppearanceChoices`
--

CREATE TABLE IF NOT EXISTS `REAppearanceChoices` (
  `AppearanceNo` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(35) NOT NULL,
  PRIMARY KEY (`AppearanceNo`),
  UNIQUE KEY `Description` (`Description`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `Residence`
--

CREATE TABLE IF NOT EXISTS `Residence` (
  `RealEstateNo` int(11) NOT NULL,
  `ResidenceType` enum('Άλλο','Ανεξάρτητη κατοικία','Μεζονέτα','Διαμέρισμα','Ρετιρέ') NOT NULL DEFAULT 'Ανεξάρτητη κατοικία',
  `TotalBedrooms` int(11) NOT NULL DEFAULT '0',
  `MasterBedroom` int(11) NOT NULL DEFAULT '0',
  `Kitchen` int(11) NOT NULL DEFAULT '0',
  `Bathrooms` int(11) NOT NULL DEFAULT '0',
  `LivingRooms` int(11) NOT NULL DEFAULT '0',
  `BalconyArea` double NOT NULL DEFAULT '0',
  `RooftopArea` int(11) NOT NULL DEFAULT '0',
  `Furnished` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`RealEstateNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `Residence`:
--   `RealEstateNo`
--       `Building` -> `RealEstateNo`
--

-- --------------------------------------------------------

--
-- Table structure for table `REView`
--

CREATE TABLE IF NOT EXISTS `REView` (
  `RealEstateNo` int(11) NOT NULL,
  `ViewNo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `REView`:
--   `RealEstateNo`
--       `RealEstate` -> `RealEstateNo`
--   `ViewNo`
--       `REViewChoices` -> `ViewNo`
--

-- --------------------------------------------------------

--
-- Table structure for table `REViewChoices`
--

CREATE TABLE IF NOT EXISTS `REViewChoices` (
  `ViewNo` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(35) NOT NULL,
  PRIMARY KEY (`ViewNo`),
  UNIQUE KEY `Description` (`Description`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `UserExtended`
--

CREATE TABLE IF NOT EXISTS `UserExtended` (
  `Username` varchar(50) COLLATE utf8_bin NOT NULL COMMENT 'Foreign Key -Inherits from SimpleEmployee',
  `ID` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `SSN` int(10) unsigned DEFAULT NULL COMMENT 'Social Secutiry Number',
  `PrivatePhone` bigint(20) NOT NULL DEFAULT '0',
  `WorkPhone` bigint(20) DEFAULT '0',
  `Profession` varchar(35) COLLATE utf8_bin DEFAULT NULL,
  `ANumber` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT 'Address info',
  `AStreet` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'Address info',
  `ACity` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'Address info',
  `AArea` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'Address info',
  `ACountry` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'Address info',
  `APostalCode` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT 'Address info',
  `Salary` decimal(10,2) DEFAULT NULL,
  `Notes` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`Username`),
  UNIQUE KEY `PrivatePhone` (`PrivatePhone`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `Username` (`Username`,`SSN`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS FOR TABLE `UserExtended`:
--   `Username`
--       `UserSimple` -> `Username`
--

-- --------------------------------------------------------

--
-- Table structure for table `UserSimple`
--

CREATE TABLE IF NOT EXISTS `UserSimple` (
  `Username` varchar(50) COLLATE utf8_bin NOT NULL,
  `Password` varchar(50) COLLATE utf8_bin NOT NULL,
  `Name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Surname` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Email` varchar(100) COLLATE utf8_bin NOT NULL,
  `UserType` enum('Simple User','External Agent','Internal Agent','Admin') COLLATE utf8_bin NOT NULL DEFAULT 'Simple User',
  `UserStatus` enum('Active User','Inactive User','Not Specified') COLLATE utf8_bin NOT NULL DEFAULT 'Not Specified',
  `RegistrationDate` date NOT NULL,
  `LastLoggedin` date NOT NULL,
  `LoginCount` smallint(5) unsigned NOT NULL DEFAULT '1',
  `Photo` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`Username`),
  KEY `Status` (`UserStatus`),
  FULLTEXT KEY `Username` (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
