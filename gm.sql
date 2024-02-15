-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 28, 2022 at 09:54 PM
-- Server version: 10.3.29-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hc4samp77`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 2),
(3, '2017_01_28_073016_create_cache_table', 2),
(4, '2017_02_04_124102_panel_accounts', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nephrite_users`
--

CREATE TABLE IF NOT EXISTS `nephrite_users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `password` varchar(50) NOT NULL,
  `Level` int(3) NOT NULL DEFAULT 0,
  `Admin` int(2) NOT NULL DEFAULT 0,
  `Helper` int(2) NOT NULL DEFAULT 0,
  `IP` varchar(20) NOT NULL,
  `Premium` int(2) NOT NULL DEFAULT 0,
  `Beta` int(2) NOT NULL DEFAULT 0,
  `Support` int(3) NOT NULL DEFAULT 0,
  `ConnectedTime` float NOT NULL DEFAULT 0,
  `Registered` int(2) NOT NULL DEFAULT 0,
  `Sex` int(2) NOT NULL DEFAULT 0,
  `Age` int(3) NOT NULL DEFAULT 0,
  `Origin` int(2) NOT NULL DEFAULT 1,
  `Muted` int(2) NOT NULL DEFAULT 0,
  `MuteTime` int(11) NOT NULL DEFAULT 0,
  `Respect` int(11) NOT NULL DEFAULT 0,
  `Money` int(11) NOT NULL DEFAULT 0,
  `Bank` int(11) NOT NULL DEFAULT 0,
  `Crimes` int(11) NOT NULL DEFAULT 0,
  `Kills` int(11) NOT NULL DEFAULT 0,
  `Deaths` int(11) NOT NULL DEFAULT 0,
  `Arrested` int(11) NOT NULL DEFAULT 0,
  `WantedDeaths` int(11) NOT NULL DEFAULT 0,
  `Phonebook` int(2) NOT NULL DEFAULT 0,
  `WantedLevel` int(11) NOT NULL DEFAULT 0,
  `Fishes` int(3) NOT NULL DEFAULT 0,
  `Job` int(3) NOT NULL DEFAULT 0,
  `Paycheck` int(11) NOT NULL DEFAULT 0,
  `HeadValue` int(11) NOT NULL DEFAULT 0,
  `Jailed` int(2) NOT NULL DEFAULT 0,
  `JailTime` int(11) NOT NULL DEFAULT 0,
  `dm` int(3) NOT NULL DEFAULT 0,
  `dmp` int(3) NOT NULL DEFAULT 0,
  `Materials` int(11) NOT NULL DEFAULT 0,
  `Drugs` int(11) NOT NULL DEFAULT 0,
  `Leader` int(3) NOT NULL DEFAULT 0,
  `Member` int(3) NOT NULL DEFAULT 0,
  `Rank` int(2) NOT NULL DEFAULT 0,
  `FWarn` int(2) NOT NULL DEFAULT 0,
  `FPunish` int(4) NOT NULL DEFAULT 0,
  `Acceptpoints` int(2) NOT NULL DEFAULT 0,
  `pHealth` float NOT NULL,
  `Inter` int(3) NOT NULL DEFAULT 0,
  `Local` int(11) NOT NULL DEFAULT 0,
  `Team` int(3) NOT NULL DEFAULT 0,
  `Model` int(11) NOT NULL,
  `PhoneNr` int(5) NOT NULL DEFAULT 0,
  `PhoneCredits` int(4) NOT NULL DEFAULT 0,
  `House` int(11) NOT NULL DEFAULT 255,
  `Bizz` int(11) NOT NULL DEFAULT 0,
  `Pos_x` float NOT NULL,
  `Pos_y` float NOT NULL,
  `Pos_z` float NOT NULL,
  `Rob` int(11) NOT NULL DEFAULT 0,
  `GunLicSuspend` int(3) NOT NULL DEFAULT 0,
  `CarLicSuspend` int(3) NOT NULL DEFAULT 0,
  `CarLicT` int(11) NOT NULL DEFAULT 0,
  `CarLic` int(2) NOT NULL DEFAULT 0,
  `FlyLicT` int(11) NOT NULL DEFAULT 0,
  `FlyLic` int(2) NOT NULL DEFAULT 0,
  `BoatLicT` int(11) NOT NULL DEFAULT 0,
  `BoatLic` int(2) NOT NULL DEFAULT 0,
  `FishLicT` int(11) NOT NULL DEFAULT 0,
  `FishLic` int(2) NOT NULL DEFAULT 0,
  `GunLicT` int(11) NOT NULL DEFAULT 0,
  `GunLic` int(2) NOT NULL DEFAULT 0,
  `PayDay` int(20) NOT NULL DEFAULT 0,
  `PayDayHad` int(20) NOT NULL DEFAULT 0,
  `Tutorial` int(2) NOT NULL DEFAULT 0,
  `Warnings` int(2) NOT NULL DEFAULT 0,
  `Rented` int(111) NOT NULL DEFAULT 0,
  `Fuel` int(11) NOT NULL DEFAULT 0,
  `WTalkie` int(2) NOT NULL DEFAULT 0,
  `Tow` int(20) NOT NULL DEFAULT 0,
  `Email` varchar(50) NOT NULL DEFAULT 'email@yahoo.com',
  `RegisterDate` varchar(50) NOT NULL DEFAULT '00-00-0000 00:00:00',
  `lastOn` varchar(50) NOT NULL DEFAULT '00-00-0000 00:00:00',
  `Victim` varchar(64) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 0,
  `HitT` int(20) NOT NULL DEFAULT 0,
  `Phone` int(11) NOT NULL DEFAULT 0,
  `Carkey` int(11) NOT NULL DEFAULT 0,
  `motokey` int(11) NOT NULL DEFAULT 0,
  `helikey` int(11) NOT NULL DEFAULT 0,
  `prcarkey` int(11) NOT NULL DEFAULT 0,
  `Accused` varchar(64) NOT NULL DEFAULT '********',
  `Crime1` varchar(184) NOT NULL DEFAULT 'Fara',
  `Crime2` varchar(184) NOT NULL DEFAULT 'Fara',
  `Crime3` varchar(184) NOT NULL DEFAULT 'Fara',
  `Fakea` int(11) NOT NULL DEFAULT 0,
  `ALeader` int(11) NOT NULL DEFAULT 0,
  `HPoints` int(11) NOT NULL DEFAULT 0,
  `Language` int(2) NOT NULL DEFAULT 0,
  `rpgon` int(11) NOT NULL DEFAULT 0,
  `PremiumPoints` int(11) NOT NULL DEFAULT 0,
  `FWorks` int(11) NOT NULL DEFAULT 0,
  `prcarkey2` int(11) NOT NULL DEFAULT 0,
  `pluscarkey` int(11) NOT NULL DEFAULT 0,
  `pluscarkey2` int(11) NOT NULL DEFAULT 0,
  `pluscarkey3` int(11) NOT NULL DEFAULT 0,
  `pluscarkey4` int(11) NOT NULL DEFAULT 0,
  `pluscarkey5` int(11) NOT NULL DEFAULT 0,
  `pluscarkey6` int(11) NOT NULL DEFAULT 0,
  `PlusSlot1` int(11) NOT NULL DEFAULT 0,
  `PlusSlot2` int(11) NOT NULL DEFAULT 0,
  `PlusSlot3` int(11) NOT NULL DEFAULT 0,
  `PlusSlot4` int(11) NOT NULL DEFAULT 0,
  `PlusSlot5` int(11) NOT NULL DEFAULT 0,
  `PlusSlot6` int(11) NOT NULL DEFAULT 0,
  `VirtualPD` int(11) NOT NULL DEFAULT 0,
  `Glasses` int(11) NOT NULL DEFAULT 0,
  `Hats` int(11) NOT NULL DEFAULT 0,
  `GiftBoxTime` int(11) NOT NULL DEFAULT 0,
  `SpawnChange` int(11) NOT NULL DEFAULT 0,
  `RobSkill` int(11) NOT NULL DEFAULT 1,
  `RobTimes` int(11) NOT NULL DEFAULT 0,
  `RobRem` int(11) NOT NULL DEFAULT 26,
  `FishSkill` int(11) NOT NULL DEFAULT 1,
  `FishTimes` int(11) NOT NULL DEFAULT 0,
  `FishRem` int(11) NOT NULL DEFAULT 26,
  `TruckSkill` int(11) NOT NULL DEFAULT 1,
  `TruckTimes` int(11) NOT NULL DEFAULT 0,
  `TruckRem` int(11) NOT NULL DEFAULT 26,
  `FarmSkill` int(11) NOT NULL DEFAULT 1,
  `FarmTimes` int(11) NOT NULL DEFAULT 0,
  `FarmRem` int(11) NOT NULL DEFAULT 26,
  `PizzaSkill` int(2) NOT NULL DEFAULT 1,
  `PizzaRem` int(5) NOT NULL DEFAULT 26,
  `PizzaTimes` int(11) NOT NULL DEFAULT 0,
  `ArmsSkill` int(2) NOT NULL DEFAULT 1,
  `ArmsRem` int(5) NOT NULL DEFAULT 26,
  `ArmsTimes` int(11) NOT NULL DEFAULT 0,
  `BusSkill` int(2) NOT NULL DEFAULT 1,
  `BusRem` int(5) NOT NULL DEFAULT 26,
  `BusTimes` int(11) NOT NULL DEFAULT 0,
  `Gifti` int(11) NOT NULL,
  `FactionTime` int(11) NOT NULL,
  `CreditsF` int(11) NOT NULL,
  `NMuted` int(11) NOT NULL DEFAULT 0,
  `HelpedPlayers` int(11) NOT NULL DEFAULT 0,
  `Commands` int(11) NOT NULL DEFAULT 0,
  `HiddenColor` int(11) NOT NULL DEFAULT 0,
  `GiftTime` int(11) NOT NULL DEFAULT 0,
  `PhoneBlock` int(11) NOT NULL DEFAULT 0,
  `Host` int(11) NOT NULL DEFAULT 0,
  `FightStyle` int(11) NOT NULL DEFAULT 0,
  `HUD1` int(11) NOT NULL DEFAULT 0,
  `HUD2` int(11) NOT NULL DEFAULT 0,
  `HUD3` int(11) NOT NULL DEFAULT 0,
  `Clan` int(4) NOT NULL DEFAULT 0,
  `CRank` int(2) NOT NULL DEFAULT 0,
  `ClanTag` int(2) NOT NULL DEFAULT 0,
  `ClanTime` int(11) NOT NULL DEFAULT 0,
  `ClanJoin` varchar(64) NOT NULL DEFAULT '0',
  `FactionJoin` varchar(64) NOT NULL DEFAULT '0',
  `ClanWarns` int(2) NOT NULL DEFAULT 0,
  `OnlineToday` int(2) NOT NULL DEFAULT 0,
  `OnlineThisWeek` int(2) NOT NULL DEFAULT 0,
  `OnlineLastWeek` int(2) NOT NULL DEFAULT 0,
  `LastIP` varchar(20) NOT NULL DEFAULT '0',
  `GasCan` int(2) NOT NULL DEFAULT 0,
  `forum_acc` int(11) NOT NULL,
  `MaxCars` int(11) NOT NULL DEFAULT 2,
  `gpci` text NOT NULL,
  `gpcitemp` text NOT NULL,
  `BlockHours` int(11) NOT NULL DEFAULT 0,
  `Quest1` int(11) NOT NULL DEFAULT -1,
  `Quest2` int(11) NOT NULL DEFAULT -1,
  `Progress1` int(11) NOT NULL,
  `Progress2` int(11) NOT NULL,
  `QuestDay` int(11) NOT NULL,
  `BankLY` int(11) NOT NULL,
  `Runners` int(11) NOT NULL,
  `Arrests` int(11) NOT NULL,
  `Tickets` int(11) NOT NULL,
  `DConfiscate` int(11) NOT NULL,
  `DLonfiscate` int(11) NOT NULL,
  `MDeposit` int(11) NOT NULL,
  `DDeposit` int(11) NOT NULL,
  `WKills` int(11) NOT NULL,
  `WDeaths` int(11) NOT NULL,
  `Contracts` int(11) NOT NULL,
  `News` int(11) NOT NULL,
  `LGiven` int(11) NOT NULL,
  `TaxiPoint` int(11) NOT NULL,
  `PHeals` int(11) NOT NULL,
  `DepPoint` int(11) NOT NULL,
  `Live` int(11) NOT NULL,
  `PayDays` int(11) NOT NULL,
  `HelperAns` int(11) NOT NULL DEFAULT 0,
  `Color` int(11) NOT NULL,
  `Surf` varchar(64) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `QuarrySkill` int(11) NOT NULL DEFAULT 1,
  `QuarryRaces` int(11) NOT NULL,
  `NoApp` int(11) NOT NULL,
  `TimpZile` int(11) NOT NULL,
  `Drone` int(11) NOT NULL,
  `RMuted` int(11) NOT NULL,
  `MP3` int(11) NOT NULL,
  `Refferal` int(11) NOT NULL,
  `Youtuber` int(11) NOT NULL,
  `HelperWarns` int(11) NOT NULL,
  `YTChannel` text NOT NULL,
  `MaterialeLuate` int(11) NOT NULL,
  `FNC` int(11) NOT NULL,
  `PaintBallKills` int(11) NOT NULL,
  `PaintBallDeaths` int(11) NOT NULL,
  `FunctieAdmin` varchar(128) NOT NULL DEFAULT '(null)',
  `ReclamatiiInchise` int(11) NOT NULL,
  `AdminNote` varchar(512) NOT NULL DEFAULT '(null)',
  `Completed1` int(11) NOT NULL,
  `Completed2` int(11) NOT NULL,
  `RacePoints` int(11) NOT NULL,
  `RaceLocu1` int(11) NOT NULL,
  `RaceLocu2` int(11) NOT NULL,
  `RaceLocu3` int(11) NOT NULL,
  `Cases` int(11) NOT NULL,
  `Keys` int(11) NOT NULL,
  `OpenHours` int(11) NOT NULL,
  `Tokens` int(11) NOT NULL,
  `GarbageSkill` int(11) NOT NULL DEFAULT 1,
  `GarbageTimes` int(11) NOT NULL,
  `SecuritySkill` int(11) NOT NULL DEFAULT 1,
  `SecurityTimes` int(11) NOT NULL,
  `AirSkill` int(1) NOT NULL DEFAULT 1,
  `AirTimes` int(11) NOT NULL DEFAULT 0,
  `WTChannel` int(11) NOT NULL,
  `HUD4` int(11) NOT NULL,
  `JailLocation` int(11) NOT NULL,
  `s_progress` varchar(200) NOT NULL DEFAULT '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0',
  `TotalDonations` int(11) NOT NULL,
  `PayDayOption` int(11) NOT NULL DEFAULT 0,
  `LevelProgressOption` int(11) NOT NULL DEFAULT 1,
  `SkillsOption` int(11) NOT NULL DEFAULT 1,
  `CourierSkill` int(11) NOT NULL DEFAULT 1,
  `CourierTimes` int(11) NOT NULL,
  `laststaff` varchar(32) NOT NULL,
  `ADMute` int(11) NOT NULL,
  `MuscleReps` int(11) NOT NULL,
  `MuscleLevel` int(11) NOT NULL DEFAULT 1,
  `Quest3` int(11) NOT NULL,
  `Completed3` int(11) NOT NULL,
  `Progress3` int(11) NOT NULL,
  `panel_suspend` int(11) NOT NULL,
  `PrimesteBonus` int(11) NOT NULL,
  `RaportTime` int(11) NOT NULL,
  `AccountModerator` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `panel_suspend_reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `panel_accounts`
--

CREATE TABLE IF NOT EXISTS `panel_accounts` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `playerEMail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `playerPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `playerStatus` smallint(6) NOT NULL,
  `playerBanned` mediumint(9) NOT NULL,
  `playerSkin` mediumint(9) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `panel_actions`
--

CREATE TABLE IF NOT EXISTS `panel_actions` (
  `actKey` int(11) NOT NULL,
  `actType` int(11) NOT NULL DEFAULT 0,
  `actStatus` int(11) NOT NULL DEFAULT 0,
  `actValue` int(11) NOT NULL DEFAULT 0,
  `actComplaint` int(11) NOT NULL DEFAULT 0,
  `actText` text NOT NULL,
  `actReason` varchar(128) NOT NULL,
  `actAdminName` varchar(16) NOT NULL,
  `actAdminID` int(11) NOT NULL,
  `actAdminIP` varchar(32) DEFAULT NULL,
  `actPlayerName` varchar(16) NOT NULL,
  `actPlayerID` int(11) NOT NULL,
  `actDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `panel_applications`
--

CREATE TABLE IF NOT EXISTS `panel_applications` (
  `appKey` int(11) NOT NULL,
  `appPlayerID` int(11) NOT NULL,
  `appFactionID` int(11) NOT NULL,
  `appPlayerName` varchar(32) NOT NULL,
  `appDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `appStatus` int(11) NOT NULL DEFAULT 0,
  `appRaspuns` varchar(128) NOT NULL DEFAULT 'Waiting for leader response.',
  `appRaspunsTime` varchar(64) NOT NULL DEFAULT 'N/A',
  `appNote` varchar(128) NOT NULL DEFAULT 'N/A',
  `appQ1` varchar(256) NOT NULL,
  `appQ2` varchar(256) NOT NULL,
  `appQ3` varchar(256) NOT NULL,
  `appQ4` varchar(256) NOT NULL,
  `appQ5` varchar(256) NOT NULL,
  `appQ6` varchar(256) NOT NULL,
  `appQ7` varchar(256) NOT NULL,
  `appQ8` varchar(256) NOT NULL,
  `appQ9` varchar(256) NOT NULL,
  `appQ10` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `panel_blacklist`
--

CREATE TABLE IF NOT EXISTS `panel_blacklist` (
  `blackKey` int(11) NOT NULL,
  `blackIP` varchar(32) NOT NULL,
  `blackDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `panel_complaintcomments`
--

CREATE TABLE IF NOT EXISTS `panel_complaintcomments` (
  `commKey` int(11) NOT NULL,
  `commCID` int(11) NOT NULL,
  `commPlayer` int(11) NOT NULL,
  `commName` varchar(32) NOT NULL,
  `commText` text CHARACTER SET utf8 NOT NULL,
  `commDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `commSkin` smallint(6) NOT NULL DEFAULT 0,
  `commIP` varchar(32) DEFAULT NULL,
  `commEdited` tinyint(1) NOT NULL DEFAULT 0,
  `commEditor` varchar(32) NOT NULL DEFAULT 'N/A',
  `commDeleted` int(11) DEFAULT 0,
  `commDeletedAdmin` text DEFAULT NULL,
  `commDeletedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `panel_complaints`
--

CREATE TABLE IF NOT EXISTS `panel_complaints` (
  `complaintKey` int(11) NOT NULL,
  `complaintCreator` int(11) NOT NULL DEFAULT 0,
  `complaintIP` varchar(32) DEFAULT NULL,
  `complaintAgainst` int(11) NOT NULL DEFAULT 0,
  `complaintFaction` int(11) NOT NULL DEFAULT 0,
  `complaintViews` int(11) NOT NULL DEFAULT 0,
  `complaintStatus` int(11) NOT NULL DEFAULT 0,
  `complaintTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `complaintMotiv` tinyint(2) NOT NULL,
  `complaintType` int(11) NOT NULL DEFAULT 0,
  `complaintDetails` varchar(1024) CHARACTER SET utf8 NOT NULL,
  `complaintDovezi` varchar(256) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `panel_faction_reports`
--

CREATE TABLE IF NOT EXISTS `panel_faction_reports` (
  `repKey` int(11) NOT NULL,
  `repFaction` int(11) NOT NULL,
  `repDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `repPlayerID` int(11) NOT NULL,
  `repPlayerName` varchar(32) NOT NULL,
  `repContent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `panel_graphs`
--

CREATE TABLE IF NOT EXISTS `panel_graphs` (
  `graphKey` int(11) NOT NULL,
  `graphPlayers` int(11) NOT NULL DEFAULT 0,
  `graphDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `panel_logs_actions`
--

CREATE TABLE IF NOT EXISTS `panel_logs_actions` (
  `logKey` int(11) NOT NULL,
  `logType` int(11) NOT NULL DEFAULT 0,
  `logPlayerID` int(11) NOT NULL,
  `logPlayerName` varchar(32) NOT NULL,
  `logText` varchar(256) NOT NULL,
  `logAddress` text NOT NULL,
  `logDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `panel_shop`
--

CREATE TABLE IF NOT EXISTS `panel_shop` (
  `itemKey` int(11) NOT NULL,
  `itemName` text NOT NULL,
  `itemValue` int(11) NOT NULL DEFAULT 0,
  `itemType` int(11) NOT NULL DEFAULT 0,
  `itemText` text NOT NULL,
  `itemImage` text DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='Tabela pentru Premium Shop.';

--
-- Dumping data for table `panel_shop`
--

INSERT INTO `panel_shop` (`itemKey`, `itemName`, `itemValue`, `itemType`, `itemText`, `itemImage`) VALUES
(1, 'Cont Premium', 50, 0, '<li>payday cu 30% mai mare</li>\r\n<li>dobanda dubla de la banca</li>\r\n<li>poti detine maxim 4 masini personale (userii normali pot detine 2)</li>\r\n<li>posibilitatea de a spawna toate masinile personale simultan(/spawncars)</li>\r\n<li>poti sa-ti schimbi skin-urile din /crates oriunde</li>\r\n<li>acces la comanda /pcolor cu care iti poti schimba culoarea nick-ului in chat (<a href="http://i.imgur.com/6MnZp.png">click</a>)</li>\r\n<li>la /rob se pierd doar 8 puncte (userii normali pierd 10)</li>\r\n<li>acces optiunea /togw pentru dezactivare /w (alti playeri nu iti mai pot scrie pe /w)</li>\r\n<li>pe forum: titlul premium (nickname alb + icon)</li>\r\n<li>pe forum: iti poti seta o imagine de background la profil</li>', NULL),
(2, 'iPhone', 10, 0, '<li>telefonul din joc arata diferit de telefonul playerilor normali.</li>\r\n<li>numar de telefon din 4 cifre, la alegere. Ex: 5524.</li>\r\n<li>se poate folosi comanda /reply pentru a raspunde ultimului SMS primit.</li>\r\n<li>se pot dezactiva doar apelurile si sa primesti in continuare SMS-uri folosind /turn off calls.</li>\r\n<li>in chat apare scris iPhone, in loc de cellphone. Ex: * Sinner turns off his iPhone.</li>\r\n<li>optiunea /block [id] pentru a bloca temporar (pana la relog) sms-urile si apelurile unui player</li>\r\n<li><a href="/shop/iphone">Lista numere iPhone disponibile</a></li>', NULL),
(3, 'Schimbare nick', 15, 0, '<li>daca nu-ti place nick-ul pe care il ai, il poti schimba cu doar 15 puncte premium.</li>', NULL),
(4, 'Clear 20 FP', 10, 0, '<li>sterge 20 faction punish</li>', NULL),
(5, 'Clear 40 FP', 20, 0, '<li>sterge 40 faction punish</li>', NULL),
(6, 'Clear 60 FP', 30, 0, '<li>sterge 60 faction punish</li>', NULL),
(7, 'Clear /warns', 20, 0, '<li>sterge /warn-urile primite de la admini</li>', NULL),
(8, 'Hidden pentru masina', 20, 0, '<li>culorile hidden sunt culori mai speciale pentru masinile personale.</li>\r\n<li>poti aplica o culoare hidden pe masina doar cu puncte premium. <a href="http://wiki.sa-mp.com/wroot/images2/thumb/3/30/Ext_vcolours_2013.jpg/608px-Ext_vcolours_2013.jpg">click aici</a> pentru a vedea cum arata culorile hidden.</li>\r\n<li>poti vedea lista de culori hidden si in joc folosind comanda /colors</li>', NULL),
(9, 'Resetare KM si Vechime pentru un vehicul', 20, 0, '<li>KM parcursi de vehicul sunt setati la 0.</li>\r\n<li>vechimea vehiculului este setata la 0 zile.</li>', NULL),
(10, 'Frecventa walkie-talkie privata', 15, 0, '<li>poti avea o frecventa de walkie talkie privata formata din 3 cifre. vei putea pune parola frecventei si doar cei ce au parola pot accesa frecventa. poti schimba parola de cate ori vrei.</li>\r\n<li>un user poate detine mai multe frecvente private de walkie-talkie</li>\r\n<li>frecventele private raman pe cont, nu se pot transfera unui alt player</li>\r\n<li>pentru o lista cu frecventele detinute se poate folosi comanda /freq list</li>', NULL),
(11, 'Unban [ban temporar]', 50, 0, '<li>Cei ce au ban temporar pot cumpara unban direct din panel pentru 15 - 50 puncte premium (in functie de numarul de zile pana la expirarea banului)</li>\r\n<li>Pretul unbanului este calculat astfel: 10 puncte premium + 5 puncte premium / zi. Ex: un player banat pentru 3 zile va putea cumpara unban pentru 10 + 5 * 3 = 25 puncte premium.</li>', NULL),
(12, 'Unban [ban permanent]', 50, 0, '<li>playerii banati pentru inselatorii, spargeri de conturi, incercari de a vinde/cumpara conturi vor putea cumpara unban cu 50 puncte premium, dar vor avea banii setati pe 0 (inclusiv bunuri sterse de pe cont)</li>\r\n<li>playerii banati pentru cheat-uri ce pot fi detectate relativ usor (teleport hack, fly hack, speed hack) pot cumpara unban cu 50 puncte premium</li>\r\n<li>playerii banati pentru cheat-uri folosite pentru a trage mai bine sau pentru a castiga war-uri (aimbot, wall hack etc) nu vor fi debanati vreodata</li>\r\n<li>playerii banati pentru bug abuse nu vor fi debanati vreodata</li>', NULL),
(13, 'Clan', 100, 0, '<li>clanul iti aduce un subforum pe forumul crypted.ro, in categoria clanuri</li>\r\n<li>achizitionarea unui clan iti aduce un chat pentru clan (/c) si posibilitatea de a invita playeri in clan</li>\r\n<li>cei ce au clan pot adauga inca 4 moderatori pe forum direct din panel. moderatorii clanului se pot sterge tot din panel</li>\r\n<li>playerii ce intra intr-un clan pot atasa gratuit tag-ul clanului la nume.</li>\r\n<li>clanul are o valabilitate de 6 luni incepand cu ziua inregistrarii acestuia</li>', NULL),
(14, '+25 sloturi pentru clan', 25, 0, '<li>daca ai deja un clan inregistrat, poti adauga inca 25 sloturi clanului cu 25 puncte premium</li>\r\n<li>numarul maxim de sloturi pentru un clan este 100</li>', NULL),
(15, '5 x fireworks (artificii)', 1, 0, '<li>artificiile se pot folosi in joc cu comanda /firework</li>', NULL),
(16, 'Hotring Racer', 200, 1, '<li>achizitioneaza un Hotring Racer</li>', '/images/vehicles/Vehicle_494.jpg'),
(17, 'Sparrow', 200, 1, '<li>achizitioneaza un Sparrow</li>', '/images/vehicles/Vehicle_447.jpg'),
(18, 'Hotring Racer A/B', 200, 1, '<li>achizitioneaza un Hotring Racer A sau B</li>', '/images/vehicles/Vehicle_502.jpg'),
(19, 'Maverick', 250, 1, '<li>achizitioneaza un Maverick</li>', '/images/vehicles/Vehicle_487.jpg'),
(20, '+1 slot pentru masini', 20, 1, '<li>adauga 1 slot pentru masini personale</li>\r\n<li>acesta poate fi achizitionat din /v</li>', NULL),
(21, 'Vehicul VIP', 100, 1, '<li>acces la comanda /vipname ce permite adaugarea unui text pe vehicul</li>\r\n<li>acces la comanda /vipnamecolor ce permite schimbarea culorii textului de pe vehicul</li>\r\n<li>acces la comanda /vipwheels ce permite schimbarea rotilor</li>\r\n<li>acces la comanda /vipneon ce permite adaugarea neoanelor de diferite culori</li>\r\n<li>momentan doar vehiculele Infernus, Sultan si Bullet pot fi upgradate</li>', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `panel_ticketcomments`
--

CREATE TABLE IF NOT EXISTS `panel_ticketcomments` (
  `commKey` int(11) NOT NULL,
  `commTID` int(11) NOT NULL,
  `commPlayer` int(11) NOT NULL,
  `commSkin` int(11) NOT NULL DEFAULT 0,
  `commName` varchar(32) NOT NULL,
  `commText` varchar(512) CHARACTER SET utf8 NOT NULL,
  `commDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `commIP` varchar(32) DEFAULT NULL,
  `commDeleted` int(11) NOT NULL DEFAULT 0,
  `commDeletedAdmin` text DEFAULT NULL,
  `commDeletedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `panel_tickets`
--

CREATE TABLE IF NOT EXISTS `panel_tickets` (
  `ticketKey` int(11) NOT NULL,
  `ticketCreator` int(11) NOT NULL,
  `ticketTitle` varchar(128) NOT NULL,
  `ticketType` int(11) NOT NULL DEFAULT 0,
  `ticketViews` int(11) NOT NULL DEFAULT 0,
  `ticketBanID` int(11) NOT NULL,
  `ticketText` varchar(512) CHARACTER SET utf8 NOT NULL,
  `ticketStatus` int(11) NOT NULL DEFAULT 0,
  `ticketDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `ticketAddress` varchar(64) NOT NULL DEFAULT '127.0.0.1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `panel_unbans`
--

CREATE TABLE IF NOT EXISTS `panel_unbans` (
  `unbanKey` int(11) NOT NULL,
  `unbanText` text NOT NULL,
  `unbanCreator` int(11) NOT NULL,
  `unbanBanID` int(11) NOT NULL,
  `unbanDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `panel_updatecomments`
--

CREATE TABLE IF NOT EXISTS `panel_updatecomments` (
  `commKey` int(11) NOT NULL,
  `commUpdateKey` int(11) NOT NULL,
  `commPlayer` int(11) NOT NULL,
  `commName` varchar(32) NOT NULL,
  `commText` text CHARACTER SET utf8 NOT NULL,
  `commDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `commSkin` smallint(6) NOT NULL DEFAULT 0,
  `commIP` varchar(32) DEFAULT NULL,
  `commEdited` tinyint(1) NOT NULL DEFAULT 0,
  `commEditor` varchar(32) NOT NULL DEFAULT 'N/A',
  `commDeleted` int(11) DEFAULT 0,
  `commDeletedAdmin` text DEFAULT NULL,
  `commDeletedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `panel_updates`
--

CREATE TABLE IF NOT EXISTS `panel_updates` (
  `updateKey` int(11) NOT NULL,
  `updateAuthor` int(11) DEFAULT NULL,
  `updateTitle` text NOT NULL,
  `updateText` text CHARACTER SET utf8 NOT NULL,
  `updateType` int(11) DEFAULT 0,
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `server_numbers`
--

CREATE TABLE `server_numbers` (
  `playerid` int(11) NOT NULL DEFAULT 65535,
  `phone_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `server_accounts`
--

CREATE TABLE IF NOT EXISTS `server_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(256) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `password` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `playerSession` varchar(24) DEFAULT NULL,
  `email` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL DEFAULT 'changeme@gmail.com',
  `playerEMailConfirmed` tinyint(1) NOT NULL DEFAULT 0,
  `playerEMailToken` varchar(128) NOT NULL DEFAULT 'N/A',
  `playerEMailTimestamp` int(11) NOT NULL DEFAULT 0,
  `playerResetToken` text DEFAULT NULL,
  `playerResetTime` int(11) NOT NULL DEFAULT 0,
  `playerReferral` int(6) unsigned zerofill DEFAULT 000000 COMMENT 'Cica e unic.',
  `playerReferralKey` int(11) NOT NULL DEFAULT 0,
  `playerYoutuber` int(32) NOT NULL DEFAULT 0 COMMENT 'Hai nu zau.',
  `playerHeists` varchar(20) NOT NULL DEFAULT '1:0:0:0:0',
  `playerTags` varchar(32) NOT NULL DEFAULT '0:0:0:0:0',
  `playerHuds` varchar(32) NOT NULL DEFAULT '0:0:0',
  `playerAddress` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL DEFAULT '0.0.0.0',
  `playerSerial` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL DEFAULT 'N/A',
  `playerBlocked` tinyint(1) NOT NULL DEFAULT 0,
  `playerBlockedTime` int(11) NOT NULL DEFAULT 0,
  `playerPanelSuspend` int(11) NOT NULL DEFAULT 0,
  `playerPanelSuspendReason` varchar(128) NOT NULL DEFAULT 'N/A',
  `playerStatus` int(11) NOT NULL DEFAULT 1,
  `playerSpawnType` tinyint(4) NOT NULL DEFAULT 2,
  `playerBanned` int(11) NOT NULL DEFAULT 0,
  `playerFirstSpawn` int(11) NOT NULL DEFAULT 0,
  `playerSpawnChoose` int(5) NOT NULL DEFAULT 0,
  `playerConnected` tinyint(4) NOT NULL DEFAULT 0,
  `playerPlayTime` int(11) NOT NULL DEFAULT 0,
  `playerAFKTime` int(11) NOT NULL DEFAULT 0,
  `playerLastSession` int(11) NOT NULL DEFAULT 0,
  `playerGiftBoxTime` int(11) NOT NULL DEFAULT 0,
  `playerPayday` int(11) NOT NULL DEFAULT 0,
  `playerMail` smallint(6) NOT NULL DEFAULT 0,
  `playerForumUser` varchar(64) NOT NULL DEFAULT 'N/A',
  `playerSex` tinyint(4) NOT NULL DEFAULT 0,
  `playerAge` int(11) NOT NULL,
  `playerCity` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 LV / 0 LS',
  `playerPhone` tinyint(4) NOT NULL DEFAULT 0,
  `playerPhoneNumber` mediumint(9) NOT NULL DEFAULT 0,
  `playerPhoneCredit` int(11) NOT NULL DEFAULT 0,
  `playerPhoneBook` tinyint(4) NOT NULL DEFAULT 0,
  `playerWTalkie` int(11) NOT NULL DEFAULT 0,
  `playerSkin` smallint(6) NOT NULL DEFAULT 0,
  `playerHat` smallint(6) NOT NULL DEFAULT 0,
  `playerGlasses` smallint(6) NOT NULL DEFAULT 0,
  `playerHiddens` int(11) NOT NULL DEFAULT 0,
  `playerCrates` int(11) NOT NULL DEFAULT 0,
  `playerCrateSkins` varchar(50) NOT NULL DEFAULT '0:0:0:0:0:0:0:0:0:0',
  `playerCrateSkinAmount` varchar(50) NOT NULL DEFAULT '0:0:0:0:0:0:0:0:0:0',
  `playerPetID` int(11) NOT NULL DEFAULT 19078,
  `playerPet` int(11) NOT NULL DEFAULT 0,
  `playerPetStatus` int(11) NOT NULL DEFAULT 0,
  `playerPetLevel` int(11) NOT NULL DEFAULT 1,
  `playerPetPoints` int(11) NOT NULL DEFAULT 0,
  `playerPetName` varchar(32) NOT NULL DEFAULT 'B-Gaming',
  `playerPetType` varchar(25) NOT NULL DEFAULT '0:0:0:0:0',
  `playerPremium` tinyint(4) NOT NULL DEFAULT 0,
  `playerVIP` tinyint(4) NOT NULL DEFAULT 0,
  `playerPColor` tinyint(4) NOT NULL DEFAULT 0,
  `playerPremiumPoints` int(11) NOT NULL DEFAULT 0,
  `playerPPBought` int(11) NOT NULL DEFAULT 0,
  `playerPPSpend` int(11) NOT NULL DEFAULT 0,
  `playerRegisterDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `playerLastOnline` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `playerLevel` smallint(6) NOT NULL DEFAULT 1,
  `playerAdminLevel` tinyint(4) NOT NULL DEFAULT 0,
  `playerHelper` int(11) NOT NULL DEFAULT 0,
  `playerManager` int(11) NOT NULL DEFAULT 0,
  `playerHelperTokens` int(11) NOT NULL DEFAULT 0,
  `playerHelpedPlayers` int(11) NOT NULL DEFAULT 0,
  `playerAdminReports` int(11) NOT NULL DEFAULT 0,
  `playerWarnings` int(11) NOT NULL DEFAULT 0,
  `playerMoney` int(11) NOT NULL DEFAULT 10000,
  `playerBankMoney` int(11) NOT NULL DEFAULT 0,
  `playerPaintball` int(11) NOT NULL DEFAULT 0,
  `playerPaintballKills` int(11) NOT NULL DEFAULT 0,
  `playerPaintballDeaths` int(11) NOT NULL DEFAULT 0,
  `playerJob` tinyint(4) NOT NULL DEFAULT 0,
  `playerJobBoost` int(11) NOT NULL DEFAULT 0,
  `playerJobSkill` varchar(64) NOT NULL DEFAULT '0:0:0:0:0:0:0:0:0:0',
  `playerMaterials` int(11) NOT NULL DEFAULT 0,
  `playerDrugs` int(11) NOT NULL DEFAULT 0,
  `playerFireworks` int(11) NOT NULL DEFAULT 0,
  `playerClan` int(11) NOT NULL DEFAULT 0,
  `playerClanWarns` int(11) NOT NULL DEFAULT 0,
  `playerClanRank` int(11) NOT NULL DEFAULT 0,
  `playerClanJoined` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL DEFAULT 'N/A',
  `playerClanDays` int(11) NOT NULL DEFAULT 0,
  `playerClanTag` int(11) NOT NULL DEFAULT 0,
  `playerFaction` tinyint(4) NOT NULL DEFAULT 0,
  `playerFactionLeader` int(12) NOT NULL DEFAULT 0,
  `playerFactionRank` tinyint(6) NOT NULL DEFAULT 0,
  `playerFactionDays` int(11) NOT NULL DEFAULT 0,
  `playerFactionLW` int(11) NOT NULL DEFAULT 0,
  `playerFactionJoined` timestamp NULL DEFAULT NULL,
  `playerRunners` int(11) NOT NULL DEFAULT 0,
  `playerTickets` int(11) NOT NULL DEFAULT 0,
  `playerConfiscateDrugs` int(11) NOT NULL DEFAULT 0,
  `playerConfiscateLicenses` int(11) NOT NULL DEFAULT 0,
  `playerDeposited` int(11) NOT NULL DEFAULT 0,
  `playerOrders` int(11) NOT NULL DEFAULT 0,
  `playerGivenLicenses` int(11) NOT NULL DEFAULT 0,
  `playerPatientsHealed` int(11) NOT NULL DEFAULT 0,
  `playerContracts` int(11) NOT NULL DEFAULT 0,
  `playerNews` int(11) NOT NULL DEFAULT 0,
  `playerFreeNews` int(11) NOT NULL DEFAULT 0,
  `playerNewsSessions` int(11) NOT NULL DEFAULT 0,
  `playerLives` int(11) NOT NULL DEFAULT 0,
  `playerDepositedDrugs` int(11) NOT NULL DEFAULT 0,
  `playerDepositedMats` int(11) NOT NULL DEFAULT 0,
  `playerMaterialsUsed` int(11) NOT NULL DEFAULT 0,
  `playerWarKills` int(11) NOT NULL DEFAULT 0,
  `playerWarDeaths` int(11) NOT NULL DEFAULT 0,
  `playerFW` smallint(6) NOT NULL DEFAULT 0,
  `playerFP` smallint(6) NOT NULL DEFAULT 0,
  `playerRP` smallint(6) NOT NULL DEFAULT 1,
  `playerRobPoints` int(11) NOT NULL DEFAULT 0,
  `playerFreePoints` int(11) NOT NULL DEFAULT 0,
  `playerRobs` int(11) NOT NULL DEFAULT 0,
  `playerArrests` int(11) NOT NULL DEFAULT 0,
  `playerWanted` tinyint(6) NOT NULL DEFAULT 0,
  `playerWantedTime` smallint(6) NOT NULL DEFAULT 0,
  `playerCrimeReason` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL DEFAULT 'No Crime',
  `playerSlots` tinyint(4) NOT NULL DEFAULT 2,
  `playerHouse` int(11) NOT NULL DEFAULT 0,
  `playerRent` int(11) NOT NULL DEFAULT 0,
  `playerBusiness` int(11) NOT NULL DEFAULT 0,
  `playerCarLicense` smallint(6) NOT NULL DEFAULT 0,
  `playerGunLicense` smallint(6) NOT NULL DEFAULT 0,
  `playerFlyLicense` smallint(6) NOT NULL DEFAULT 0,
  `playerBoatLicense` smallint(6) NOT NULL DEFAULT 0,
  `playerMute` int(11) NOT NULL DEFAULT 0,
  `playerJail` int(11) NOT NULL DEFAULT 0,
  `playerGasCan` int(11) NOT NULL DEFAULT 0,
  `playerQuest` varchar(8) NOT NULL DEFAULT '0:0',
  `playerQuestValue` varchar(8) NOT NULL DEFAULT '0:0',
  `playerQuestProgress` varchar(8) NOT NULL DEFAULT '0:0',
  `playerQuestTime` int(11) NOT NULL DEFAULT 0,
  `playerQuestObjects` varchar(100) NOT NULL DEFAULT '0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0',
  `playerBonusMoney` int(11) NOT NULL DEFAULT 0,
  `playerBonusRP` int(11) NOT NULL DEFAULT 0,
  `playerCollectMoney` int(11) NOT NULL DEFAULT 0,
  `playerCollectRP` int(11) NOT NULL DEFAULT 0,
  `playerPIN` varchar(129) NOT NULL DEFAULT 'N/A',
  `playerPINStatus` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(256) NOT NULL DEFAULT 'N/A',
  `playerBonusTaken` int(12) NOT NULL DEFAULT 0,
  `playerOnceInPUBG` int(4) NOT NULL,
  `playerApartment` int(11) NOT NULL DEFAULT 0,
  `playerWalkie` int(11) NOT NULL DEFAULT 0,
  `playerWalkieStatus` int(11) NOT NULL DEFAULT 0,
  `playerTogs` varchar(32) NOT NULL DEFAULT '0:0:0:0:0:0:0:0:0',
  `playerAColor` tinyint(4) NOT NULL DEFAULT 0,
  `playerHColor` smallint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `server_accounts`
--

INSERT INTO `server_accounts` (`id`, `username`, `password`, `playerSession`, `email`, `playerEMailConfirmed`, `playerEMailToken`, `playerEMailTimestamp`, `playerResetToken`, `playerResetTime`, `playerReferral`, `playerReferralKey`, `playerYoutuber`, `playerHeists`, `playerTags`, `playerHuds`, `playerAddress`, `playerSerial`, `playerBlocked`, `playerBlockedTime`, `playerPanelSuspend`, `playerPanelSuspendReason`, `playerStatus`, `playerSpawnType`, `playerBanned`, `playerFirstSpawn`, `playerSpawnChoose`, `playerConnected`, `playerPlayTime`, `playerAFKTime`, `playerLastSession`, `playerGiftBoxTime`, `playerPayday`, `playerMail`, `playerForumUser`, `playerSex`, `playerAge`, `playerCity`, `playerPhone`, `playerPhoneNumber`, `playerPhoneCredit`, `playerPhoneBook`, `playerWTalkie`, `playerSkin`, `playerHat`, `playerGlasses`, `playerHiddens`, `playerCrates`, `playerCrateSkins`, `playerCrateSkinAmount`, `playerPetID`, `playerPet`, `playerPetStatus`, `playerPetLevel`, `playerPetPoints`, `playerPetName`, `playerPetType`, `playerPremium`, `playerVIP`, `playerPColor`, `playerPremiumPoints`, `playerPPBought`, `playerPPSpend`, `playerRegisterDate`, `playerLastOnline`, `playerLevel`, `playerAdminLevel`, `playerHelper`, `playerManager`, `playerHelperTokens`, `playerHelpedPlayers`, `playerAdminReports`, `playerWarnings`, `playerMoney`, `playerBankMoney`, `playerPaintball`, `playerPaintballKills`, `playerPaintballDeaths`, `playerJob`, `playerJobBoost`, `playerJobSkill`, `playerMaterials`, `playerDrugs`, `playerFireworks`, `playerClan`, `playerClanWarns`, `playerClanRank`, `playerClanJoined`, `playerClanDays`, `playerClanTag`, `playerFaction`, `playerFactionLeader`, `playerFactionRank`, `playerFactionDays`, `playerFactionLW`, `playerFactionJoined`, `playerRunners`, `playerTickets`, `playerConfiscateDrugs`, `playerConfiscateLicenses`, `playerDeposited`, `playerOrders`, `playerGivenLicenses`, `playerPatientsHealed`, `playerContracts`, `playerNews`, `playerFreeNews`, `playerNewsSessions`, `playerLives`, `playerDepositedDrugs`, `playerDepositedMats`, `playerMaterialsUsed`, `playerWarKills`, `playerWarDeaths`, `playerFW`, `playerFP`, `playerRP`, `playerRobPoints`, `playerFreePoints`, `playerRobs`, `playerArrests`, `playerWanted`, `playerWantedTime`, `playerCrimeReason`, `playerSlots`, `playerHouse`, `playerRent`, `playerBusiness`, `playerCarLicense`, `playerGunLicense`, `playerFlyLicense`, `playerBoatLicense`, `playerMute`, `playerJail`, `playerGasCan`, `playerQuest`, `playerQuestValue`, `playerQuestProgress`, `playerQuestTime`, `playerQuestObjects`, `playerBonusMoney`, `playerBonusRP`, `playerCollectMoney`, `playerCollectRP`, `playerPIN`, `playerPINStatus`, `remember_token`, `playerBonusTaken`, `playerOnceInPUBG`, `playerApartment`, `playerWalkie`, `playerWalkieStatus`, `playerTogs`, `playerAColor`, `playerHColor`) VALUES
(1, 'AdmBot', '222222222222222222cascacsacsacsacsacaca', NULL, 'changeme@gmail.com', 0, 'N/A', 0, NULL, 0, 000000, 0, 0, '1:0:0:0:0', '0:0:0:0:0', '0:0:0', '0.0.0.0', 'N/A', 0, 0, 0, 'N/A', 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0:0:0:0:0:0:0:0:0:0', '0:0:0:0:0:0:0:0:0:0', 19078, 0, 0, 1, 0, 'B-Gaming', '0:0:0:0:0', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 0, 0, 0, 0, '0:0:0:0:0:0:0:0:0:0', 0, 0, 0, 0, 0, 0, 'N/A', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'No Crime', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0:0', '0:0', '0:0', 0, '0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0', 0, 0, 0, 0, 'N/A', 0, 'N/A', 0, 0, 0, 0, 0, '0:0:0:0:0:0:0:0:0', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `server_adminlogs`
--

CREATE TABLE IF NOT EXISTS `server_adminlogs` (
  `logKey` int(11) NOT NULL,
  `logPlayerKey` varchar(32) NOT NULL,
  `logPlayer` int(11) NOT NULL,
  `logAdminKey` int(32) NOT NULL,
  `logAdmin` int(11) NOT NULL,
  `logText` varchar(64) NOT NULL,
  `logDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `server_apartments`
--

CREATE TABLE `server_apartments` (
  `apartmentKEY` int(11) NOT NULL,
  `apartmentENTERX` float NOT NULL,
  `apartmentENTERY` float NOT NULL,
  `apartmentENTERZ` float NOT NULL,
  `apartmentEXITX` float NOT NULL DEFAULT 0,
  `apartmentEXITY` float NOT NULL DEFAULT 0,
  `apartmentEXITZ` float NOT NULL DEFAULT 0,
  `apartmentANGLE` float NOT NULL,
  `apartmentOWNERKEY` int(11) NOT NULL DEFAULT 0,
  `apartmentPRICE` int(11) NOT NULL DEFAULT 10000000,
  `apartmentLOCK` int(11) NOT NULL DEFAULT 0,
  `apartmentOWNER` varchar(32) NOT NULL DEFAULT 'Nobody',
  `apartmentLEVEL` int(11) NOT NULL DEFAULT 15,
  `apartmentRENT` int(11) NOT NULL DEFAULT 2000,
  `apartmentNAME` varchar(128) NOT NULL DEFAULT 'BigZone Apartment',
  `apartmentRENTERS` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `server_apartments`
--

INSERT INTO `server_apartments` (`apartmentKEY`, `apartmentENTERX`, `apartmentENTERY`, `apartmentENTERZ`, `apartmentEXITX`, `apartmentEXITY`, `apartmentEXITZ`, `apartmentANGLE`, `apartmentOWNERKEY`, `apartmentPRICE`, `apartmentLOCK`, `apartmentOWNER`, `apartmentLEVEL`, `apartmentRENT`, `apartmentNAME`, `apartmentRENTERS`) VALUES
(1, 294.155, -1623.63, 47, 296.706, -1623.89, 47, 260.106, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(2, 276.951, -1620.52, 47, 274.614, -1620.1, 47, 78.3943, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(3, 276.767, -1620.4, 51.5, 274.592, -1619.99, 51.5, 87.7943, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(4, 294.372, -1623.7, 51.5, 296.446, -1623.98, 51.5, 260.756, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(5, 294.198, -1623.61, 56, 296.896, -1623.99, 56, 260.756, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(6, 277.011, -1620.53, 56, 274.377, -1620.19, 56, 78.7309, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(7, 277.272, -1620.66, 60.5, 274.475, -1620.05, 60.5, 78.7309, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(8, 293.985, -1623.62, 60.5, 296.877, -1623.82, 65, 262.033, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(9, 293.996, -1623.61, 65, 296.581, -1624.04, 65, 262.033, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(10, 277.404, -1620.46, 65, 274.391, -1620.1, 65, 80.6343, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(11, 276.165, -1620.37, 69.5, 274.637, -1620.34, 69.5, 80.6343, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(12, 294.934, -1623.62, 69.5, 296.553, -1624.13, 69.5, 255.789, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(13, 294.088, -1623.68, 74, 296.433, -1623.98, 74, 260.803, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(14, 277.033, -1620.46, 74, 274.373, -1620.05, 74, 79.7178, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(15, 277.014, -1620.45, 78.5, 274.665, -1619.94, 78.5, 79.7178, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(16, 294.066, -1623.63, 78.5, 296.897, -1623.94, 78.5, 260.826, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(17, 294.207, -1623.57, 83, 296.676, -1623.77, 83, 260.826, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(18, 276.96, -1620.41, 83, 274.274, -1620.04, 83, 81.6211, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(19, 277.087, -1620.48, 87.5, 274.821, -1620.23, 87.5, 81.6211, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(20, 294.234, -1623.64, 87.5, 296.5, -1624, 87.5, 260.849, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(21, 294.071, -1623.6, 92, 296.414, -1624.12, 92, 260.849, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(22, 277.109, -1620.51, 92, 274.605, -1620.13, 92, 80.0777, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(23, 277.031, -1620.51, 96.5, 274.693, -1620.15, 96.5, 80.0777, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0),
(24, 294.054, -1623.59, 96.5, 296.971, -1623.86, 96.5, 260.873, 0, 10000000, 2, 'Nobody', 15, 2000, 'BigZone Apartment', 0);

-- --------------------------------------------------------

--
-- Table structure for table `server_atms`
--

CREATE TABLE IF NOT EXISTS `server_atms` (
  `atmKey` int(11) NOT NULL,
  `atmName` varchar(32) NOT NULL DEFAULT 'None',
  `atmTax` smallint(6) NOT NULL DEFAULT 5,
  `atmPosX` float NOT NULL,
  `atmPosY` float NOT NULL,
  `atmPosZ` float NOT NULL,
  `atmRotX` float NOT NULL DEFAULT 0,
  `atmRotY` float NOT NULL DEFAULT 0,
  `atmRotZ` float NOT NULL DEFAULT 0
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `server_atms`
--

INSERT INTO `server_atms` (`atmKey`, `atmName`, `atmTax`, `atmPosX`, `atmPosY`, `atmPosZ`, `atmRotX`, `atmRotY`, `atmRotZ`) VALUES
(1, 'LVPD', 5, 2282.92, 2432.27, 10.6192, 0, 0, 0),
(2, 'DMV', 5, 1906.18, 2350.72, 10.7325, 0, 0, 0),
(3, 'Dealership', 5, 2427.55, 1662.99, 10.4953, 0, 0, -90),
(4, 'Truck', 5, 2837.51, 891.256, 10.5098, 0, 0, 180),
(5, 'Farm', 5, 1546.28, 32.3066, 23.8947, 0, 0, 101.962),
(6, 'LV Airport', 5, 1687.11, 1464.31, 10.3394, 0, 0, -6.06001),
(7, 'LV Airport', 5, 1686.76, 1431.03, 10.3394, 0, 0, 189.42),
(8, 'Spawn LS', 5, 512.017, -1494.45, 14.1696, 0, 0, 89.88);

-- --------------------------------------------------------

--
-- Table structure for table `server_bans`
--

CREATE TABLE IF NOT EXISTS `server_bans` (
  `banKey` int(11) NOT NULL,
  `banName` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `banAdmin` varchar(24) NOT NULL,
  `banAddress` varchar(32) NOT NULL,
  `banReason` varchar(64) NOT NULL,
  `banDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `banDays` smallint(6) NOT NULL,
  `banUnix` int(11) NOT NULL,
  `banType` tinyint(4) NOT NULL DEFAULT 0,
  `banSerial` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `server_bids`
--

CREATE TABLE IF NOT EXISTS `server_bids` (
  `bidKey` int(11) NOT NULL,
  `bidType` int(11) DEFAULT NULL,
  `bidValue` int(11) DEFAULT NULL,
  `bidStatus` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `server_business`
--

CREATE TABLE IF NOT EXISTS `server_business` (
  `busKey` int(11) NOT NULL,
  `busName` varchar(32) NOT NULL,
  `busOwner` varchar(24) NOT NULL DEFAULT 'Nobody',
  `busOwnerKey` int(11) NOT NULL DEFAULT 0,
  `busType` tinyint(4) NOT NULL,
  `busStatus` int(11) NOT NULL DEFAULT 0,
  `busCreated` int(11) NOT NULL DEFAULT 1,
  `busPickup` int(11) NOT NULL DEFAULT 0,
  `busMapIcon` int(11) NOT NULL DEFAULT 19252,
  `busInterior` tinyint(4) NOT NULL,
  `busVirtual` smallint(6) NOT NULL,
  `busPrice` int(11) NOT NULL DEFAULT 0,
  `busLevel` int(11) NOT NULL DEFAULT 5,
  `busFee` int(11) NOT NULL DEFAULT 100,
  `busFuel` int(11) NOT NULL DEFAULT 5,
  `busMoney` int(11) NOT NULL DEFAULT 0,
  `busEnterX` float NOT NULL,
  `busEnterY` float NOT NULL,
  `busEnterZ` float NOT NULL,
  `busExitX` float NOT NULL,
  `busExitY` float NOT NULL,
  `busExitZ` float NOT NULL,
  `IsApartment` int(11) NOT NULL DEFAULT 0,
  `Renters` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `server_business`
--

INSERT INTO `server_business` (`busKey`, `busName`, `busOwner`, `busOwnerKey`, `busType`, `busStatus`, `busCreated`, `busPickup`, `busMapIcon`, `busInterior`, `busVirtual`, `busPrice`, `busLevel`, `busFee`, `busFuel`, `busMoney`, `busEnterX`, `busEnterY`, `busEnterZ`, `busExitX`, `busExitY`, `busExitZ`, `IsApartment`, `Renters`) VALUES
(1, '24/7 Shop LV', 'AdmBot', 1, 1, 0, 1, 1274, 38, 17, 2001, 2500000, 10, 100, 10, 100, 2194.55, 1990.94, 12.2969, -25.8845, -185.869, 1003.55, 0, 0),
(2, 'Gunshop LV', 'AdmBot', 1, 2, 0, 1, 1274, 6, 6, 2002, 2500000, 10, 100, 10, 0, 2557.09, 2064.71, 11.0995, 296.734, -111.31, 1001.52, 0, 0),
(3, 'Gunshop LV', 'Nobody', 0, 2, 0, 1, 1274, 6, 7, 2003, 2500000, 10, 100, 10, 100, 2177.85, 961.435, 10.8203, 315.621, -143.401, 999.602, 0, 0),
(4, 'Las Venturas Bank', 'Nobody', 0, 3, 0, 1, 1274, 52, 0, 2004, 2500000, 10, 50, 10, 800, 2195.68, 1676.98, 12.3672, 2305.99, -16.2027, 26.7496, 0, 0),
(5, 'LV Clothes', 'Nobody', 0, 4, 0, 1, 1275, 45, 14, 2005, 2500000, 10, 100, 10, 0, 2090.52, 2223.36, 11.0234, 204.333, -166.695, 1000.52, 0, 0),
(6, 'LV Clothes', 'Nobody', 0, 4, 0, 1, 1275, 45, 18, 2006, 2500000, 10, 100, 10, 0, 2605.07, 1264.98, 10.8203, 161.391, -93.1592, 1001.8, 0, 0),
(7, 'Pay''N''Spray', 'Nobody', 0, 5, 0, 1, 1274, 63, 0, 2007, 2500000, 10, 100, 10, 0, 1965.41, 2158.13, 10.8203, 663.836, -575.605, 16.3433, 0, 0),
(8, 'Pay''N''Spray', 'Nobody', 0, 5, 0, 1, 1274, 63, 0, 2008, 2500000, 10, 100, 10, 0, -95.7829, 1109.35, 19.7422, 663.836, -575.605, 16.3433, 0, 0),
(9, 'Pay''N''Spray', 'Nobody', 0, 5, 0, 1, 1274, 63, 0, 2009, 2500000, 10, 100, 10, 0, -1424.74, 2593.73, 55.7606, 663.836, -575.605, 16.3433, 0, 0),
(10, 'Pay''N''Spray', 'Nobody', 0, 5, 0, 1, 1274, 63, 0, 2010, 2500000, 10, 100, 10, 100, 2073.96, -1828.65, 13.5469, 663.836, -575.605, 16.3433, 0, 0),
(11, 'Pay''N''Spray', 'Nobody', 0, 5, 0, 1, 1274, 63, 0, 2011, 2500000, 10, 500, 10, 12000, 1027.8, -1031.76, 31.9581, 663.836, -575.605, 16.3433, 0, 0),
(12, 'Pay''N''Spray', 'Nobody', 0, 5, 0, 1, 1274, 63, 0, 2012, 2500000, 10, 500, 10, 3000, 485.559, -1731.81, 11.1374, 663.836, -575.605, 16.3433, 0, 0),
(13, 'Pay''N''Spray', 'Nobody', 0, 5, 0, 1, 1274, 63, 0, 2013, 2500000, 10, 100, 10, 0, -1908.82, 275.481, 41.0469, 663.836, -575.605, 16.3433, 0, 0),
(14, 'Pay''N''Spray', 'Nobody', 0, 5, 0, 1, 1274, 63, 0, 2014, 2500000, 10, 100, 10, 0, -2431.21, 1030.08, 50.3906, 663.836, -575.605, 16.3433, 0, 0),
(15, 'Fuel Pump LV', 'Nobody', 0, 6, 0, 1, 1650, 11, 0, 2015, 2500000, 10, 100, 10, 125, 2116.13, 920.705, 10.5474, 663.836, -575.605, 16.3433, 0, 0),
(16, 'Fuel Pump LV', 'Nobody', 0, 6, 0, 1, 1650, 11, 0, 2016, 2500000, 10, 100, 10, 0, 2639.24, 1105.79, 10.5475, 663.836, -575.605, 16.3433, 0, 0),
(17, 'Fuel Pump LV', 'Nobody', 0, 6, 0, 1, 1650, 11, 0, 2017, 2500000, 10, 100, 10, 0, 2202.27, 2474.32, 10.5474, 663.836, -575.605, 16.3433, 0, 0),
(18, 'Fuel Pump LV', 'Nobody', 0, 6, 0, 1, 1650, 11, 0, 2018, 2500000, 10, 100, 10, 0, 612.818, 1695.73, 6.7193, 663.836, -575.605, 16.3433, 0, 0),
(19, 'Fuel Pump LV', 'Nobody', 0, 6, 0, 1, 1650, 11, 0, 2019, 2500000, 10, 100, 10, 0, -1471.88, 1863.81, 32.3599, 663.836, -575.605, 16.3433, 0, 0),
(20, 'Fuel Pump LV', 'Nobody', 0, 6, 0, 1, 1650, 11, 0, 2020, 2500000, 10, 100, 10, 0, -1328.31, 2677.56, 50.0625, 663.836, -575.605, 16.3433, 0, 0),
(21, '24/7 Shop LS', 'Nobody', 0, 1, 0, 1, 1274, 38, 17, 2021, 2500000, 10, 500, 10, 21000, 1832.04, -1842.6, 13.5781, -25.8845, -185.869, 1003.55, 0, 0),
(22, 'Fuel Pump LS', 'Nobody', 0, 6, 0, 1, 1650, 11, 0, 2022, 2500000, 10, 100, 10, 6830, 1945.01, -1772.59, 13.3906, 663.836, -575.605, 16.3433, 0, 0),
(23, 'Fuel Pump LS', 'Nobody', 0, 6, 0, 1, 1650, 11, 0, 2023, 2500000, 10, 100, 10, 7520, 1004.54, -938.896, 42.1797, 663.836, -575.605, 16.3433, 0, 0),
(24, 'Fuel Pump LS', 'Nobody', 0, 6, 0, 1, 1650, 11, 0, 2024, 2500000, 10, 100, 10, 2110, 1381.31, 456.23, 19.8962, 663.836, -575.605, 16.3433, 0, 0),
(25, 'Fuel Pump LV', 'Nobody', 0, 6, 0, 1, 1650, 11, 0, 2025, 2500000, 10, 100, 10, 0, 1596.83, 2198.82, 10.8203, 663.836, -575.605, 16.3433, 0, 0),
(26, 'Fuel Pump LV', 'Nobody', 0, 6, 0, 1, 1650, 11, 0, 2026, 2500000, 10, 100, 10, 0, 2147.45, 2748.15, 10.8203, 663.836, -575.605, 16.3433, 0, 0),
(27, 'Fuel Pump LV', 'Nobody', 0, 6, 0, 1, 1650, 11, 0, 2027, 2500000, 10, 100, 10, 385, 70.4187, 1218.24, 18.8125, 663.836, -575.605, 16.3433, 0, 0),
(28, 'Burger Shot', 'Nobody', 0, 7, 0, 1, 1274, 10, 10, 2028, 2500000, 10, 100, 10, 1200, 1199.44, -919.673, 43.1105, 363.558, -74.4992, 1001.51, 0, 0),
(29, 'Burger Shot', 'Nobody', 0, 7, 0, 1, 1274, 10, 10, 2029, 2500000, 10, 100, 10, 9000, 812.075, -1616.19, 13.5469, 363.558, -74.4992, 1001.51, 0, 0),
(30, 'Burger Shot', 'Nobody', 0, 7, 0, 1, 1274, 10, 10, 2030, 2500000, 10, 100, 10, 0, 2471.48, 2034.25, 11.0625, 363.558, -74.4992, 1001.51, 0, 0),
(31, 'LS CNN', 'Nobody', 0, 8, 0, 1, 1239, 13, 3, 2031, 2500000, 10, 500, 25, 7625, 1169.83, -1489.65, 22.7559, -2029.8, -106.676, 1035.17, 0, 0),
(32, '24/7 Shop LS', 'Nobody', 0, 1, 0, 1, 1274, 38, 17, 2032, 2500000, 10, 100, 10, 1300, 1103.45, -1457.9, 15.7969, -25.8845, -185.869, 1003.55, 0, 0),
(33, 'Los Santos Bank', 'Nobody', 0, 3, 0, 1, 1274, 52, 0, 2033, 2500000, 10, 100, 10, 1500, 1457.21, -1012.55, 26.8438, 2305.99, -16.2027, 26.7496, 0, 0),
(34, 'LS Clothes', 'Nobody', 0, 4, 0, 1, 1275, 45, 18, 2034, 2500000, 10, 100, 10, 900, 2244.79, -1663.85, 15.4766, 161.391, -93.1592, 1001.8, 0, 0),
(35, 'LS Clothes', 'Nobody', 0, 4, 0, 1, 1275, 45, 14, 2035, 2500000, 10, 100, 10, 1400, 1457.35, -1138.88, 24.023, 204.333, -166.695, 1000.52, 0, 0),
(36, 'LS Clothes', 'Nobody', 0, 4, 0, 1, 1275, 45, 18, 2036, 2500000, 10, 100, 10, 1900, 499.917, -1359.19, 16.2505, 161.391, -93.1592, 1001.8, 0, 0),
(37, 'Gunshop LS', 'Nobody', 0, 2, 0, 1, 1274, 6, 7, 2037, 2500000, 10, 100, 10, 1500, 1367.67, -1279.8, 13.5469, 315.621, -143.401, 999.602, 0, 0),
(38, 'Casino LS', 'Nobody', 0, 9, 0, 1, 1274, 25, 1, 2038, 2500000, 10, 100, 10, 2000, 479.636, -1536.18, 19.5481, 2233.8, 1712.23, 1011.76, 0, 0),
(39, 'Casino LV', 'Nobody', 0, 9, 0, 1, 1274, 25, 10, 2039, 2500000, 10, 100, 10, 600, 2020.4, 1007.73, 10.8203, 2016.27, 1017.78, 996.875, 0, 0),
(40, 'Club Alhambra', 'Nobody', 0, 10, 0, 1, 1274, 12, 17, 2040, 2500000, 10, 100, 10, 500, 1836.18, -1682.46, 13.3586, 493.391, -22.7228, 1000.68, 0, 0),
(41, 'Wheel Arch Angels', 'Nobody', 0, 11, 0, 1, 1274, 27, 0, 2041, 2500000, 10, 100, 10, 200, -2713.66, 222.066, 4.3281, 0, 0, 0, 0, 0),
(42, 'TransFender SF', 'Nobody', 0, 11, 0, 1, 1274, 27, 0, 2042, 2500000, 10, 100, 10, 0, -1931.71, 236.573, 34.3379, 0, 0, 0, 0, 0),
(43, 'TransFender LV', 'Nobody', 0, 11, 0, 1, 1274, 27, 0, 2043, 2500000, 10, 100, 10, 200, 2391.29, 1041.17, 10.8203, 0, 0, 0, 0, 0),
(44, 'Loco Low Co.', 'Nobody', 0, 11, 1, 1, 1274, 27, 0, 2044, 2500000, 10, 100, 10, 700, 2648.73, -2037.58, 13.554, 0, 0, 0, 0, 0),
(45, 'TransFender LS', 'Nobody', 0, 11, 0, 1, 1274, 27, 0, 2045, 2500000, 10, 100, 10, 3200, 1044.49, -1027.57, 32.1016, 0, 0, 0, 0, 0),
(46, 'Airport Fuel Pump', 'Nobody', 0, 12, 0, 1, 1650, 11, 0, 2046, 2500000, 10, 100, 10, 0, 1954.54, -2635.12, 13.5469, 0, 0, 0, 0, 0),
(47, 'Airport Fuel Pump', 'Nobody', 0, 12, 0, 1, 1650, 11, 0, 2047, 2500000, 10, 100, 10, 0, -1125.1, -176.244, 14.144, 0, 0, 0, 0, 0),
(48, 'Airport Fuel Pump', 'Nobody', 0, 12, 0, 1, 1650, 11, 0, 2048, 2500000, 10, 100, 10, 0, 1281.54, 1447.18, 10.813, 0, 0, 0, 0, 0),
(49, 'Airport Fuel Pump', 'Nobody', 0, 12, 0, 1, 1650, 11, 0, 2049, 2500000, 10, 100, 10, 0, 365.797, 2548.77, 16.5391, 0, 0, 0, 0, 0),
(50, 'Pay''N''Spray', 'Nobody', 0, 5, 0, 1, 1274, 63, 0, 2050, 2500000, 10, 100, 10, 200, 723.349, -464.604, 16.3359, 663.836, -575.605, 16.3433, 0, 0),
(51, 'Fuel Pump LS', 'Nobody', 0, 6, 0, 1, 1650, 11, 0, 2051, 2500000, 10, 100, 10, 0, 655.738, -564.936, 16.3359, 663.836, -575.605, 16.3433, 0, 0),
(52, 'Rent Car', 'Nobody', 0, 13, 0, 1, 1083, 55, 0, 2052, 2500000, 10, 100, 25, 0, 865.329, -1635.57, 14.9297, 0, 0, 0, 0, 0),
(53, '24/7 Shop LS', 'Nobody', 0, 1, 0, 1, 1274, 38, 17, 2069, 2500000, 10, 100, 10, 800, 1315.51, -898.336, 39.5781, -25.8845, -185.869, 1003.55, 0, 0),
(54, 'Pay\'N\'Spray', 'Nobody', 0, 5, 0, 1, 1274, 63, 0, 9999, 2500000, 10, 100, 10, 100, 1842.45, -1859.15, 13.3828, 663.836, -575.605, 16.3433, 0, 0),
(55, 'Gunshop LS', 'Nobody', 0, 2, 0, 1, 1274, 6, 6, 9998, 2500000, 10, 100, 10, 1600, 1847.73, -1872.65, 13.5781, 296.734, -111.31, 1001.52, 0, 0),
(56, 'Hotel Bigzone', 'Nobody', 0, 16, 0, 1, 1274, 38, 0, 0, 2000000000, 30, 100, 5, 100, 297.829, -1619.62, 33.2119, 297.829, -1619.62, 297.829, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `server_clanlogs`
--

CREATE TABLE IF NOT EXISTS `server_clanlogs` (
  `logKey` int(11) NOT NULL,
  `logClan` int(11) NOT NULL,
  `logPlayerKey` int(11) NOT NULL,
  `logText` varchar(64) NOT NULL,
  `logDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `server_clans`
--

CREATE TABLE IF NOT EXISTS `server_clans` (
  `clanKey` int(11) NOT NULL,
  `clanName` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `clanTag` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL DEFAULT '[NA]',
  `clanMOTD` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL DEFAULT 'Bine ai venit in clan!',
  `clanMembers` int(11) NOT NULL DEFAULT 1,
  `clanSlots` int(11) NOT NULL DEFAULT 15,
  `clanActive` tinyint(1) NOT NULL DEFAULT 1,
  `clanRanks` varchar(256) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL DEFAULT 'None:None:None:None:None:Co-Leader:Leader',
  `clanExpire` timestamp NULL DEFAULT NULL,
  `clanDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `clanColor` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL DEFAULT 'FFFFFF',
  `clanForum` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL DEFAULT 'http://forum.b-gaming.ro',
  `clanDescription` varchar(512) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL DEFAULT 'Change me...'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `server_config`
--

CREATE TABLE IF NOT EXISTS `server_config` (
  `cfgKey` int(11) NOT NULL,
  `cfgNews` varchar(512) NOT NULL,
  `cfgUpdates` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `server_config`
--

INSERT INTO `server_config` (`cfgKey`, `cfgNews`, `cfgUpdates`) VALUES
(1, 'awsaw', '{e1de79}[SERVER BUILD v0.0.5]<br><br>{20b809}[+] {FFFFFF}D');

-- --------------------------------------------------------

--
-- Table structure for table `server_dealer`
--

CREATE TABLE IF NOT EXISTS `server_dealer` (
  `Key` int(11) NOT NULL,
  `carID` int(11) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `onserver` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `premiumprice` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `tunelocation` smallint(6) NOT NULL DEFAULT 0,
  `topspeed` int(11) NOT NULL DEFAULT 0,
  `COD` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `server_dealer`
--

INSERT INTO `server_dealer` (`Key`, `carID`, `stock`, `onserver`, `price`, `premiumprice`, `name`, `type`, `tunelocation`, `topspeed`, `COD`) VALUES
(1, 478, 100, 0, 210000, 0, 'Walton', 1, 0, 104, 1),
(2, 543, 100, 0, 210500, 0, 'Sadler', 1, 0, 134, 2),
(3, 422, 100, 0, 210700, 0, 'Bobcat', 1, 0, 124, 3),
(4, 404, 100, 0, 225000, 0, 'Perennial', 1, 0, 118, 4),
(5, 600, 100, 0, 230000, 0, 'Picador', 1, 0, 134, 5),
(6, 418, 100, 0, 230300, 0, 'Moonbeam', 1, 0, 102, 6),
(7, 482, 100, 0, 240000, 0, 'Burrito', 1, 0, 138, 7),
(8, 483, 100, 0, 240300, 0, 'Camper', 1, 0, 109, 8),
(9, 508, 100, 0, 240500, 0, 'Journey', 1, 0, 96, 9),
(10, 467, 100, 0, 250000, 0, 'Oceanic', 1, 0, 125, 10),
(11, 474, 100, 0, 250400, 0, 'Hermes', 1, 0, 132, 11),
(12, 401, 100, 0, 250700, 0, 'Bravura', 1, 0, 130, 12),
(13, 479, 100, 0, 260000, 0, 'Regina', 1, 0, 124, 13),
(14, 547, 100, 0, 260200, 0, 'Primo', 1, 0, 127, 14),
(15, 546, 100, 0, 260700, 0, 'Intruder', 1, 0, 132, 15),
(16, 550, 100, 0, 270000, 0, 'Sunrise', 1, 0, 128, 16),
(17, 517, 100, 0, 270200, 0, 'Majestic', 1, 0, 140, 17),
(18, 439, 100, 0, 270500, 0, 'Stallion', 1, 0, 150, 18),
(19, 549, 100, 0, 280000, 0, 'Tampa', 1, 0, 136, 19),
(20, 580, 100, 1, 280200, 0, 'Stafford', 1, 0, 136, 20),
(21, 542, 100, 0, 285000, 0, 'Clover', 1, 0, 146, 21),
(0, 545, 100, 0, 288000, 0, 'Hustler', 1, 0, 130, 22),
(23, 492, 100, 0, 292000, 0, 'Greenwood', 1, 0, 125, 23),
(1, 536, 100, 0, 297000, 0, 'Blade', 2, 0, 153, 24),
(2, 400, 99, 1, 300000, 0, 'Landstalker', 2, 0, 140, 25),
(3, 500, 100, 0, 315000, 0, 'Mesa', 2, 0, 125, 26),
(4, 434, 100, 1, 319000, 0, 'Hotknife', 2, 0, 148, 27),
(5, 561, 100, 0, 327000, 0, 'Stratum', 2, 0, 137, 28),
(6, 551, 100, 0, 342000, 0, 'Merit', 2, 0, 140, 29),
(7, 567, 100, 0, 353000, 0, 'Savanna', 2, 0, 153, 30),
(8, 496, 100, 0, 361000, 0, 'Blista-Compact', 2, 0, 144, 31),
(9, 518, 100, 0, 369000, 0, 'Buccaneer', 2, 0, 146, 32),
(10, 535, 100, 0, 373000, 0, 'Slamvan', 2, 0, 140, 33),
(11, 554, 100, 0, 385000, 0, 'Yosemite', 2, 0, 128, 34),
(12, 555, 100, 0, 425000, 0, 'Windsor', 2, 0, 140, 35),
(13, 534, 100, 0, 460000, 0, 'Remington', 2, 0, 150, 36),
(14, 426, 100, 0, 475000, 0, 'Premier', 2, 0, 154, 37),
(15, 589, 100, 0, 480000, 0, 'Club', 2, 0, 144, 38),
(16, 603, 100, 0, 500000, 0, 'Phoenix', 2, 0, 152, 39),
(17, 489, 100, 0, 515000, 0, 'Rancher', 2, 0, 124, 40),
(18, 587, 100, 0, 530000, 0, 'Euros', 2, 0, 146, 41),
(19, 445, 100, 0, 540000, 0, 'Admiral', 2, 0, 145, 42),
(20, 533, 100, 0, 570000, 0, 'Feltzer', 2, 0, 148, 43),
(21, 504, 100, 0, 600000, 0, 'Bloodring', 2, 0, 153, 44),
(1, 579, 99, 1, 645000, 0, 'Huntley', 3, 0, 140, 45),
(2, 565, 100, 0, 680000, 0, 'Flash', 3, 0, 146, 46),
(3, 558, 100, 0, 700000, 0, 'Uranus', 3, 0, 138, 47),
(4, 602, 100, 0, 750000, 0, 'Alpha', 3, 0, 150, 48),
(5, 495, 100, 0, 800000, 0, 'Sandking', 3, 0, 156, 49),
(6, 480, 98, 2, 825000, 0, 'Comet', 3, 0, 163, 50),
(7, 506, 100, 0, 1350000, 0, 'Super-GT', 3, 0, 159, 51),
(8, 562, 100, 0, 1400000, 0, 'Elegy', 3, 0, 158, 52),
(9, 559, 100, 0, 1600000, 0, 'Jester', 3, 0, 158, 53),
(10, 402, 100, 0, 1600000, 0, 'Buffalo', 3, 0, 165, 54),
(11, 477, 100, 0, 1800000, 0, 'ZR-350', 3, 0, 165, 55),
(12, 415, 100, 0, 2600000, 0, 'Cheetah', 3, 0, 171, 56),
(13, 560, 100, 5, 3800000, 0, 'Sultan', 3, 0, 150, 57),
(14, 429, 100, 0, 3300000, 0, 'Banshee', 3, 0, 179, 58),
(15, 451, 100, 0, 4300000, 0, 'Turismo', 3, 0, 172, 59),
(16, 541, 99, 2, 5125000, 0, 'Bullet', 3, 0, 180, 60),
(17, 411, 93, 16, 6200000, 0, 'Infernus', 3, 0, 197, 61),
(1, 509, 100, 1, 150000, 0, 'Bike', 4, 0, 93, 62),
(2, 481, 100, 0, 200000, 0, 'BMX', 4, 0, 86, 63),
(3, 510, 100, 0, 250000, 0, 'Mountain Bike', 4, 0, 114, 64),
(4, 462, 100, 0, 400000, 0, 'Faggio', 4, 0, 99, 65),
(5, 471, 100, 0, 400000, 0, 'Quad', 4, 0, 98, 66),
(6, 586, 100, 0, 490000, 0, 'Wayfarer', 4, 0, 127, 67),
(7, 463, 100, 0, 512500, 0, 'Freeway', 4, 0, 130, 68),
(8, 468, 102, 59, 540000, 0, 'Sanchez', 4, 0, 128, 69),
(9, 461, 100, 0, 600000, 0, 'PCJ-600', 4, 0, 143, 70),
(10, 521, 100, 0, 1200000, 0, 'FCR-900', 4, 0, 141, 71),
(11, 522, 99, 2, 3900000, 0, 'NRG-500', 4, 0, 156, 72),
(1, 494, 100, 0, 0, 150, 'Hotring Racer', 5, 0, 191, 73),
(2, 502, 100, 0, 0, 150, 'Hotring Racer A', 5, 0, 191, 74),
(3, 503, 100, 0, 0, 150, 'Hotring Racer B', 5, 0, 191, 75),
(4, 444, 100, 0, 0, 170, 'Monster', 5, 0, 100, 76),
(5, 469, 100, 0, 0, 200, 'Sparrow', 5, 0, 77, 77),
(6, 487, 100, 0, 0, 250, 'Maverick', 5, 0, 150, 78);

-- --------------------------------------------------------

--
-- Table structure for table `server_emails`
--

CREATE TABLE IF NOT EXISTS `server_emails` (
  `emailKey` int(11) NOT NULL,
  `playerKey` int(11) NOT NULL,
  `emailText` varchar(256) NOT NULL,
  `emailDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `emailRead` tinyint(1) NOT NULL DEFAULT 0,
  `emailFaction` int(11) NOT NULL DEFAULT 0,
  `emailComplaint` int(11) NOT NULL DEFAULT 0,
  `emailTicket` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `server_events`
--

CREATE TABLE IF NOT EXISTS `server_events` (
  `eventKey` int(11) NOT NULL,
  `eventDate` int(11) NOT NULL,
  `eventHour` int(11) NOT NULL,
  `eventPrize` text NOT NULL,
  `eventItem` int(11) NOT NULL DEFAULT 0,
  `eventValue` int(11) NOT NULL,
  `eventType` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `server_events`
--

INSERT INTO `server_events` (`eventKey`, `eventDate`, `eventHour`, `eventPrize`, `eventItem`, `eventValue`, `eventType`) VALUES
(2, 6, 22, '1 Respect Point', 1, 1, 1),
(3, 7, 12, '$15,000', 0, 15000, 1),
(4, 24, 22, 'Job Boost 5 hours', 9, 5, 1),
(5, 7, 21, 'Vehicle', 3, 560, 0),
(6, 7, 21, 'Job Boost', 9, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `server_factionlog`
--

CREATE TABLE IF NOT EXISTS `server_factionlog` (
  `logKey` int(11) NOT NULL,
  `logText` varchar(256) NOT NULL,
  `logDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `logFaction` int(11) NOT NULL,
  `logPlayer` int(11) NOT NULL,
  `logPlayerName` varchar(32) NOT NULL,
  `logLeader` int(11) NOT NULL DEFAULT 0,
  `logLeaderName` varchar(32) NOT NULL,
  `logEdited` tinyint(1) NOT NULL DEFAULT 0,
  `logEditor` varchar(32) NOT NULL DEFAULT 'N/A',
  `logDeleted` int(11) NOT NULL DEFAULT 0,
  `logDeletedAdmin` text DEFAULT NULL,
  `logDeletedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `server_factions`
--

CREATE TABLE IF NOT EXISTS `server_factions` (
  `factionKey` int(11) NOT NULL,
  `factionName` varchar(128) NOT NULL,
  `factionTag` varchar(32) NOT NULL DEFAULT 'NONE',
  `factionMOTD` varchar(256) NOT NULL DEFAULT 'Informatii pe www.b-gaming.ro',
  `factionStatus` tinyint(4) NOT NULL DEFAULT 1,
  `factionMembers` int(11) NOT NULL DEFAULT 0,
  `factionLeaders` int(11) NOT NULL DEFAULT 0,
  `factionMapIcon` int(11) NOT NULL DEFAULT 19256,
  `factionPickup` smallint(6) NOT NULL DEFAULT 1247,
  `factionType` int(11) NOT NULL DEFAULT 0,
  `factionMaterials` int(11) NOT NULL DEFAULT 0,
  `factionMoney` int(11) NOT NULL DEFAULT 0,
  `factionDrugs` int(11) NOT NULL DEFAULT 0,
  `factionBusExtortion` int(11) NOT NULL DEFAULT 0,
  `factionHQEnterX` float NOT NULL,
  `factionHQEnterY` float NOT NULL,
  `factionHQEnterZ` float NOT NULL,
  `factionHQExitX` float NOT NULL,
  `factionHQExitY` float NOT NULL,
  `factionHQExitZ` float NOT NULL,
  `factionHQInterior` smallint(6) NOT NULL DEFAULT 0,
  `factionInterior` smallint(6) NOT NULL DEFAULT 0,
  `factionVirtual` int(11) NOT NULL DEFAULT 0,
  `factionApplications` int(11) NOT NULL,
  `factionSlots` int(11) NOT NULL,
  `factionLevel` int(11) NOT NULL,
  `factionSkins` varchar(64) NOT NULL,
  `factionRanks` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL DEFAULT 'None:None:None:Co-Leader:Leader',
  `factionSeifX` float NOT NULL,
  `factionSeifY` float NOT NULL,
  `factionSeifZ` float NOT NULL,
  `factionSeifRX` float NOT NULL,
  `factionSeifRY` float NOT NULL,
  `factionSeifRZ` float NOT NULL,
  `factionQ1` varchar(256) NOT NULL DEFAULT 'Care este varsta reala?:',
  `factionQ2` varchar(256) NOT NULL DEFAULT 'Numele real:',
  `factionQ3` varchar(256) NOT NULL DEFAULT 'Cum te poti descrie (minim 30 de cuvinte)?:',
  `factionQ4` varchar(256) NOT NULL DEFAULT 'De ce doresti sa intri in acesta factiune?:',
  `factionQ5` varchar(256) NOT NULL DEFAULT 'Cu ce se ocupa factiunea?:',
  `factionQ6` varchar(256) NOT NULL DEFAULT 'Esti constient ca vei fi testat din regulamentul factiunii?:',
  `factionQ7` varchar(256) NOT NULL DEFAULT 'Esti pe blacklist-ul unei factiuni? Daca da, esti de acord pentru a fi scos?:',
  `factionQ8` varchar(256) NOT NULL DEFAULT 'Cate ore acorzi jocului pe zi, fara [/sleep]?:',
  `factionQ9` varchar(256) NOT NULL DEFAULT 'Ce nume ai pe forum? (link cu contul de forum):',
  `factionQ10` varchar(256) NOT NULL DEFAULT 'Alte precizari:'
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `server_factions`
--

INSERT INTO `server_factions` (`factionKey`, `factionName`, `factionTag`, `factionMOTD`, `factionStatus`, `factionMembers`, `factionLeaders`, `factionMapIcon`, `factionPickup`, `factionType`, `factionMaterials`, `factionMoney`, `factionDrugs`, `factionBusExtortion`, `factionHQEnterX`, `factionHQEnterY`, `factionHQEnterZ`, `factionHQExitX`, `factionHQExitY`, `factionHQExitZ`, `factionHQInterior`, `factionInterior`, `factionVirtual`, `factionApplications`, `factionSlots`, `factionLevel`, `factionSkins`, `factionRanks`, `factionSeifX`, `factionSeifY`, `factionSeifZ`, `factionSeifRX`, `factionSeifRY`, `factionSeifRZ`, `factionQ1`, `factionQ2`, `factionQ3`, `factionQ4`, `factionQ5`, `factionQ6`, `factionQ7`, `factionQ8`, `factionQ9`, `factionQ10`) VALUES
(2, 'Paramedic Department', 'PARAMEDIC', '53', 1, 0, 0, 19222, 11738, 3, 5000, 50000, 0, 0, 2033.95, -1402.09, 17.2927, 388.657, 173.768, 1008.38, 3, 0, 5003, 0, 20, 3, '276:275:274:221:119:70:70:308', 'Paramedic:Advanced Paramedic:Ginecolog:Chirurg:Doctor:Co-Lider:[7] Leader', 354.092, 172.312, 1007.88, 0, 0, 90.12, 'Care este varsta reala?:', 'Numele real: ', 'Cum te poti descrie (minim 20 cuvinte)?:', 'De ce doresti sa intri in acesta factiune (minim 15 cuvinte)?:', 'Vei respecta liderul si sub-liderul acestei factiuni?', 'Esti constient ca vei fi testat din regulamentul factiunii?:', 'Esti pe blacklist-ul unei factiuni? Daca da, esti de acord pentru a fi scos?', 'Cate ore acorzi jocului pe zi, fara [/sleep]?:', 'De cand joci SA:MP?', 'Alte precizari:'),
(4, 'School Instructors', 'SCHOOL', '53', 1, 2, 2, 19256, 1318, 4, 5000, 50000, 0, 0, 1454.94, 751.021, 11.0234, -2027.12, -104.036, 1035.17, 3, 0, 5004, 0, 20, 3, '153:188:189:240:59:171:171:172', 'Trainee:Instructor:Senior Instructor:Supervisor:Manager:Under Boss:Boss', -2031.17, -119.136, 1034.6, 0, 0, 182.88, 'Care este varsta reala?:', 'Cu ce se ocupa factiunea School Instructors?:', 'Numar de ore pe zi petrecute in joc fara [/sleep]:', 'Interval orar de joc:', 'Explicatii pentru parasirea factiunilor anterioare:', 'Explicatii pentru sanctiunile primite de la admini:', 'Descrierea voastra ca persoana:', 'De ce doresti sa te alaturi acestei factiuni?:', 'Care sunt planurile tale de viitor ca jucator?:', 'Daca vei fii acceptat esti constient ca va trebuii sa sustii testul de intrare cu un rank 2+in mai.putin de 72h ? ?'),
(1, 'Los Santos Police Department', 'LSPD', 'None.', 1, 3, 3, 19256, 1247, 1, 5000, 40000, 0, 0, 242.256, 66.4895, 1003.64, 288.797, 167.713, 1007.17, 3, 6, 5009, 0, 20, 7, '71:300:310:267:266:265:265:306', 'LSPD Cadet(1):LSPD Officer(2):LSPD Snr. Officer(3):LSPD Sergeant(4):LSPD Lieutenant(5):Co-Leader:Leader', 301.708, 186.016, 1006.64, 0, 0, 265.97, 'Alte precizari:', 'Numele tau real:', 'Descrierea ta personala: (Minim 20 cuvinte):', 'Cate ore acorzi jocului pe zi, fara AFK, /sleep?:', 'Cu ce se ocupa Los Santos Police Department?:', 'Ai posibilitatea de a filma dovezi clare in joc? (fraps/bandicam/obs):', 'De ce doresti sa te alaturi acestei factiuni?:', 'Esti pe blacklist-ul unei factiuni? Daca da, esti de acord sa platesti pentru a fi scos?', 'Ai mai fost in Los Santos Police Department pana acum? Daca da, de ce ai iesit?:', 'Alte precizari:'),
(10, 'Ballas', 'BALLAS', '53', 1, 0, 0, 59, 1314, 0, 5000, 50070, 0, 0, 2233.18, -1159.78, 25.8906, 967.142, -53.208, 1001.12, 3, 0, 5025, 0, 20, 10, '102:104:223:185:3:296:296:195', 'None:None:None:Co-Leader:Leader', 956.72, -48.6306, 1000.55, 0, 0, 90.96, 'Care este varsta reala?:', 'Numele real:', 'Cum te poti descrie in cateva cuvinte?:', 'De ce doresti sa intri in acesta factiune?:', 'Cu ce se ocupa Ballas Family?', 'Esti constient ca vei fi testat din regulamentul factiunii?:', 'Esti pe blacklist-ul unei factiuni? Daca da, esti de acord pentru a fi scos?:', 'Cate ore acorzi jocului pe zi, fara [/sleep]?:', 'Ce nume ai pe forum? (link cu contul de forum):', 'Alte precizari:'),
(9, 'Russian Mafia', 'RUSSIAN', '53', 1, 0, 0, 61, 1314, 8, 4700, 50000, 0, 0, 1124.47, -2036.99, 69.8841, 2574.36, -1300.68, 1060.98, 2, 0, 5015, 0, 20, 10, '124:98:126:125:112:113:113:192', '[1] Incepator:[2] Mafiot:[3] Expert:[4] Veteran:Godfather:Co-Leader:Leader', 2569.01, -1305.68, 1060.46, 0, 0, 180, 'Care este varsta reala?:', 'Numele real:', 'Care este sexul tau (real):', 'Ai mai jucat in mafii pe alte servere sau pe acest server?', 'Esti pe blacklistul unei factiuni?Daca da esti de acord pentru a fi scos?', 'Cu ce se ocupa Russian Mafia?', 'Descrierea ta (minim 20 de cuvinte):', 'Cât de bine tragi cu: rifle, deagle si M4?', 'Esti constient ca daca nu vei sta mai mult de 14 zile în factiune vei iesi cu FP?', 'Ai mai fost intr-o factiune?Daca da, care a fost aceasta:'),
(3, 'Los Santos Taxi', 'LS TAXI', '53', 1, 1, 1, 19256, 19524, 2, 5000, 50000, 0, 0, 1753.18, -1903.12, 13.5632, 1726.68, -1638.53, 20.2233, 18, 0, 5010, 0, 20, 3, '253:142:220:222:61:255:255:225', 'Trainee:Taxi Rookie:Experienced Driver:Dispatcher:Shift Supervizor:Co-Leader:Leader', 1722.05, -1643.44, 19.6834, 0, 0, -1.32, 'Care este varsta reala?:', 'Numele real:', 'De cat timp joci SA:MP? : ', 'De ce vrei sa intrii in Taxi Los Santos? :', 'Cu ce se ocupa Taxi LS?:', 'Consideri ca esti indeajuns de pregatit sa dai testul dupa ce vei fi acceptat?:', 'Esti pe Black List-ul unei factiuni?:', 'Cate ore petreci pe server?:', 'Vei respecta liderul/co-liderul?:', 'Alte precizari?:'),
(7, 'Grove Street', 'GROVE', '53', 1, 0, 0, 62, 1314, 8, 4900, 50200, 0, 0, 2495.54, -1690.4, 14.7656, 2574.36, -1300.68, 1060.98, 2, 0, 5011, 0, 20, 10, '107:106:293:269:271:270:270:195', 'Commando Junior:Commando Senior:Gangsta:niGGa:AiMER:Sub Lider:Legend Gangsta', 2569.01, -1305.68, 1060.46, 0, 0, 180, 'Care este varsta reala?:', 'Numele real:', 'Descrie-te in cateva cuvinte. // Describe yourself in a few words.', 'Cat de bine tragi cu M4/Deagle/Rifle?(High/Medium/Low) // How well do you fire with M4/Deagle/Rifle?', 'De ce doresti sa te alaturi mafiei? // Why do you want to join this gang?', 'Te afli pe BlackList-ul vreunei factiuni? // Are you on the BlackList of any faction?', 'Ai fost banat vreodata? Daca da, de ce? // Have you been banned before? If yes, why?', 'Ai mai fost in mafii pana acum? // Have you been in a gang before?', 'Poti ajunge la war-uri intre orele 20:00-22:00? // Can you come at the wars (20:00-22:00)?', 'Ai vreun video / niste ss-uri care sa dovedeasca cat de bine tragi?'),
(8, 'Orleans Family', 'ORLEANS', 'Bun venit!', 1, 1, 1, 60, 1314, 8, 5000, 21150, 0, 5, 691.406, -1276.02, 13.5606, 2574.36, -1300.68, 1060.98, 2, 0, 5012, 0, 20, 10, '122:108:109:110:292:120:120:191', 'Solider:Master :Master of Deagle:King of Deagle:Manager:Al-Capone:SHEFU', 2569.01, -1305.68, 1060.46, 0, 0, 180, 'Care este varsta reala?:', 'Numele real:', 'De ce vrei sa intri in Orleans Family ?', 'Autocaracterizare (min 10-15 cuvinte)   ', 'Consideri ca poti fi prezent Luni - Vineri intre orele 20:00 - 22:00 la war-uri?', 'Esti constient ca daca nu vei veni la war, vei primi FW?', 'Ai fost banat vreodata pe acest server? Daca da, de ce?', 'Cat de bine crezi ca tragi cu arma?( low/medium/high )                            ', 'Pune link cu contul de pe forum(in caz ca pui demisie)', 'Cu ce FPS-uri rulezi la war?'),
(6, 'Hitman Agency', 'HITMAN', '53', 1, 1, 1, 19256, 1254, 5, 5000, 50000, 0, 0, 1105.72, -299.718, 74.5391, 963.419, 2108.29, 1011.03, 1, 0, 5013, 0, 20, 5, '186:127:208:117:290:294:294:90', 'Assasin:Proffesional:Specialist:Serial Killer:test:Shinobi:God Of Hitman', 957.928, 2096.29, 1010.45, 0, 0, 131.52, 'Care este varsta reala?:', 'Numele real:', 'Descriere personala: (minim 3 randuri.)', 'De ce doresti sa intri in acesta factiune?:', 'Cu ce crezi ca se ocupa factiunea Hitman Agency?:', 'Crezi ca poti sa fi capabil sa duci un contract pana la capat?:', 'Ce intelegi tu din Asasinare silentioasa?:', 'Cate ore acorzi jocului pe zi, fara /sleep sau afk?:', 'Care crezi ca sunt calitatile unui membru?:', 'Alte precizari?:'),
(5, 'News Reporters', 'NR - LS', '53', 1, 1, 1, 19256, 1210, 6, 5000, 50000, 0, 0, 732.823, -1348.23, 13.5102, 1701.25, -1667.78, 20.2188, 18, 0, 5014, 1, 20, 3, '188:17:147:187:227:228:228:141', '[1] Intern:[2] Junior Reporter:[3] Senior Reporter:[4] Senior Editor:[5] Chief Editor:Co-Leader:Leader', 1722.05, -1643.44, 19.6834, 0, 0, -1.32, 'Care este varsta reala?:', 'Numele real:', 'Descriere personala (minim 3 randuri):', 'Numeste 3 calitati ale unui reporter:', 'De ce crezi ca vei fi acceptat in aceasta factiune?:', 'Esti constient ca vei fi testat din regulamentul factiunii?:', 'Esti pe blacklist-ul unei factiuni? Daca da, esti de acord pentru a fi scos?:', 'Cat timp ti-ai propus sa stai in factiune?', 'Numele de pe forum:', 'Alte precizari(optional):');

-- --------------------------------------------------------

--
-- Table structure for table `server_feed`
--

CREATE TABLE IF NOT EXISTS `server_feed` (
  `logKey` int(11) NOT NULL,
  `playerKey` int(11) NOT NULL,
  `playerName` varchar(24) NOT NULL DEFAULT 'None',
  `logText` varchar(256) NOT NULL,
  `logDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `server_friends`
--

CREATE TABLE IF NOT EXISTS `server_friends` (
  `friendsKey` int(11) NOT NULL,
  `friendsPlayer` int(11) NOT NULL,
  `friendsFriendID` int(11) NOT NULL,
  `friendsFriendName` varchar(24) NOT NULL,
  `friendsFriendStatus` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `server_gifts`
--

CREATE TABLE IF NOT EXISTS `server_gifts` (
  `giftKey` int(11) NOT NULL,
  `giftPlayer` int(11) NOT NULL,
  `giftPlayerName` text NOT NULL,
  `giftText` text NOT NULL,
  `giftDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `server_heists`
--

CREATE TABLE IF NOT EXISTS `server_heists` (
  `heistKey` int(11) NOT NULL,
  `heistName` text NOT NULL,
  `heistType` tinyint(4) NOT NULL,
  `heistPosX` float NOT NULL,
  `heistPosY` float NOT NULL,
  `heistPosZ` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `server_heists`
--

INSERT INTO `server_heists` (`heistKey`, `heistName`, `heistType`, `heistPosX`, `heistPosY`, `heistPosZ`) VALUES
(1, ' The Jewlery store', 1, 1449.3, -1848.15, 13.5469);

-- --------------------------------------------------------

--
-- Table structure for table `server_houses`
--

CREATE TABLE IF NOT EXISTS `server_houses` (
  `houseKey` int(11) NOT NULL,
  `houseName` varchar(32) NOT NULL DEFAULT 'LV House',
  `houseOwner` varchar(16) NOT NULL DEFAULT 'Nobody',
  `houseOwnerKey` int(11) NOT NULL DEFAULT 0,
  `houseMusic` varchar(256) NOT NULL DEFAULT 'offline',
  `houseType` smallint(6) NOT NULL DEFAULT 1,
  `houseLevel` int(11) NOT NULL DEFAULT 3,
  `houseLock` tinyint(1) NOT NULL DEFAULT 0,
  `houseInterior` smallint(6) NOT NULL DEFAULT 0,
  `houseVirtual` smallint(6) NOT NULL DEFAULT 0,
  `housePrice` int(11) NOT NULL DEFAULT 500000,
  `houseMoney` int(11) NOT NULL DEFAULT 0,
  `houseRent` int(11) NOT NULL DEFAULT 500,
  `houseEnterX` float NOT NULL,
  `houseEnterY` float NOT NULL,
  `houseEnterZ` float NOT NULL,
  `houseExitX` float NOT NULL,
  `houseExitY` float NOT NULL,
  `houseExitZ` float NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `server_houses`
--

INSERT INTO `server_houses` (`houseKey`, `houseName`, `houseOwner`, `houseOwnerKey`, `houseMusic`, `houseType`, `houseLevel`, `houseLock`, `houseInterior`, `houseVirtual`, `housePrice`, `houseMoney`, `houseRent`, `houseEnterX`, `houseEnterY`, `houseEnterZ`, `houseExitX`, `houseExitY`, `houseExitZ`) VALUES
(1, 'LS House', 'AdmBot', 1, 'offline', 3, 7, 0, 2, 2001, 3000000, 0, 250, 254.38, -1367.12, 53.11, 446.67, 1397.72, 1084.3),
(2, 'LS House', 'AdmBot', 1, 'offline', 3, 10, 0, 5, 2002, 10000000, 0, 250, 1093.88, -807.14, 107.42, 140.08, 1366.48, 1083.86),
(3, 'LS House', 'AdmBot', 1, 'offline', 1, 5, 0, 1, 2003, 6000000, 0, 250, 1034.84, -813.17, 101.85, 223.03, 1287.52, 1082.14),
(4, 'LS House', 'AdmBot', 1, 'offline', 2, 7, 0, 10, 2004, 8000000, 0, 250, 1421.77, -886.23, 50.69, 23.86, 1341.18, 1084.38),
(5, 'LS House', 'AdmBot', 1, 'offline', 1, 5, 0, 8, 2005, 6000000, 0, 250, 1468.58, -906.18, 54.84, -42.58, 1405.94, 1084.43),
(6, 'LS House', 'AdmBot', 1, 'offline', 3, 10, 0, 5, 2006, 10000000, 0, 250, 1540.47, -851.55, 64.34, 140.08, 1366.48, 1083.86),
(7, 'LS House', 'AdmBot', 1, 'offline', 2, 7, 0, 10, 2007, 8000000, 0, 250, 1535.03, -800.24, 72.85, 23.86, 1341.18, 1084.38),
(8, 'LS House', 'AdmBot', 1, 'offline', 2, 7, 0, 6, 2008, 8000000, 250, 250, 1527.81, -772.58, 80.58, 2196.61, -1204.45, 1049.02),
(9, 'LS House', 'AdmBot', 1, 'offline', 3, 10, 0, 2, 2009, 9000000, 0, 250, 1497.05, -687.89, 95.56, 446.67, 1397.72, 1084.3),
(10, 'LS House', 'AdmBot', 1, 'offline', 2, 7, 0, 6, 2010, 8000000, 0, 250, 1442.57, -629.01, 95.72, 2196.61, -1204.45, 1049.02),
(11, 'LS House', 'Nobody', 0, 'offline', 3, 10, 0, 5, 2011, 3000000, 0, 250, 1332.28, -633.45, 109.13, 140.08, 1366.48, 1083.86),
(12, 'LS House', 'Nobody', 0, 'offline', 3, 10, 0, 5, 2012, 10000000, 0, 250, 1112.64, -742.03, 100.13, 140.08, 1366.48, 1083.86),
(13, 'LS House', 'Nobody', 0, 'offline', 3, 10, 0, 5, 2013, 10000000, 0, 250, 980.46, -677.28, 121.98, 140.08, 1366.48, 1083.86),
(14, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 10, 2014, 8000000, 0, 250, 989.97, -828.56, 95.47, 23.86, 1341.18, 1084.38),
(15, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 6, 2015, 6000000, 0, 250, 937.8, -848.74, 93.58, -68.8, 1351.49, 1080.21),
(16, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 10, 2016, 8000000, 0, 250, 827.88, -857.96, 70.33, 23.86, 1341.18, 1084.38),
(17, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 6, 2017, 8000000, 0, 250, 835.98, -894.87, 68.77, 2196.61, -1204.45, 1049.02),
(18, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 10, 2018, 8000000, 0, 250, 724.74, -999.4, 52.73, 23.86, 1341.18, 1084.38),
(19, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 10, 2019, 8000000, 0, 250, 700.17, -1060.48, 49.42, 23.86, 1341.18, 1084.38),
(20, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 10, 2020, 8000000, 0, 250, 646.01, -1117.4, 44.21, 23.86, 1341.18, 1084.38),
(21, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 2, 2021, 8000000, 0, 250, 432.12, -1253.93, 51.58, 2455.65, -1706.04, 1013.51),
(22, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 6, 2022, 8000000, 0, 250, 398.25, -1271.33, 50.02, 2196.61, -1204.45, 1049.02),
(23, 'LS House', 'AdmBot', 1, 'offline', 3, 10, 0, 2, 2023, 10000000, 0, 250, 300.31, -1154.51, 81.39, 446.67, 1397.72, 1084.3),
(24, 'LS House', 'Nobody', 0, 'offline', 3, 10, 0, 2, 2024, 12000000, 250, 250, 251.55, -1220.13, 76.1, 446.67, 1397.72, 1084.3),
(25, 'LS House', 'Nobody', 0, 'offline', 3, 10, 0, 4, 2025, 10000000, 250, 250, 253.21, -1269.99, 74.43, -261.31, 1456.92, 1084.37),
(26, 'LS House', 'Nobody', 0, 'offline', 3, 10, 0, 4, 2026, 12000000, 250, 250, 298.81, -1338.53, 53.44, -261.31, 1456.92, 1084.37),
(27, 'LS House', 'Nobody', 0, 'offline', 3, 10, 0, 2, 2027, 10000000, 0, 250, 167.9, -1308.19, 70.35, 446.67, 1397.72, 1084.3),
(28, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 10, 2028, 8000000, 0, 250, 228.09, -1405.51, 51.61, 23.86, 1341.18, 1084.38),
(29, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 10, 2029, 8000000, 0, 250, 142.69, -1470.41, 25.21, 23.86, 1341.18, 1084.38),
(30, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 10, 2030, 8000000, 0, 250, 280.86, -1767.07, 4.55, 23.86, 1341.18, 1084.38),
(31, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 1, 2031, 6000000, 0, 250, 295.49, -1764.12, 4.87, 223.03, 1287.52, 1082.14),
(32, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 2, 2032, 8000000, 250, 250, 315.8, -1769.43, 4.62, 2455.65, -1706.04, 1013.51),
(33, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 2, 2033, 8000000, 0, 250, 693.76, -1645.83, 4.09, 2455.65, -1706.04, 1013.51),
(34, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 6, 2034, 6000000, 500, 250, 697.28, -1627.07, 3.75, -68.8, 1351.49, 1080.21),
(35, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 1, 2035, 6000000, 0, 250, 694.57, -1690.74, 4.35, 223.03, 1287.52, 1082.14),
(36, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 1, 2036, 3000000, 0, 250, 693.54, -1705.9, 3.82, 223.03, 1287.52, 1082.14),
(37, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 8, 2037, 6000000, 0, 250, 769.22, -1745.89, 13.08, -42.58, 1405.94, 1084.43),
(38, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 2, 2038, 8000000, 0, 250, 769.23, -1696.63, 5.16, 2455.65, -1706.04, 1013.51),
(39, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 6, 2039, 8000000, 0, 250, 768.08, -1655.68, 5.61, 2196.61, -1204.45, 1049.02),
(40, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 1, 2040, 6000000, 0, 250, 766.92, -1605.85, 13.8, 223.03, 1287.52, 1082.14),
(41, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 6, 2041, 6000000, 0, 250, 852.34, -1423.26, 14.14, -68.8, 1351.49, 1080.21),
(42, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 10, 2042, 8000000, 250, 250, 824.51, -1424.2, 14.5, 23.86, 1341.18, 1084.38),
(43, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 6, 2043, 8000000, 0, 250, 880.21, -1424.82, 14.48, 2196.61, -1204.45, 1049.02),
(44, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 1, 2044, 6000000, 250, 250, 1854.06, -1914.26, 15.26, 223.03, 1287.52, 1082.14),
(45, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 1, 2045, 6000000, 0, 250, 1872.24, -1911.79, 15.26, 223.03, 1287.52, 1082.14),
(46, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 6, 2046, 6000000, 0, 250, 1891.86, -1914.4, 15.26, -68.8, 1351.49, 1080.21),
(47, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 6, 2047, 6000000, 0, 250, 1913.49, -1911.91, 15.26, -68.8, 1351.49, 1080.21),
(48, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 1, 2048, 6000000, 0, 250, 1938.54, -1911.2, 15.26, 223.03, 1287.52, 1082.14),
(49, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 6, 2049, 3000000, 0, 250, 1980.37, -1719.09, 17.03, 2196.61, -1204.45, 1049.02),
(50, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 10, 2050, 8000000, 0, 250, 1981, -1682.95, 17.05, 23.86, 1341.18, 1084.38),
(51, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 1, 2051, 6000000, 0, 250, 2016.2, -1717.05, 14.12, 223.03, 1287.52, 1082.14),
(52, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 1, 2052, 6000000, 0, 250, 2018.24, -1703.15, 14.23, 223.03, 1287.52, 1082.14),
(53, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 10, 2053, 8000000, 0, 250, 2065.1, -1703.44, 14.15, 23.86, 1341.18, 1084.38),
(54, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 8, 2054, 6000000, 0, 250, 2067.06, -1731.57, 14.21, -42.58, 1405.94, 1084.43),
(55, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 6, 2055, 3000000, 0, 250, 2067.7, -1628.95, 14.21, -68.8, 1351.49, 1080.21),
(56, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 1, 2056, 6000000, 0, 250, 1246.23, -909.01, 46.6, 223.03, 1287.52, 1082.14),
(57, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 1, 2057, 6000000, 0, 250, 1253.71, -908.09, 46.6, 223.03, 1287.52, 1082.14),
(58, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 1, 2058, 6000000, 0, 250, 1291.02, -896.91, 46.63, 223.03, 1287.52, 1082.14),
(59, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 1, 2059, 6000000, 250, 250, 1284.32, -903.8, 46.63, 223.03, 1287.52, 1082.14),
(60, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 6, 2060, 6000000, 0, 250, 1291.84, -903.08, 46.63, -68.8, 1351.49, 1080.21),
(61, 'LS House', 'Nobody', 0, 'offline', 3, 10, 0, 5, 2061, 12000000, 0, 250, 1111.57, -976.45, 42.77, 140.08, 1366.48, 1083.86),
(62, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 6, 2062, 8000000, 0, 250, 2148.93, -1484.81, 26.62, 2196.61, -1204.45, 1049.02),
(63, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 1, 2063, 6000000, 0, 250, 2149.86, -1433.85, 26.07, 223.03, 1287.52, 1082.14),
(64, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 8, 2064, 8000000, 250, 250, 2150.92, -1418.87, 25.92, -42.58, 1405.94, 1084.43),
(65, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 1, 2065, 6000000, 250, 250, 2184.97, -1363.71, 26.16, 223.03, 1287.52, 1082.14),
(66, 'LS House', 'Nobody', 0, 'offline', 3, 10, 0, 4, 2066, 10000000, 0, 250, 2233.98, -1333.41, 23.98, -261.31, 1456.92, 1084.37),
(67, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 10, 2067, 8000000, 0, 250, 745.67, -591.09, 18.01, 23.86, 1341.18, 1084.38),
(68, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 6, 2068, 8000000, 0, 250, 745.1, -556.78, 18.01, 2196.61, -1204.45, 1049.02),
(69, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 10, 2069, 8000000, 0, 250, 743.27, -509.32, 18.01, 23.86, 1341.18, 1084.38),
(70, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 1, 2070, 6000000, 0, 250, 768.31, -503.49, 18.01, 223.03, 1287.52, 1082.14),
(71, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 10, 2071, 8000000, 250, 250, 766.65, -556.78, 18.01, 23.86, 1341.18, 1084.38),
(72, 'LS House', 'Nobody', 0, 'offline', 3, 10, 0, 4, 2072, 10000000, 500, 250, 795.18, -506.15, 18.01, -261.31, 1456.92, 1084.37),
(73, 'LS House', 'Nobody', 0, 'offline', 1, 5, 0, 8, 2073, 6000000, 250, 250, 818.29, -509.32, 18.01, -42.58, 1405.94, 1084.43),
(74, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 10, 2074, 8000000, 0, 250, 416.71, -1154.11, 76.69, 23.86, 1341.18, 1084.38),
(75, 'LS House', 'Nobody', 0, 'offline', 2, 7, 0, 6, 2075, 8000000, 0, 250, 470.95, -1163.51, 67.22, 2196.61, -1204.45, 1049.02),
(76, 'LV House', 'Nobody', 0, 'offline', 3, 5, 0, 2, 2076, 5000000, 0, 250, -684.18, 939.5, 13.63, 446.66, 1397.72, 1084.3),
(77, 'LV House', 'Nobody', 0, 'offline', 3, 5, 0, 4, 2077, 5000000, 0, 500, 854.42, -604.63, 18.42, -261.31, 1456.92, 1084.36),
(78, 'LV House', 'Nobody', 0, 'offline', 3, 15, 0, 2, 2078, 5000000, 0, 500, 952.61, -910.3, 45.76, 446.66, 1397.72, 1084.3),
(79, 'LV House', 'Nobody', 0, 'offline', 3, 5, 0, 2, 2079, 1000000, 0, 500, 1081.12, -1696.92, 13.54, 446.66, 1397.72, 1084.3),
(80, 'LV House', 'Nobody', 0, 'offline', 3, 3, 0, 4, 2080, 100000, 0, 500, 1259.03, -785.41, 92.03, -261.31, 1456.92, 1084.36),
(82, 'LV House', 'Nobody', 0, 'offline', 2, 5, 0, 2, 2082, 1000000, 0, 500, 1570.44, -1337.45, 16.48, 2455.64, -1706.04, 1013.5),
(81, 'LV House', 'Nobody', 0, 'offline', 3, 5, 0, 2, 2081, 1000000, 0, 500, 1699.73, -1667.83, 20.2, 446.66, 1397.72, 1084.3);

-- --------------------------------------------------------

--
-- Table structure for table `server_joblocations`
--

CREATE TABLE IF NOT EXISTS `server_joblocations` (
  `locKey` smallint(6) NOT NULL,
  `locJobID` smallint(6) NOT NULL,
  `locPosX` float NOT NULL,
  `locPosY` float NOT NULL,
  `locPosZ` float NOT NULL,
  `locText` varchar(16) NOT NULL DEFAULT 'NONE',
  `locTrailer` int(11) NOT NULL DEFAULT 435
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `server_joblocations`
--

INSERT INTO `server_joblocations` (`locKey`, `locJobID`, `locPosX`, `locPosY`, `locPosZ`, `locText`, `locTrailer`) VALUES
(1, 1, 620.952, 841.468, -43.2339, 'Pietris', 450),
(2, 1, -1292.22, 2706.53, 49.7698, 'Petrol', 584),
(3, 1, -2463.33, 2224.76, 4.5518, 'Inghetata', 591),
(4, 1, -2461.8, 784.81, 34.879, 'Alimente', 435),
(5, 1, 859.36, -1290.94, 13.4334, 'Bautura', 435),
(6, 1, 1362.41, 479.682, 20.7905, 'Benzina', 584),
(7, 1, -547.222, -190.244, 79.0124, 'Rumegus', 450),
(8, 1, -585.653, -1068.54, 23.966, 'Alimente', 435);

-- --------------------------------------------------------

--
-- Table structure for table `server_jobs`
--

CREATE TABLE IF NOT EXISTS `server_jobs` (
  `jobKey` int(11) NOT NULL,
  `jobName` text NOT NULL,
  `jobLocation` varchar(32) NOT NULL DEFAULT 'Las Ventura',
  `jobType` varchar(12) NOT NULL DEFAULT 'Legal',
  `jobLevel` tinyint(4) NOT NULL DEFAULT 1,
  `jobSkin` smallint(6) NOT NULL DEFAULT 0,
  `jobPosX` float NOT NULL,
  `jobPosY` float NOT NULL,
  `jobPosZ` float NOT NULL,
  `jobActorX` float NOT NULL,
  `jobActorY` float NOT NULL,
  `jobActorZ` float NOT NULL,
  `jobActorR` float NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `server_jobs`
--

INSERT INTO `server_jobs` (`jobKey`, `jobName`, `jobLocation`, `jobType`, `jobLevel`, `jobSkin`, `jobPosX`, `jobPosY`, `jobPosZ`, `jobActorX`, `jobActorY`, `jobActorZ`, `jobActorR`) VALUES
(1, 'Trucker', 'Los Santos', '0', 1, 34, 2176.28, -2258.82, 14.7734, 2176.37, -2261.78, 14.7734, 319.082),
(2, 'Farmer', 'Los Santos', '0', 1, 133, -366.101, -1413.13, 25.7266, -362.406, -1411.95, 25.7266, 93.6839),
(3, 'Pizza Boy', 'Los Santos', '0', 1, 155, 2105.18, -1806.42, 13.5547, 2105.25, -1803.89, 13.5547, 168.678),
(4, 'Pilot', 'Las Venturas', '0', 2, 61, 1319.08, 1252.74, 10.8203, 1316.17, 1255.56, 10.8203, 1.8531),
(5, 'Arms Dealer', 'Las Venturas', '1', 3, 29, 794.431, 1687.3, 5.2813, 794.645, 1684.47, 5.2813, 262.067),
(6, 'Car Jacker', 'Las Venturas', '1', 3, 112, 2371.92, 2758.54, 10.8203, 2373.69, 2758.38, 10.8203, 88.624),
(8, 'Fisher', 'Los Santos', '0', 2, 45, 2160.76, -98.1624, 2.8224, 2162.34, -98.0268, 2.8107, 29.6931),
(9, 'Detective', 'Los Santos', '0', 5, 33, 608.155, -1438.53, 14.075, 608.999, -1436.92, 14.0681, 234.133),
(10, 'Mechanic', 'Los Santos', '0', 1, 50, 912.306, -1232.3, 16.9766, 915.003, -1232.08, 16.9766, 353.273),
(11, 'Sweeper', 'Los Santos', '0', 1, 8, 2139.96, -1192.03, 23.9922, 2140.34, -1190.51, 23.9922, 270.504),
(7, 'Uber Driver', 'Los Santos', '0', 5, 304, 1210.14, -1750.5, 13.5938, 1209.44, -1751.74, 13.5936, 20.3904),
(12, 'Garbage Man', 'Los Santos', '0', 1, 137, 2195.77, -1972.67, 13.6351, 2192.27, -1972.07, 13.5598, 178.943),
(13, 'Drugs Dealer', 'Los Santos', '1', 4, 28, 2165.1, -1672.81, 15.0773, 2164.14, -1675.68, 15.0859, 221.698),
(14, 'Transporter', 'Los Santos', '1', 5, 21, 1489.07, -1720.09, 8.2373, 1489.94, -1722.3, 8.2038, 166.61);

-- --------------------------------------------------------

--
-- Table structure for table `server_logs_changename`
--

CREATE TABLE IF NOT EXISTS `server_logs_changename` (
  `logKey` int(11) NOT NULL,
  `logPlayerKey` int(11) NOT NULL,
  `logNameOld` text NOT NULL,
  `logNameNew` text NOT NULL,
  `logDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `server_logs_chat`
--

CREATE TABLE IF NOT EXISTS `server_logs_chat` (
  `logKey` int(11) NOT NULL,
  `logPlayerID` int(11) NOT NULL,
  `logText` varchar(256) NOT NULL,
  `logChat` varchar(16) NOT NULL,
  `logDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `server_logs_cmds`
--

CREATE TABLE IF NOT EXISTS `server_logs_cmds` (
  `logKey` int(11) NOT NULL,
  `logPlayerID` int(11) NOT NULL,
  `logPlayer` int(11) NOT NULL,
  `logCMD` varchar(32) NOT NULL,
  `logText` varchar(64) NOT NULL,
  `logDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `server_logs_panel`
--

CREATE TABLE IF NOT EXISTS `server_logs_panel` (
  `logKey` int(11) NOT NULL,
  `logPlayerKey` int(11) NOT NULL,
  `logType` int(11) NOT NULL DEFAULT 0,
  `logAddress` varchar(64) NOT NULL,
  `logDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `server_logs_player`
--

CREATE TABLE IF NOT EXISTS `server_logs_player` (
  `logKey` int(11) NOT NULL,
  `logPlayerID` int(11) NOT NULL,
  `logPlayer` int(11) NOT NULL DEFAULT 0,
  `logAction` varchar(256) NOT NULL,
  `logDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `server_logs_vehicles`
--

CREATE TABLE IF NOT EXISTS `server_logs_vehicles` (
  `logKey` int(11) NOT NULL,
  `logVehicle` int(11) NOT NULL,
  `logPlayer` int(11) NOT NULL,
  `logText` text NOT NULL,
  `logDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `server_objectquest`
--

CREATE TABLE IF NOT EXISTS `server_objectquest` (
  `objKey` int(11) NOT NULL,
  `objModel` int(11) NOT NULL DEFAULT 19055 COMMENT 'Default: XMas Present',
  `objPosX` float NOT NULL,
  `objPosY` float NOT NULL,
  `objPosZ` float NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

--
-- Dumping data for table `server_objectquest`
--

INSERT INTO `server_objectquest` (`objKey`, `objModel`, `objPosX`, `objPosY`, `objPosZ`) VALUES
(1, 1276, 2277.9, -930.245, 27.9969),
(2, 1276, 392.443, -2028.41, 23.3828),
(3, 1276, 573.505, -1570.86, 31.8074),
(4, 1276, 843.359, -1854.57, 8.4626),
(5, 1276, 1238.66, -2376.73, 1.267),
(6, 1276, 2165.09, -2247.89, 20.1587),
(7, 1276, 2721.31, -2318.6, 3),
(8, 1276, 2831.6, -2390.84, 14.6081),
(9, 1276, 2499.85, -2072.93, 26.5781),
(10, 1276, 2465.79, -1413.38, 23.75),
(11, 1276, 1952.73, -1002.97, 47.0991),
(12, 1276, 1778.04, -1383.65, 26.8161),
(13, 1276, 1526.64, -1458.37, 9.5),
(14, 1276, 1039.75, -1343.45, 22.3247),
(15, 1276, 1099.92, -824.417, 114.448),
(16, 1276, 409.18, -1313.39, 32.3516),
(17, 1276, 1385.46, -806.202, 86.3331),
(18, 1276, 1564.63, -1359.02, 329.945),
(19, 1276, 1551.54, -32.2284, 21.3475),
(20, 1276, 1271.97, 295.017, 20.6563),
(21, 1276, 245.086, -54.6413, 1.5776),
(22, 1276, 167.199, -233.995, 13.4838),
(23, 1276, -57.5083, 58.7941, 6.514),
(24, 1276, -752.737, -131.629, 65.8281),
(25, 1276, 2148.16, 92.7807, 27.2043),
(26, 1276, 2248.61, -65.4408, 34.9446),
(27, 1276, 2355.56, -647.584, 128.055),
(28, 1276, 2353.83, -1467.34, 31.9559),
(29, 1276, 2069.98, -1555.06, 13.4219),
(30, 1276, -2473.19, 1549.23, 33.2273),
(31, 1276, -1505.74, 1374.28, 3.8526),
(32, 1276, 276.14, 1817.85, 1.0078),
(33, 1276, 2323.91, 1283.18, 97.3856),
(34, 1276, -237.152, 2663.92, 73.6599),
(35, 1276, -107.112, -1575.72, 2.6172);

-- --------------------------------------------------------

--
-- Table structure for table `server_paintball`
--

CREATE TABLE IF NOT EXISTS `server_paintball` (
  `paintKey` int(11) NOT NULL,
  `paintPlayer` text NOT NULL,
  `paintKills` int(11) NOT NULL DEFAULT 0,
  `paintDeaths` int(11) NOT NULL DEFAULT 0,
  `paintDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `server_personalvehicles`
--

CREATE TABLE IF NOT EXISTS `server_personalvehicles` (
  `vehicleID` int(11) NOT NULL,
  `vehicleModelID` int(11) NOT NULL DEFAULT 0,
  `vehicleSlot` smallint(5) NOT NULL DEFAULT 0,
  `vehiclePosX` float NOT NULL DEFAULT 390.923,
  `vehiclePosY` float NOT NULL DEFAULT -1524.13,
  `vehiclePosZ` float NOT NULL DEFAULT 32.1606,
  `vehiclePosRotation` float NOT NULL DEFAULT 40.3619,
  `vehicleOwner` int(12) NOT NULL DEFAULT 0,
  `vehicleVIP` tinyint(1) NOT NULL DEFAULT 0,
  `vehicleVIPText` text DEFAULT NULL,
  `vehicleVIPWheel` int(11) NOT NULL DEFAULT -1,
  `vehicleVIPColor` varchar(16) NOT NULL DEFAULT '{FFFFFF}',
  `vehicleVIPNeon` int(11) NOT NULL DEFAULT 65535,
  `vehicleOdometter` float DEFAULT 0,
  `vehicleFuel` float NOT NULL DEFAULT 200,
  `vehicleHealth` float NOT NULL DEFAULT 1000,
  `vehicleDamage` varchar(128) NOT NULL DEFAULT '0:0:0:0',
  `vehicleDays` int(11) NOT NULL DEFAULT 0,
  `vehicleLocked` tinyint(1) NOT NULL DEFAULT 0,
  `vehicleMods` varchar(64) NOT NULL DEFAULT '0:0:0:0:0:0:0:0:0:0:0:0:0',
  `vehiclePaintJob` int(11) NOT NULL DEFAULT -1,
  `vehicleCol1` int(4) NOT NULL DEFAULT -1,
  `vehicleCol2` int(4) NOT NULL DEFAULT -1,
  `vehicleInsurance` int(11) NOT NULL DEFAULT 1000,
  `vehicleInsurancePoints` int(11) NOT NULL DEFAULT 10,
  `vehicleNumberPlate` varchar(16) NOT NULL DEFAULT 'FIXED RPG',
  `Money` int(11) NOT NULL DEFAULT 0,
  `PP` int(11) NOT NULL DEFAULT 0,
  `vehicleDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `server_pubg_data`
--

CREATE TABLE IF NOT EXISTS `server_pubg_data` (
  `pubgKey` int(11) NOT NULL,
  `sqlID` int(11) NOT NULL,
  `Name` varchar(26) NOT NULL,
  `Skin` int(4) NOT NULL DEFAULT 1,
  `NickHead` int(11) NOT NULL,
  `Coins` int(11) NOT NULL,
  `Played` int(11) NOT NULL,
  `Wins` int(11) NOT NULL,
  `MHands` int(11) NOT NULL,
  `MDE` int(11) NOT NULL,
  `M9mm` int(11) NOT NULL,
  `MS9mm` int(11) NOT NULL,
  `MSG` int(11) NOT NULL,
  `MSS` int(11) NOT NULL,
  `MM4` int(11) NOT NULL,
  `MAK47` int(11) NOT NULL,
  `MMP5` int(11) NOT NULL,
  `MGrenade` int(11) NOT NULL,
  `MMC` int(11) NOT NULL,
  `MCR` int(11) NOT NULL,
  `MSR` int(11) NOT NULL,
  `DHands` int(11) NOT NULL,
  `DDE` int(11) NOT NULL,
  `D9mm` int(11) NOT NULL,
  `DS9mm` int(11) NOT NULL,
  `DSG` int(11) NOT NULL,
  `DSS` int(11) NOT NULL,
  `DM4` int(11) NOT NULL,
  `DAK47` int(11) NOT NULL,
  `DMP5` int(11) NOT NULL,
  `DGrenade` int(11) NOT NULL,
  `DMC` int(11) NOT NULL,
  `DCR` int(11) NOT NULL,
  `DSR` int(11) NOT NULL,
  `DOTHER` int(11) NOT NULL,
  `Rewards` int(11) NOT NULL,
  `RewardsC` int(11) NOT NULL,
  `Skins` varchar(200) NOT NULL DEFAULT '1,2,3,4,5,14,15,18,19,20,13,39,41,54,69,75,77,89,90,131'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `server_punish`
--

CREATE TABLE IF NOT EXISTS `server_punish` (
  `punishKey` int(11) NOT NULL,
  `punishPlayerID` int(11) NOT NULL,
  `punishAdminID` int(11) NOT NULL,
  `punishPlayer` text NOT NULL,
  `punishAdmin` varchar(32) NOT NULL,
  `punishValue` int(11) NOT NULL DEFAULT 0,
  `punishType` int(11) NOT NULL DEFAULT 0,
  `punishComplaint` int(11) NOT NULL DEFAULT 0,
  `punishReason` varchar(128) NOT NULL DEFAULT 'N/A',
  `punishDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `server_races`
--

CREATE TABLE IF NOT EXISTS `server_races` (
  `raceKey` int(11) NOT NULL,
  `raceName` varchar(40) NOT NULL,
  `raceTotalCP` int(5) NOT NULL,
  `BestRacer` varchar(26) NOT NULL,
  `BestRacerSkinID` int(32) NOT NULL DEFAULT 0,
  `BestTimeRacer` int(11) NOT NULL,
  `BestRacerTimeDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `server_races`
--

INSERT INTO `server_races` (`raceKey`, `raceName`, `raceTotalCP`, `BestRacer`, `BestRacerSkinID`, `BestTimeRacer`, `BestRacerTimeDate`) VALUES
(1, 'Airport Race', 20, 'NONE', 0, 300, '0000-00-00 00:00:00'),
(2, 'Beach Race', 23, 'NONE', 0, 300, '0000-00-00 00:00:00'),
(3, 'Chilliad Race', 54, 'HaoSs07', 292, 120, '2018-11-25 02:54:20');

-- --------------------------------------------------------

--
-- Table structure for table `server_stats`
--

CREATE TABLE IF NOT EXISTS `server_stats` (
  `statsKey` int(11) NOT NULL DEFAULT 0,
  `statsWeather` int(11) NOT NULL DEFAULT 1,
  `statsSack` int(11) NOT NULL DEFAULT 0,
  `statsFish` int(11) NOT NULL DEFAULT 0,
  `statsPizza` int(11) NOT NULL DEFAULT 0,
  `statsTruck` int(11) NOT NULL DEFAULT 0,
  `statsArms` int(11) NOT NULL DEFAULT 0,
  `statsTow` int(11) NOT NULL DEFAULT 0,
  `statsBusDriver` int(11) NOT NULL DEFAULT 0,
  `giftStatus` tinyint(1) NOT NULL DEFAULT 0,
  `giftPosX` float NOT NULL DEFAULT 0,
  `giftPosY` float NOT NULL DEFAULT 0,
  `giftPosZ` float NOT NULL DEFAULT 0,
  `giftPosR` float NOT NULL DEFAULT 0,
  `giftOpen` int(11) NOT NULL DEFAULT 0,
  `giftPremium` int(11) NOT NULL DEFAULT 0,
  `giftVehicles` int(11) NOT NULL DEFAULT 0,
  `giftHiddens` int(11) NOT NULL DEFAULT 0,
  `giftVSlots` int(11) NOT NULL DEFAULT 0,
  `giftMaterials` int(11) NOT NULL DEFAULT 0,
  `giftMoney` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

--
-- Dumping data for table `server_stats`
--

INSERT INTO `server_stats` (`statsKey`, `statsWeather`, `statsSack`, `statsFish`, `statsPizza`, `statsTruck`, `statsArms`, `statsTow`, `statsBusDriver`, `giftStatus`, `giftPosX`, `giftPosY`, `giftPosZ`, `giftPosR`, `giftOpen`, `giftPremium`, `giftVehicles`, `giftHiddens`, `giftVSlots`, `giftMaterials`, `giftMoney`) VALUES
(1, 7, 77, 5, 12, 27, 1000, 2, 100, 1, 1742.04, -1845.76, 13.57, 28.51, 107, 0, 1, 19, 0, 126712, 1937621);

-- --------------------------------------------------------

--
-- Table structure for table `server_teles`
--

CREATE TABLE IF NOT EXISTS `server_teles` (
  `teleKey` int(11) NOT NULL,
  `teleName` varchar(32) NOT NULL DEFAULT 'None',
  `telePickup` smallint(6) NOT NULL DEFAULT 1239,
  `teleInterior` smallint(6) NOT NULL DEFAULT 0,
  `teleInteriorExit` smallint(6) NOT NULL DEFAULT 0,
  `teleVirtual` smallint(6) NOT NULL DEFAULT 0,
  `teleVirtualExit` smallint(6) NOT NULL DEFAULT 0,
  `teleEnterX` float NOT NULL,
  `teleEnterY` float NOT NULL,
  `teleEnterZ` float NOT NULL,
  `teleExitX` float NOT NULL,
  `teleExitY` float NOT NULL,
  `teleExitZ` float NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `server_teles`
--

INSERT INTO `server_teles` (`teleKey`, `teleName`, `telePickup`, `teleInterior`, `teleInteriorExit`, `teleVirtual`, `teleVirtualExit`, `teleEnterX`, `teleEnterY`, `teleEnterZ`, `teleExitX`, `teleExitY`, `teleExitZ`) VALUES
(1, 'Garaj LSPD', 1239, 6, 0, 0, 0, 246.359, 87.9045, 1003.64, 1568.59, -1690.41, 5.8906),
(2, 'Bank Safe', 1239, 0, 1, 2004, 2004, 2315.62, -0.2551, 26.7422, 2144.18, 1609.46, 993.688),
(3, 'Los Santos Police Department', 1239, 0, 6, 0, 0, 1555.04, -1675.78, 16.1953, 246.601, 62.8918, 1003.64),
(4, 'Event Arena', 1239, 15, 0, 0, 0, -1424.24, 929.32, 1036.4, 1022.53, -1121.65, 23.872),
(5, 'Crack House', 1239, 5, 0, 0, 0, 318.617, 1115.7, 1083.88, 2166.27, -1671.61, 15.0739),
(6, 'Paramedic Roof', 1239, 3, 0, 5003, 0, 366.575, 158.746, 1008.38, 2049.57, -1405.41, 48.3359),
(7, 'Gunshop Interior', 1239, 7, 7, 2003, 2003, 305.545, -141.91, 1003.67, 299.143, -141.681, 1003.67),
(8, 'Gunshop Interior', 1239, 7, 7, 2037, 2037, 305.545, -141.91, 1003.67, 299.143, -141.681, 1003.67),
(9, 'Ballas Roof', 1239, 3, 0, 5025, 0, 966.058, -43.0133, 1001.12, 2193.01, -1151.37, 33.524),
(10, 'LSPD Roof', 1239, 0, 0, 0, 0, 1564.82, -1665.55, 28.3956, 1570.7, -1635.92, 13.5533),
(17, 'Hotel Heli\'s', 1239, 0, 0, 0, 0, 277.461, -1596.79, 33.0804, 268.711, -1618.22, 114.422);

-- --------------------------------------------------------

--
-- Table structure for table `server_tokens`
--

CREATE TABLE IF NOT EXISTS `server_tokens` (
  `tokenKey` int(11) NOT NULL,
  `tokenAdmin` varchar(32) NOT NULL DEFAULT 'N/A',
  `tokenType` tinyint(4) NOT NULL,
  `tokenValue` int(11) NOT NULL,
  `tokenCode` varchar(16) NOT NULL DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `server_turfs`
--

CREATE TABLE IF NOT EXISTS `server_turfs` (
  `turfKey` int(11) NOT NULL,
  `turfOwner` smallint(6) NOT NULL DEFAULT 0,
  `turfMinX` float NOT NULL,
  `turfMinY` float NOT NULL,
  `turfMaxX` float NOT NULL,
  `turfMaxY` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `server_turfs`
--

INSERT INTO `server_turfs` (`turfKey`, `turfOwner`, `turfMinX`, `turfMinY`, `turfMaxX`, `turfMaxY`) VALUES
(1, 10, 114.21, -1364.93, 506.54, -912.91),
(2, 8, 506.54, -1364.93, 899.25, -912.91),
(3, 8, 899.25, -1313.7, 1313.58, -912.91),
(4, 7, 1313.58, -1364.93, 1727.49, -912.91),
(5, 10, 1727.49, -1364.93, 2108.13, -912.91),
(6, 9, 2108.13, -1364.93, 2499.38, -912.91),
(7, 8, 2499.38, -1313.7, 2916.17, -912.91),
(8, 7, 114.21, -1821.03, 506.54, -1364.93),
(9, 10, 506.54, -1821.03, 899.25, -1364.93),
(10, 8, 899.25, -1721.9, 1313.58, -1313.7),
(11, 8, 1313.58, -1821.03, 1727.49, -1364.93),
(12, 7, 1727.49, -1821.03, 2108.13, -1364.93),
(13, 10, 2108.13, -1821.03, 2499.38, -1364.93),
(14, 9, 2499.38, -1737.65, 2916.17, -1313.7),
(15, 8, 899.25, -2131.32, 1313.58, -1721.9),
(16, 7, 899.25, -2489.99, 1313.58, -2131.32),
(17, 10, 1313.58, -2250.92, 1727.49, -1821.03),
(18, 8, 1727.49, -2250.92, 2108.13, -1821.03),
(19, 8, 2108.13, -2250.92, 2499.38, -1821.03),
(20, 7, 2499.38, -2172.41, 2916.17, -1737.65),
(21, 10, 1313.58, -2690.47, 1727.49, -2250.92),
(22, 9, 1727.49, -2690.47, 2108.13, -2250.92),
(23, 8, 2108.13, -2690.47, 2499.38, -2250.92),
(24, 7, 2499.38, -2567.91, 2916.17, -2172.41);

-- --------------------------------------------------------

--
-- Table structure for table `server_underwaterquest`
--

CREATE TABLE IF NOT EXISTS `server_underwaterquest` (
  `objKey` int(11) NOT NULL,
  `objModel` int(11) NOT NULL DEFAULT 2782 COMMENT 'Default: CJ_OYSTER_2',
  `objPosX` float NOT NULL,
  `objPosY` float NOT NULL,
  `objPosZ` float NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

--
-- Dumping data for table `server_underwaterquest`
--

INSERT INTO `server_underwaterquest` (`objKey`, `objModel`, `objPosX`, `objPosY`, `objPosZ`) VALUES
(1, 2782, 692.055, -2251.8, -32.0456);

-- --------------------------------------------------------

--
-- Table structure for table `server_vehicles`
--

CREATE TABLE IF NOT EXISTS `server_vehicles` (
  `vehicleID` int(11) NOT NULL,
  `vehicleModelID` int(11) NOT NULL DEFAULT 0,
  `vehiclePosX` varchar(255) NOT NULL DEFAULT '0',
  `vehiclePosY` varchar(255) NOT NULL DEFAULT '0',
  `vehiclePosZ` varchar(255) NOT NULL DEFAULT '0',
  `vehiclePosRotation` varchar(255) NOT NULL DEFAULT '0',
  `vehicleFaction` int(12) NOT NULL DEFAULT 0,
  `vehicleFactionRank` int(6) DEFAULT 0,
  `vehicleJob` int(12) NOT NULL DEFAULT 0,
  `vehicleCol1` int(4) NOT NULL DEFAULT -1,
  `vehicleCol2` int(4) NOT NULL DEFAULT -1,
  `vehicleNumberPlate` varchar(255) NOT NULL DEFAULT 'LV-FRPG',
  `IS_HOTEL_CAR` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `server_vehicles`
--

INSERT INTO `server_vehicles` (`vehicleID`, `vehicleModelID`, `vehiclePosX`, `vehiclePosY`, `vehiclePosZ`, `vehiclePosRotation`, `vehicleFaction`, `vehicleFactionRank`, `vehicleJob`, `vehicleCol1`, `vehicleCol2`, `vehicleNumberPlate`, `IS_HOTEL_CAR`) VALUES
(1, 411, '1536.0820000', '-1667.0691000', '12.9868000', '180.5145000', 1, 4, 0, 1, 0, 'LSPD', 0),
(2, 411, '1536.0402000', '-1678.7129000', '12.9876000', '0.0000000', 1, 4, 0, 1, 0, 'LSPD', 0),
(3, 411, '1560.2208000', '-1633.3839000', '13.0550000', '89.9958000', 1, 3, 0, 1, 0, 'LSPD', 0),
(4, 411, '1568.7734000', '-1633.1171000', '13.0550000', '89.0610000', 1, 3, 0, 1, 0, 'LSPD', 0),
(5, 596, '1570.5128000', '-1710.1813000', '5.4871000', '0.0000000', 1, 1, 0, 1, 0, 'LSPD', 0),
(6, 596, '1595.4437000', '-1710.2808000', '5.4871000', '0.0000000', 1, 4, 0, 1, 0, 'LSPD', 0),
(7, 596, '1587.6792000', '-1709.9989000', '5.4871000', '0.0000000', 1, 1, 0, 1, 0, 'LSPD', 0),
(8, 596, '1578.7303000', '-1709.9714000', '5.4871000', '0.0000000', 1, 1, 0, 1, 0, 'LSPD', 0),
(9, 596, '1530.6140000', '-1645.4550000', '5.3886000', '179.6630000', 1, 1, 0, 1, 0, 'LSPD', 0),
(10, 596, '1538.6267000', '-1645.5817000', '5.3901000', '179.3031000', 1, 1, 0, 1, 0, 'LSPD', 0),
(11, 596, '1600.5664000', '-1700.2920000', '5.4950000', '89.5541000', 1, 1, 0, 1, 0, 'LSPD', 0),
(12, 596, '1600.7330000', '-1684.0803000', '5.4950000', '89.5541000', 1, 1, 0, 1, 0, 'LSPD', 0),
(13, 596, '1600.7045000', '-1691.7948000', '5.4950000', '89.5541000', 1, 1, 0, 1, 0, 'LSPD', 0),
(14, 596, '1544.0300000', '-1662.9358000', '5.4916000', '89.3350000', 1, 1, 0, 1, 0, 'LSPD', 0),
(15, 596, '1544.1826000', '-1655.0900000', '5.4916000', '89.3350000', 1, 1, 0, 1, 0, 'LSPD', 0),
(16, 596, '1543.7521000', '-1671.9913000', '5.4864000', '89.5950000', 1, 1, 0, 1, 0, 'LSPD', 0),
(17, 497, '1563.4905000', '-1652.1311000', '28.8053000', '88.1633000', 1, 3, 0, 1, 0, 'LSPD', 0),
(18, 497, '1563.6976000', '-1697.0559000', '28.8050000', '90.2238000', 1, 1, 0, 1, 0, 'LSPD', 0),
(19, 523, '1572.8696000', '-1616.5537000', '12.9917000', '150.5696000', 1, 1, 0, 1, 0, 'LSPD', 0),
(20, 523, '1552.2574000', '-1617.0787000', '13.0937000', '150.5696000', 1, 1, 0, 1, 0, 'LSPD', 0),
(21, 523, '1554.8572000', '-1616.9745000', '13.0937000', '150.5696000', 1, 1, 0, 1, 0, 'LSPD', 0),
(22, 523, '1557.8768000', '-1616.8892000', '13.0937000', '150.5696000', 1, 1, 0, 1, 0, 'LSPD', 0),
(23, 523, '1560.3353000', '-1616.8861000', '13.0937000', '150.5696000', 1, 1, 0, 1, 0, 'LSPD', 0),
(24, 523, '1563.2207000', '-1616.9725000', '13.0937000', '150.5696000', 1, 1, 0, 1, 0, 'LSPD', 0),
(25, 523, '1566.0820000', '-1617.0742000', '13.0937000', '150.5696000', 1, 1, 0, 1, 0, 'LSPD', 0),
(26, 523, '1569.2860000', '-1616.9376000', '13.0937000', '150.5696000', 1, 1, 0, 1, 0, 'LSPD', 0),
(27, 416, '2040.0853000', '-1416.2058000', '17.4767000', '133.8547000', 2, 1, 0, 3, 1, 'MEDIC', 0),
(28, 416, '2040.3500000', '-1421.9254000', '17.4767000', '133.8547000', 2, 1, 0, 3, 1, 'MEDIC', 0),
(29, 416, '2040.4097000', '-1427.5562000', '17.4767000', '133.8547000', 2, 1, 0, 3, 1, 'MEDIC', 0),
(30, 416, '2018.9934000', '-1412.1954000', '17.1019000', '177.4937000', 2, 1, 0, 3, 1, 'MEDIC', 0),
(31, 416, '2009.7631000', '-1412.1954000', '17.1019000', '177.4937000', 2, 1, 0, 3, 1, 'MEDIC', 0),
(32, 416, '2014.2411000', '-1412.1954000', '17.1019000', '177.4937000', 2, 1, 0, 3, 1, 'MEDIC', 0),
(33, 416, '2004.9673000', '-1412.1954000', '17.1019000', '177.4937000', 2, 1, 0, 3, 1, 'MEDIC', 0),
(34, 490, '2015.4578000', '-1442.9041000', '14.6154000', '88.9500000', 2, 3, 0, 3, 1, 'MEDIC', 0),
(35, 490, '2023.6434000', '-1443.1234000', '16.5367000', '88.9797000', 2, 3, 0, 3, 1, 'MEDIC', 0),
(36, 490, '2009.2975000', '-1438.4398000', '13.6367000', '134.5829000', 2, 3, 0, 3, 1, 'MEDIC', 0),
(37, 563, '2061.8745000', '-1416.2687000', '49.0391000', '91.4948000', 2, 5, 0, 3, 1, 'MEDIC', 0),
(38, 420, '1777.5010000', '-1933.1909000', '13.0878000', '0.0000000', 3, 1, 0, 6, 0, 'LS-TAXI', 0),
(39, 420, '1805.7709000', '-1932.9458000', '13.0878000', '0.0000000', 3, 1, 0, 6, 0, 'LS-TAXI', 0),
(40, 420, '1801.0068000', '-1932.9872000', '13.0878000', '0.0000000', 3, 1, 0, 6, 0, 'LS-TAXI', 0),
(41, 420, '1795.8694000', '-1933.0311000', '13.0878000', '0.0000000', 3, 1, 0, 6, 0, 'LS-TAXI', 0),
(42, 420, '1791.5385000', '-1933.0685000', '13.0878000', '0.0000000', 3, 1, 0, 6, 0, 'LS-TAXI', 0),
(43, 420, '1787.1959000', '-1933.1062000', '13.0878000', '0.0000000', 3, 1, 0, 6, 0, 'LS-TAXI', 0),
(44, 420, '1782.4058000', '-1933.1481000', '13.0878000', '0.0000000', 3, 1, 0, 6, 0, 'LS-TAXI', 0),
(45, 560, '1774.0619000', '-1910.2076000', '12.9891000', '0.0000000', 3, 3, 0, 6, 0, 'LS-TAXI', 0),
(46, 560, '1773.8563000', '-1926.6433000', '12.9891000', '0.0000000', 3, 3, 0, 6, 0, 'LS-TAXI', 0),
(47, 560, '1773.9600000', '-1918.4563000', '12.9891000', '0.0000000', 3, 3, 0, 6, 0, 'LS-TAXI', 0),
(48, 560, '1807.1178000', '-1909.0623000', '12.8575000', '0.0000000', 3, 3, 0, 6, 0, 'LS-TAXI', 0),
(49, 560, '1807.2129000', '-1926.4114000', '12.8575000', '0.0000000', 3, 3, 0, 6, 0, 'LS-TAXI', 0),
(50, 560, '1807.2133000', '-1918.7938000', '12.8575000', '0.0000000', 3, 3, 0, 6, 0, 'LS-TAXI', 0),
(51, 560, '1801.8712000', '-1884.0154000', '12.9666000', '270.1028000', 3, 3, 0, 6, 0, 'LS-TAXI', 0),
(52, 560, '1791.7540000', '-1883.9319000', '12.9666000', '270.1028000', 3, 3, 0, 6, 0, 'LS-TAXI', 0),
(53, 473, '718.7902000', '-1637.0531000', '-0.2493000', '181.6813000', 4, 0, 0, 154, 154, 'SI', 0),
(54, 473, '718.7684000', '-1627.2535000', '-0.2680000', '177.0092000', 4, 0, 0, 154, 154, 'SI', 0),
(55, 473, '718.6378000', '-1692.8735000', '-0.4855000', '180.1096000', 4, 0, 0, 154, 154, 'SI', 0),
(56, 473, '718.8638000', '-1703.2917000', '-0.0877000', '178.4225000', 4, 0, 0, 154, 154, 'SI', 0),
(57, 473, '1627.2589000', '571.8669000', '-0.2191000', '180.3575000', 4, 0, 0, 154, 154, 'SI', 0),
(58, 473, '1623.8363000', '572.2282000', '0.0029000', '183.8560000', 4, 0, 0, 154, 154, 'SI', 0),
(59, 473, '1630.3567000', '571.7930000', '-0.3037000', '178.2161000', 4, 0, 0, 154, 154, 'SI', 0),
(60, 473, '1633.0868000', '572.0027000', '-0.4737000', '178.3578000', 4, 0, 0, 154, 154, 'SI', 0),
(61, 487, '1548.4983000', '691.5729000', '10.9961000', '88.6172000', 4, 0, 0, 154, 154, 'SI', 0),
(62, 487, '1548.6831000', '699.7756000', '10.9745000', '90.3847000', 4, 0, 0, 154, 154, 'SI', 0),
(63, 461, '1450.5596000', '743.0260000', '10.5877000', '93.6036000', 4, 2, 0, 154, 154, 'SI', 0),
(64, 461, '1450.4955000', '740.8049000', '10.6075000', '88.6621000', 4, 2, 0, 154, 154, 'SI', 0),
(65, 560, '1445.4740000', '787.5865000', '10.5242000', '179.2545000', 4, 3, 0, 154, 154, 'SI', 0),
(66, 560, '1451.8907000', '787.5410000', '10.5251000', '179.4691000', 4, 3, 0, 154, 154, 'SI', 0),
(67, 560, '1458.4132000', '787.6779000', '10.5256000', '180.1651000', 4, 3, 0, 154, 154, 'SI', 0),
(68, 560, '1464.6799000', '787.7708000', '10.5257000', '180.8915000', 4, 3, 0, 154, 154, 'SI', 0),
(69, 405, '1413.5406000', '762.2529000', '10.6953000', '269.4925000', 4, 1, 0, 154, 154, 'SI', 0),
(70, 405, '1413.5356000', '755.8345000', '10.6953000', '268.7920000', 4, 1, 0, 154, 154, 'SI', 0),
(71, 405, '1413.5406000', '749.4332000', '10.6952000', '268.6110000', 4, 1, 0, 154, 154, 'SI', 0),
(72, 405, '1413.3383000', '743.0318000', '10.6933000', '269.9957000', 4, 1, 0, 154, 154, 'SI', 0),
(73, 461, '1450.9166000', '760.0690000', '10.6072000', '87.4911000', 4, 2, 0, 154, 154, 'SI', 0),
(74, 461, '1451.0436000', '757.8326000', '10.6061000', '89.3454000', 4, 2, 0, 154, 154, 'SI', 0),
(75, 582, '783.1012000', '-1367.7140000', '13.4527000', '89.4765000', 5, 1, 0, 1, 144, 'NEWS', 0),
(76, 582, '783.1012000', '-1359.0437000', '13.4527000', '89.4765000', 5, 1, 0, 1, 144, 'NEWS', 0),
(77, 582, '783.1012000', '-1351.2369000', '13.4527000', '89.4765000', 5, 1, 0, 1, 144, 'NEWS', 0),
(78, 582, '783.1012000', '-1342.3052000', '13.4527000', '89.4765000', 5, 1, 0, 1, 144, 'NEWS', 0),
(79, 582, '783.1012000', '-1377.5905000', '13.4527000', '89.4765000', 5, 1, 0, 1, 144, 'NEWS', 0),
(80, 582, '757.1122000', '-1333.8920000', '13.4600000', '180.5581000', 5, 1, 0, 1, 144, 'NEWS', 0),
(81, 582, '748.0192000', '-1333.8920000', '13.4600000', '180.5581000', 5, 1, 0, 1, 144, 'NEWS', 0),
(82, 582, '740.2666000', '-1333.9739000', '13.4600000', '180.5581000', 5, 1, 0, 1, 144, 'NEWS', 0),
(83, 582, '764.9207000', '-1333.8920000', '13.4600000', '180.5581000', 5, 1, 0, 1, 144, 'NEWS', 0),
(84, 488, '720.1004000', '-1368.7028000', '29.3693000', '0.0000000', 5, 1, 0, 1, 144, 'NEWS', 0),
(85, 488, '739.5181000', '-1368.0295000', '25.9958000', '0.0000000', 5, 3, 0, 1, 144, 'NEWS', 0),
(86, 560, '764.8139000', '-1381.8472000', '13.2658000', '0.0000000', 5, 5, 0, 144, 144, 'NEWS', 0),
(87, 560, '770.3896000', '-1381.7885000', '13.2658000', '0.0000000', 5, 1, 0, 144, 144, 'NEWS', 0),
(88, 541, '1077.1438000', '-292.9990000', '73.7078000', '178.1244000', 6, 1, 0, 181, 181, 'HIT', 0),
(89, 541, '1066.9711000', '-293.0535000', '73.7078000', '178.1244000', 6, 1, 0, 181, 181, 'HIT', 0),
(90, 402, '1070.7036000', '-293.2447000', '73.7078000', '178.1244000', 6, 1, 0, 181, 181, 'HIT', 0),
(91, 402, '1074.0193000', '-293.1683000', '73.7078000', '178.1244000', 6, 1, 0, 181, 181, 'HIT', 0),
(92, 560, '1097.1388000', '-299.0275000', '73.6032000', '179.1370000', 6, 1, 0, 181, 181, 'HIT', 0),
(93, 560, '1114.9373000', '-306.6897000', '73.7013000', '89.8408000', 6, 1, 0, 181, 181, 'HIT', 0),
(94, 487, '1040.5197000', '-348.3899000', '74.1128000', '91.4538000', 6, 1, 0, 181, 181, 'HIT', 0),
(95, 487, '1040.4927000', '-360.2445000', '74.1128000', '91.4538000', 6, 1, 0, 181, 181, 'HIT', 0),
(96, 469, '1014.3068000', '-329.1731000', '74.1095000', '272.0063000', 6, 1, 0, 181, 181, 'HIT', 0),
(97, 469, '1015.2219000', '-351.2330000', '74.1095000', '272.0063000', 6, 1, 0, 181, 181, 'HIT', 0),
(98, 469, '1014.7813000', '-340.6118000', '74.1095000', '272.0063000', 6, 1, 0, 181, 181, 'HIT', 0),
(99, 579, '2509.1685000', '-1674.3253000', '13.3648000', '341.2885000', 7, 0, 0, 234, 234, 'GROVE', 0),
(100, 579, '2473.3030000', '-1697.7531000', '13.4501000', '0.6905000', 7, 0, 0, 234, 234, 'GROVE', 0),
(101, 560, '2505.6963000', '-1693.9774000', '13.2615000', '0.7396000', 7, 0, 0, 234, 234, 'GROVE', 0),
(102, 560, '2482.3228000', '-1684.3164000', '13.1205000', '76.4794000', 7, 0, 0, 234, 234, 'GROVE', 0),
(103, 560, '2471.8433000', '-1653.8232000', '13.1071000', '89.9518000', 7, 0, 0, 234, 234, 'GROVE', 0),
(104, 560, '2483.6936000', '-1653.7373000', '13.0937000', '89.8263000', 7, 0, 0, 234, 234, 'GROVE', 0),
(105, 405, '2517.5698000', '-1668.6917000', '14.0279000', '77.7068000', 7, 0, 0, 234, 234, 'GROVE', 0),
(106, 405, '2502.8069000', '-1656.1768000', '13.3413000', '66.2544000', 7, 0, 0, 234, 234, 'GROVE', 0),
(107, 461, '2489.1570000', '-1686.6840000', '13.0887000', '13.4894000', 7, 0, 0, 234, 234, 'GROVE', 0),
(108, 461, '2491.0579000', '-1686.8445000', '13.0973000', '15.0778000', 7, 0, 0, 234, 234, 'GROVE', 0),
(109, 487, '2528.6624000', '-1677.4795000', '20.1088000', '88.7729000', 7, 6, 0, 234, 234, 'GROVE', 0),
(110, 487, '755.7973000', '-1260.3988000', '13.6628000', '0.0000000', 8, 6, 0, 6, 6, 'ORLN', 0),
(111, 461, '711.7114000', '-1303.2455000', '13.1806000', '268.4032000', 8, 1, 0, 6, 6, 'ORLN', 0),
(112, 461, '711.6752000', '-1305.8184000', '13.1806000', '268.4032000', 8, 1, 0, 6, 6, 'ORLN', 0),
(113, 579, '713.9810000', '-1251.6061000', '13.3165000', '269.4091000', 8, 1, 0, 6, 6, 'ORLN', 0),
(114, 560, '671.0170000', '-1286.3599000', '12.9336000', '0.0000000', 8, 1, 0, 6, 6, 'ORLN', 0),
(115, 560, '670.7995000', '-1266.7462000', '13.0326000', '0.0000000', 8, 1, 0, 6, 6, 'ORLN', 0),
(116, 405, '659.9236000', '-1256.6819000', '13.2353000', '0.0000000', 8, 1, 0, 6, 6, 'ORLN', 0),
(117, 405, '659.9236000', '-1296.0902000', '13.3362000', '0.0000000', 8, 1, 0, 6, 6, 'ORLN', 0),
(118, 560, '659.9236000', '-1265.3434000', '13.0253000', '0.0000000', 8, 1, 0, 6, 6, 'ORLN', 0),
(119, 560, '659.9236000', '-1284.9529000', '13.0253000', '0.0000000', 8, 1, 0, 6, 6, 'ORLN', 0),
(120, 579, '659.9236000', '-1274.4221000', '13.2283000', '0.0000000', 8, 1, 0, 6, 6, 'ORLN', 0),
(121, 461, '1139.0491000', '-2031.5958000', '68.6018000', '269.0677000', 9, 0, 0, 0, 0, 'RUSSIAN', 0),
(122, 461, '1138.8026000', '-2042.1686000', '68.5831000', '269.5563000', 9, 0, 0, 0, 0, 'RUSSIAN', 0),
(123, 579, '1253.6427000', '-2045.6470000', '59.6197000', '268.6911000', 9, 0, 0, 0, 0, 'RUSSIAN', 0),
(124, 579, '1245.4154000', '-2045.5284000', '59.8666000', '268.5733000', 9, 0, 0, 0, 0, 'RUSSIAN', 0),
(125, 560, '1242.8185000', '-2024.7382000', '59.6693000', '180.2088000', 9, 0, 0, 0, 0, 'RUSSIAN', 0),
(126, 560, '1242.7297000', '-2016.4586000', '59.6671000', '178.8789000', 9, 0, 0, 0, 0, 'RUSSIAN', 0),
(127, 405, '1246.2355000', '-2007.0400000', '59.7819000', '269.8969000', 9, 0, 0, 0, 0, 'RUSSIAN', 0),
(128, 405, '1275.0526000', '-2007.0063000', '58.9462000', '89.7737000', 9, 0, 0, 0, 0, 'RUSSIAN', 0),
(129, 560, '1279.8073000', '-2015.8817000', '58.6503000', '179.3699000', 9, 0, 0, 0, 0, 'RUSSIAN', 0),
(130, 560, '1279.6611000', '-2039.4019000', '58.7661000', '0.4857000', 9, 0, 0, 0, 0, 'RUSSIAN', 0),
(131, 487, '1159.7963000', '-2054.9463000', '69.2578000', '0.2942000', 9, 0, 0, 0, 0, 'RUSSIAN', 0),
(132, 405, '2227.7939000', '-1170.0140000', '25.6114000', '89.7862000', 10, 0, 0, 211, 211, 'BALLAS', 0),
(133, 405, '2227.9563000', '-1177.2114000', '25.6021000', '90.4855000', 10, 0, 0, 211, 211, 'BALLAS', 0),
(134, 560, '2216.5627000', '-1170.3770000', '25.4318000', '270.1372000', 10, 0, 0, 211, 211, 'BALLAS', 0),
(135, 560, '2217.5784000', '-1161.1339000', '25.4309000', '271.7606000', 10, 0, 0, 211, 211, 'BALLAS', 0),
(136, 560, '2205.4998000', '-1161.0088000', '25.4382000', '269.6137000', 10, 0, 0, 211, 211, 'BALLAS', 0),
(137, 560, '2205.6445000', '-1176.8284000', '25.4313000', '269.9848000', 10, 0, 0, 211, 211, 'BALLAS', 0),
(138, 461, '2212.5923000', '-1147.8838000', '25.3411000', '267.9482000', 10, 0, 0, 211, 211, 'BALLAS', 0),
(139, 461, '2212.6389000', '-1144.6949000', '25.3687000', '273.1162000', 10, 0, 0, 211, 211, 'BALLAS', 0),
(140, 579, '2205.7275000', '-1156.6876000', '25.7460000', '268.5684000', 10, 0, 0, 211, 211, 'BALLAS', 0),
(141, 579, '2205.9358000', '-1169.0686000', '25.6580000', '271.0868000', 10, 0, 0, 211, 211, 'BALLAS', 0),
(142, 487, '2241.3660000', '-1169.9951000', '33.7105000', '180.0943000', 10, 0, 0, 211, 211, 'BALLAS', 0),
(143, 519, '1731.5645000', '-2442.5364000', '14.5609000', '211.1526000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(144, 519, '1643.5769000', '-2440.7068000', '14.5609000', '215.7726000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(145, 513, '1993.9180000', '-2316.0320000', '14.3014000', '-235.3800000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(146, 513, '1993.7000000', '-2383.3757000', '14.3014000', '-239.1000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(147, 487, '1889.7275000', '-2624.7002000', '13.9132000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(148, 487, '1822.4452000', '-2623.1582000', '13.9132000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(149, 487, '1754.1747000', '-2623.4385000', '13.9132000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(150, 487, '1682.0782000', '-2624.8308000', '13.9132000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(151, 405, '2262.1577000', '30.4859000', '26.1588000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(152, 413, '2332.4937000', '10.7584000', '26.7095000', '269.9215000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(153, 418, '979.9298000', '-917.4772000', '41.6477000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(154, 436, '854.6270000', '-1376.2081000', '13.0534000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(155, 458, '955.6259000', '-1369.4828000', '13.2633000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(156, 478, '1110.9292000', '-1330.9374000', '13.2984000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(157, 550, '1284.5603000', '-1301.0797000', '13.2566000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(158, 466, '1363.2234000', '-1651.4182000', '13.1553000', '270.5097000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(159, 404, '1671.8669000', '-1719.2452000', '20.0837000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(160, 436, '2052.6172000', '-1903.1531000', '13.0476000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(161, 418, '2045.3540000', '-1652.5701000', '13.5518000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(162, 550, '2267.9832000', '-1432.1520000', '23.7097000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(163, 542, '1963.9757000', '-1193.4805000', '25.3984000', '0.5101000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(164, 585, '1563.6521000', '-1031.2906000', '23.3060000', '340.2793000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(165, 602, '651.3516000', '-1500.4069000', '14.6512000', '42.1613000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(166, 539, '666.9554000', '-1879.9156000', '4.8612000', '270.2406000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(167, 588, '-83.5441000', '-1573.3544000', '2.3558000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(168, 541, '797.2900000', '-617.8349000', '15.8786000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(169, 602, '2117.7397000', '956.6216000', '10.3235000', '267.7722000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(170, 413, '2814.4153000', '940.1854000', '10.5550000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(171, 463, '2105.7625000', '1289.1228000', '10.3202000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(172, 463, '1015.9489000', '-1009.5589000', '31.7028000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(173, 478, '956.2783000', '-1196.3138000', '16.8727000', '269.8542000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(174, 602, '1082.5664000', '-1766.7607000', '13.0874000', '89.4558000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(175, 413, '2598.7046000', '-2433.7617000', '13.3994000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(176, 455, '2748.9985000', '-2465.4585000', '13.7301000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(177, 443, '2248.0703000', '-2439.3938000', '14.3910000', '0.0000000', 0, 0, 0, -1, -1, 'CIVIL', 0),
(178, 409, '294.8320', '-1610.6952', '32.8070', '169.8724', 0, 0, 0, 205, 226, 'HOTEL CAR', 1),
(179, 409, '279.9618', '-1607.4210', '32.8212', '171.1677', 0, 0, 0, 205, 226, 'HOTEL CAR', 1),
(180, 487, '280.7900', '-1607.1921', '114.5890', '171.9346', 0, 0, 0, 205, 226, 'HOTEL PLANE', 1),
(181, 487, '297.6441', '-1609.6591', '114.5708', '171.0502', 0, 0, 0, 205, 226, 'HOTEL PLANE', 1),
(182, 510, '1757.3590', '-1866.0170', '13.1797', '359.1927', 0, 0, 0, 8, 2, 'CIVIL', 0),
(183, 510, '1759.1497', '-1866.0222', '13.1801', '355.4275', 0, 0, 0, 16, 25, 'CIVIL', 0),
(184, 510, '1760.4519', '-1866.1210', '13.1799', '355.4854', 0, 0, 0, 23, 23, 'CIVIL', 0),
(185, 510, '1762.1042', '-1866.0361', '13.1802', '3.3729', 0, 0, 0, 4, 10, 'CIVIL', 0),
(186, 510, '1763.8568', '-1865.9625', '13.1834', '1.5371', 0, 0, 0, 1, 1, 'CIVIL', 0),
(187, 510, '1765.8196', '-1866.0103', '13.1803', '356.6911', 0, 0, 0, 1, 1, 'CIVIL', 0),
(188, 510, '1767.7788', '-1866.0153', '13.1802', '0.3779', 0, 0, 0, 1, 1, 'CIVIL', 0),
(189, 510, '1769.5106', '-1866.0508', '13.1800', '359.7153', 0, 0, 0, 2, 2, 'CIVIL', 0),
(190, 510, '1771.2257', '-1865.9723', '13.1802', '359.2783', 0, 0, 0, 2, 2, 'CIVIL', 0),
(191, 510, '1773.1417', '-1865.9508', '13.1808', '357.3388', 0, 0, 0, 1, 1, 'CIVIL', 0);

-- --------------------------------------------------------

--
-- Table structure for table `server_warlogs`
--

CREATE TABLE IF NOT EXISTS `server_warlogs` (
  `warKey` int(11) NOT NULL,
  `warDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `warAttacker` varchar(32) NOT NULL,
  `warDefender` varchar(32) NOT NULL,
  `warScoreA` int(11) NOT NULL,
  `warScoreD` int(11) NOT NULL,
  `warResult` varchar(64) NOT NULL DEFAULT 'N/A',
  `warTurf` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `server_warlog_players`
--

CREATE TABLE IF NOT EXISTS `server_warlog_players` (
  `logKey` int(11) NOT NULL,
  `warKey` int(11) NOT NULL,
  `logPlayer` varchar(32) NOT NULL DEFAULT '',
  `logPlayerKey` int(11) NOT NULL,
  `logKills` int(11) NOT NULL DEFAULT 0,
  `logDeaths` int(11) NOT NULL DEFAULT 0,
  `logSeconds` int(11) NOT NULL,
  `logType` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `server_words`
--

CREATE TABLE IF NOT EXISTS `server_words` (
  `wordKey` int(11) NOT NULL,
  `wordText` text NOT NULL,
  `wordAdmin` int(11) NOT NULL,
  `wordDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `server_words`
--

INSERT INTO `server_words` (`wordKey`, `wordText`, `wordAdmin`, `wordDate`) VALUES
(1, 'bugged', 1, '2016-12-26 16:14:31'),
(2, 't4p', 1, '2016-12-26 17:40:33'),
(3, 'redzmax', 1, '2016-12-26 17:40:42'),
(4, 'b-zone', 1, '2016-12-26 17:41:18'),
(5, 'bzone', 1, '2016-12-26 17:41:26'),
(6, 'ogtime', 1, '2016-12-26 17:43:04'),
(7, 'og-time', 1, '2016-12-26 17:43:10'),
(8, 'time4play', 1, '2016-12-26 17:43:29'),
(9, 'just2play', 0, '2016-12-26 17:43:49'),
(10, 'just2play', 1, '2016-12-26 17:43:59'),
(11, 'bgame', 1, '2016-12-26 17:57:49'),
(12, 'bigzone', 1, '2016-12-26 17:57:58'),
(13, 'big-zone', 1, '2016-12-26 17:58:03'),
(14, 'kronix', 1, '2016-12-26 17:58:33'),
(15, 'ecila', 1, '2016-12-26 17:58:49'),
(16, 'famzone', 1, '2016-12-26 17:58:57'),
(17, 'old school', 1, '2016-12-26 17:59:11'),
(18, 'oldschool', 1, '2016-12-26 17:59:18'),
(19, 'forteam', 1, '2016-12-26 17:59:36'),
(20, 'bfzone', 1, '2016-12-26 17:59:47'),
(21, 'burned', 1, '2016-12-26 17:59:54'),
(22, 'playnion', 1, '2016-12-26 18:00:08'),
(23, 'egaming', 1, '2016-12-26 18:00:25'),
(24, 'nephrite', 1, '2016-12-26 18:00:25'),
(25, 'rubypanel', 1, '2016-12-26 18:00:25'),
(26, '93.', 1, '2017-10-10 03:43:10'),
(27, 'rpg.', 1, '2017-10-10 03:43:10'),
(28, 'ruby', 2, '2018-02-12 03:50:42'),
(29, 'GAMMA', 1, '2018-04-02 00:56:27'),
(30, 'bagged', 2, '2018-12-25 12:54:31'),
(31, 'eclipsed', 2, '2018-12-25 13:21:34'),
(32, 'bluegame', 2, '2019-01-31 16:46:20'),
(33, 'blueegame', 2, '2019-01-31 16:46:42'),
(34, 'dty', 2, '2019-01-31 16:48:06'),
(35, 'jade', 2, '2019-01-31 16:48:09'),
(36, 'rofixed', 2, '2019-01-31 16:48:13'),
(37, 'redgame', 2, '2019-01-31 16:48:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `nephrite_users`
--
ALTER TABLE `nephrite_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panel_accounts`
--
ALTER TABLE `panel_accounts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `panel_accounts_playeremail_unique` (`playerEMail`) USING BTREE;

--
-- Indexes for table `panel_actions`
--
ALTER TABLE `panel_actions`
  ADD PRIMARY KEY (`actKey`) USING BTREE;

--
-- Indexes for table `panel_applications`
--
ALTER TABLE `panel_applications`
  ADD PRIMARY KEY (`appKey`) USING BTREE;

--
-- Indexes for table `panel_blacklist`
--
ALTER TABLE `panel_blacklist`
  ADD PRIMARY KEY (`blackKey`) USING BTREE;

--
-- Indexes for table `panel_complaintcomments`
--
ALTER TABLE `panel_complaintcomments`
  ADD PRIMARY KEY (`commKey`) USING BTREE;

--
-- Indexes for table `panel_complaints`
--
ALTER TABLE `panel_complaints`
  ADD PRIMARY KEY (`complaintKey`) USING BTREE;

--
-- Indexes for table `panel_faction_reports`
--
ALTER TABLE `panel_faction_reports`
  ADD PRIMARY KEY (`repKey`) USING BTREE;

--
-- Indexes for table `panel_graphs`
--
ALTER TABLE `panel_graphs`
  ADD PRIMARY KEY (`graphKey`) USING BTREE;

--
-- Indexes for table `panel_logs_actions`
--
ALTER TABLE `panel_logs_actions`
  ADD PRIMARY KEY (`logKey`) USING BTREE;

--
-- Indexes for table `panel_shop`
--
ALTER TABLE `panel_shop`
  ADD PRIMARY KEY (`itemKey`) USING BTREE;

--
-- Indexes for table `panel_ticketcomments`
--
ALTER TABLE `panel_ticketcomments`
  ADD PRIMARY KEY (`commKey`) USING BTREE;

--
-- Indexes for table `panel_tickets`
--
ALTER TABLE `panel_tickets`
  ADD PRIMARY KEY (`ticketKey`) USING BTREE,
  ADD UNIQUE KEY `ticketKey` (`ticketKey`) USING BTREE;

--
-- Indexes for table `panel_unbans`
--
ALTER TABLE `panel_unbans`
  ADD PRIMARY KEY (`unbanKey`) USING BTREE;

--
-- Indexes for table `panel_updatecomments`
--
ALTER TABLE `panel_updatecomments`
  ADD PRIMARY KEY (`commKey`) USING BTREE;

--
-- Indexes for table `panel_updates`
--
ALTER TABLE `panel_updates`
  ADD PRIMARY KEY (`updateKey`) USING BTREE;

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE,
  ADD KEY `password_resets_token_index` (`token`) USING BTREE;

--
-- Indexes for table `server_accounts`
--
ALTER TABLE `server_accounts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `server_adminlogs`
--
ALTER TABLE `server_adminlogs`
  ADD PRIMARY KEY (`logKey`) USING BTREE;

--
-- Indexes for table `server_apartments`
--
ALTER TABLE `server_apartments`
  ADD PRIMARY KEY (`apartmentKEY`);  

--
-- Indexes for table `server_atms`
--
ALTER TABLE `server_atms`
  ADD PRIMARY KEY (`atmKey`) USING BTREE;

--
-- Indexes for table `server_bans`
--
ALTER TABLE `server_bans`
  ADD PRIMARY KEY (`banKey`) USING BTREE,
  ADD UNIQUE KEY `banKey` (`banKey`) USING BTREE;

--
-- Indexes for table `server_bids`
--
ALTER TABLE `server_bids`
  ADD PRIMARY KEY (`bidKey`) USING BTREE;

--
-- Indexes for table `server_business`
--
ALTER TABLE `server_business`
  ADD PRIMARY KEY (`busKey`) USING BTREE;

--
-- Indexes for table `server_clanlogs`
--
ALTER TABLE `server_clanlogs`
  ADD PRIMARY KEY (`logKey`) USING BTREE;

--
-- Indexes for table `server_clans`
--
ALTER TABLE `server_clans`
  ADD PRIMARY KEY (`clanKey`) USING BTREE;

--
-- Indexes for table `server_config`
--
ALTER TABLE `server_config`
  ADD PRIMARY KEY (`cfgKey`) USING BTREE;

--
-- Indexes for table `server_dealer`
--
ALTER TABLE `server_dealer`
  ADD PRIMARY KEY (`COD`) USING BTREE;

--
-- Indexes for table `server_emails`
--
ALTER TABLE `server_emails`
  ADD PRIMARY KEY (`emailKey`) USING BTREE;

--
-- Indexes for table `server_events`
--
ALTER TABLE `server_events`
  ADD PRIMARY KEY (`eventKey`) USING BTREE;

--
-- Indexes for table `server_factionlog`
--
ALTER TABLE `server_factionlog`
  ADD PRIMARY KEY (`logKey`) USING BTREE;

--
-- Indexes for table `server_factions`
--
ALTER TABLE `server_factions`
  ADD PRIMARY KEY (`factionKey`) USING BTREE;

--
-- Indexes for table `server_feed`
--
ALTER TABLE `server_feed`
  ADD PRIMARY KEY (`logKey`) USING BTREE;

--
-- Indexes for table `server_friends`
--
ALTER TABLE `server_friends`
  ADD PRIMARY KEY (`friendsKey`) USING BTREE;

--
-- Indexes for table `server_gifts`
--
ALTER TABLE `server_gifts`
  ADD PRIMARY KEY (`giftKey`) USING BTREE,
  ADD UNIQUE KEY `giftKey` (`giftKey`) USING BTREE;

--
-- Indexes for table `server_heists`
--
ALTER TABLE `server_heists`
  ADD PRIMARY KEY (`heistKey`) USING BTREE;

--
-- Indexes for table `server_houses`
--
ALTER TABLE `server_houses`
  ADD PRIMARY KEY (`houseKey`) USING BTREE;

--
-- Indexes for table `server_joblocations`
--
ALTER TABLE `server_joblocations`
  ADD PRIMARY KEY (`locKey`) USING BTREE;

--
-- Indexes for table `server_jobs`
--
ALTER TABLE `server_jobs`
  ADD PRIMARY KEY (`jobKey`) USING BTREE;

--
-- Indexes for table `server_logs_changename`
--
ALTER TABLE `server_logs_changename`
  ADD PRIMARY KEY (`logKey`) USING BTREE;

--
-- Indexes for table `server_logs_chat`
--
ALTER TABLE `server_logs_chat`
  ADD PRIMARY KEY (`logKey`) USING BTREE;

--
-- Indexes for table `server_logs_cmds`
--
ALTER TABLE `server_logs_cmds`
  ADD PRIMARY KEY (`logKey`) USING BTREE;

--
-- Indexes for table `server_logs_panel`
--
ALTER TABLE `server_logs_panel`
  ADD PRIMARY KEY (`logKey`) USING BTREE;

--
-- Indexes for table `server_logs_player`
--
ALTER TABLE `server_logs_player`
  ADD PRIMARY KEY (`logKey`) USING BTREE;

--
-- Indexes for table `server_logs_vehicles`
--
ALTER TABLE `server_logs_vehicles`
  ADD PRIMARY KEY (`logKey`) USING BTREE;

--
-- Indexes for table `server_objectquest`
--
ALTER TABLE `server_objectquest`
  ADD PRIMARY KEY (`objKey`) USING BTREE;

--
-- Indexes for table `server_paintball`
--
ALTER TABLE `server_paintball`
  ADD PRIMARY KEY (`paintKey`) USING BTREE;

--
-- Indexes for table `server_personalvehicles`
--
ALTER TABLE `server_personalvehicles`
  ADD PRIMARY KEY (`vehicleID`) USING BTREE;

--
-- Indexes for table `server_pubg_data`
--
ALTER TABLE `server_pubg_data`
  ADD PRIMARY KEY (`pubgKey`) USING BTREE;

--
-- Indexes for table `server_punish`
--
ALTER TABLE `server_punish`
  ADD PRIMARY KEY (`punishKey`) USING BTREE;

--
-- Indexes for table `server_races`
--
ALTER TABLE `server_races`
  ADD PRIMARY KEY (`raceKey`) USING BTREE;

--
-- Indexes for table `server_stats`
--
ALTER TABLE `server_stats`
  ADD PRIMARY KEY (`statsKey`) USING BTREE,
  ADD UNIQUE KEY `statsKey` (`statsKey`) USING BTREE;

--
-- Indexes for table `server_teles`
--
ALTER TABLE `server_teles`
  ADD PRIMARY KEY (`teleKey`) USING BTREE;

--
-- Indexes for table `server_tokens`
--
ALTER TABLE `server_tokens`
  ADD PRIMARY KEY (`tokenKey`) USING BTREE;

--
-- Indexes for table `server_turfs`
--
ALTER TABLE `server_turfs`
  ADD PRIMARY KEY (`turfKey`) USING BTREE;

--
-- Indexes for table `server_underwaterquest`
--
ALTER TABLE `server_underwaterquest`
  ADD PRIMARY KEY (`objKey`) USING BTREE;

--
-- Indexes for table `server_vehicles`
--
ALTER TABLE `server_vehicles`
  ADD PRIMARY KEY (`vehicleID`) USING BTREE;

--
-- Indexes for table `server_warlogs`
--
ALTER TABLE `server_warlogs`
  ADD PRIMARY KEY (`warKey`) USING BTREE;

--
-- Indexes for table `server_warlog_players`
--
ALTER TABLE `server_warlog_players`
  ADD PRIMARY KEY (`logKey`) USING BTREE;

--
-- Indexes for table `server_words`
--
ALTER TABLE `server_words`
  ADD PRIMARY KEY (`wordKey`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `nephrite_users`
--
ALTER TABLE `nephrite_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `panel_accounts`
--
ALTER TABLE `panel_accounts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `panel_actions`
--
ALTER TABLE `panel_actions`
  MODIFY `actKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `panel_applications`
--
ALTER TABLE `panel_applications`
  MODIFY `appKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `panel_blacklist`
--
ALTER TABLE `panel_blacklist`
  MODIFY `blackKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `panel_complaintcomments`
--
ALTER TABLE `panel_complaintcomments`
  MODIFY `commKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `panel_complaints`
--
ALTER TABLE `panel_complaints`
  MODIFY `complaintKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `panel_faction_reports`
--
ALTER TABLE `panel_faction_reports`
  MODIFY `repKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `panel_graphs`
--
ALTER TABLE `panel_graphs`
  MODIFY `graphKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `panel_logs_actions`
--
ALTER TABLE `panel_logs_actions`
  MODIFY `logKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `panel_shop`
--
ALTER TABLE `panel_shop`
  MODIFY `itemKey` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `panel_ticketcomments`
--
ALTER TABLE `panel_ticketcomments`
  MODIFY `commKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `panel_tickets`
--
ALTER TABLE `panel_tickets`
  MODIFY `ticketKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `panel_unbans`
--
ALTER TABLE `panel_unbans`
  MODIFY `unbanKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `panel_updatecomments`
--
ALTER TABLE `panel_updatecomments`
  MODIFY `commKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `panel_updates`
--
ALTER TABLE `panel_updates`
  MODIFY `updateKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_accounts`
--
ALTER TABLE `server_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `server_adminlogs`
--
ALTER TABLE `server_adminlogs`
  MODIFY `logKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_atms`
--
ALTER TABLE `server_atms`
  MODIFY `atmKey` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `server_apartments`
--
ALTER TABLE `server_apartments`
  MODIFY `apartmentKEY` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;  
--
-- AUTO_INCREMENT for table `server_bans`
--
ALTER TABLE `server_bans`
  MODIFY `banKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_bids`
--
ALTER TABLE `server_bids`
  MODIFY `bidKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_business`
--
ALTER TABLE `server_business`
  MODIFY `busKey` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `server_clanlogs`
--
ALTER TABLE `server_clanlogs`
  MODIFY `logKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_clans`
--
ALTER TABLE `server_clans`
  MODIFY `clanKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_config`
--
ALTER TABLE `server_config`
  MODIFY `cfgKey` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `server_dealer`
--
ALTER TABLE `server_dealer`
  MODIFY `COD` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `server_emails`
--
ALTER TABLE `server_emails`
  MODIFY `emailKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_events`
--
ALTER TABLE `server_events`
  MODIFY `eventKey` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `server_factionlog`
--
ALTER TABLE `server_factionlog`
  MODIFY `logKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_factions`
--
ALTER TABLE `server_factions`
  MODIFY `factionKey` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `server_feed`
--
ALTER TABLE `server_feed`
  MODIFY `logKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_friends`
--
ALTER TABLE `server_friends`
  MODIFY `friendsKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_gifts`
--
ALTER TABLE `server_gifts`
  MODIFY `giftKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_heists`
--
ALTER TABLE `server_heists`
  MODIFY `heistKey` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `server_houses`
--
ALTER TABLE `server_houses`
  MODIFY `houseKey` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `server_joblocations`
--
ALTER TABLE `server_joblocations`
  MODIFY `locKey` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `server_jobs`
--
ALTER TABLE `server_jobs`
  MODIFY `jobKey` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `server_logs_changename`
--
ALTER TABLE `server_logs_changename`
  MODIFY `logKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_logs_chat`
--
ALTER TABLE `server_logs_chat`
  MODIFY `logKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_logs_cmds`
--
ALTER TABLE `server_logs_cmds`
  MODIFY `logKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_logs_panel`
--
ALTER TABLE `server_logs_panel`
  MODIFY `logKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_logs_player`
--
ALTER TABLE `server_logs_player`
  MODIFY `logKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_logs_vehicles`
--
ALTER TABLE `server_logs_vehicles`
  MODIFY `logKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_objectquest`
--
ALTER TABLE `server_objectquest`
  MODIFY `objKey` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `server_paintball`
--
ALTER TABLE `server_paintball`
  MODIFY `paintKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_personalvehicles`
--
ALTER TABLE `server_personalvehicles`
  MODIFY `vehicleID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_pubg_data`
--
ALTER TABLE `server_pubg_data`
  MODIFY `pubgKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_punish`
--
ALTER TABLE `server_punish`
  MODIFY `punishKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_races`
--
ALTER TABLE `server_races`
  MODIFY `raceKey` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `server_teles`
--
ALTER TABLE `server_teles`
  MODIFY `teleKey` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `server_tokens`
--
ALTER TABLE `server_tokens`
  MODIFY `tokenKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_turfs`
--
ALTER TABLE `server_turfs`
  MODIFY `turfKey` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `server_underwaterquest`
--
ALTER TABLE `server_underwaterquest`
  MODIFY `objKey` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `server_warlogs`
--
ALTER TABLE `server_warlogs`
  MODIFY `warKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_warlog_players`
--
ALTER TABLE `server_warlog_players`
  MODIFY `logKey` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server_words`
--
ALTER TABLE `server_words`
  MODIFY `wordKey` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
