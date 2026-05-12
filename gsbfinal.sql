-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : mar. 12 mai 2026 à 08:15
-- Version du serveur : 11.5.2-MariaDB
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gsbv0v3`
--

-- --------------------------------------------------------

--
-- Structure de la table `collaborateur`
--

DROP TABLE IF EXISTS `collaborateur`;
CREATE TABLE IF NOT EXISTS `collaborateur` (
  `COL_MATRICULE` varchar(10) NOT NULL,
  `COL_NOM` varchar(25) DEFAULT NULL,
  `COL_PRENOM` varchar(50) DEFAULT NULL,
  `COL_ADRESSE` varchar(50) DEFAULT NULL,
  `COL_CP` varchar(5) DEFAULT NULL,
  `COL_VILLE` varchar(30) DEFAULT NULL,
  `COL_DATEEMBAUCHE` datetime DEFAULT NULL,
  `HAB_ID` int(11) DEFAULT NULL,
  `SEC_CODE` varchar(1) DEFAULT NULL,
  `REG_CODE` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`COL_MATRICULE`),
  KEY `collaborateur_habilitation0_FK` (`HAB_ID`),
  KEY `collaborateur_secteur0_FK` (`SEC_CODE`),
  KEY `collaborateur_region1_FK` (`REG_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `collaborateur`
--

INSERT INTO `collaborateur` (`COL_MATRICULE`, `COL_NOM`, `COL_PRENOM`, `COL_ADRESSE`, `COL_CP`, `COL_VILLE`, `COL_DATEEMBAUCHE`, `HAB_ID`, `SEC_CODE`, `REG_CODE`) VALUES
('a131', 'Villechalane', 'Louis', '8 cours Lafontaine', '29000', 'BREST', '1992-12-11 00:00:00', 1, NULL, 'BG'),
('a17', 'Andre', 'David', '1 r Aimon de Chissée', '38100', 'GRENOBLE', '1991-08-26 00:00:00', 1, NULL, 'RA'),
('a55', 'Bedos', 'Christian', '1 r Bénédictins', '65000', 'TARBES', '1987-07-17 00:00:00', 1, NULL, 'OC'),
('b4', 'Charoze', 'Catherine', '100 pl Géants', '33000', 'BORDEAUX', '1997-09-25 00:00:00', 3, 'S', 'AQ'),
('c14', 'Daburon', 'François', '13 r Champs Elysées', '6000', 'NICE', '1989-02-01 00:00:00', 2, NULL, 'PA'),
('c3', 'De', 'Philippe', '13 r Charles Peguy', '10000', 'TROYES', '1992-05-05 00:00:00', 3, NULL, 'GE'),
('d13', 'Debelle', 'Jeanne', '134 r Stalingrad', '44000', 'NANTES', '1991-12-05 00:00:00', 2, NULL, 'PL'),
('e39', 'Dudouit', 'Frederic', '18 quai Xavier Jouvin', '75000', 'PARIS', '1988-04-26 00:00:00', 1, NULL, 'IF'),
('f4', 'Gest', 'Alain', '30 r Authie', '46000', 'FIGEAC', '1994-05-03 00:00:00', 3, NULL, 'OC'),
('g30', 'Girard', 'Yvon', '31 av 6 Juin', '80000', 'AMIENS', '1999-03-27 00:00:00', 1, NULL, 'HF'),
('j50', 'Landre', 'Philippe', '4 av G?n Laperrine', '59000', 'LILLE', '1992-12-16 00:00:00', 2, NULL, 'HF'),
('l56', 'Lecornu', 'Ludovic', '4 r Abel Servien', '25000', 'BESANCON', '1996-02-27 00:00:00', 2, NULL, 'FC'),
('n58', 'Loirat', 'Didier', 'Les Pêchers cité Bourg la Croix', '45000', 'ORLEANS', '1992-08-30 00:00:00', 3, 'P', 'CE'),
('p49', 'Onfroy', 'Den', '5 r Sidonie Jacolin', '37000', 'TOURS', '1977-10-03 00:00:00', 2, NULL, 'CE'),
('q17', 'Petit', 'Jean-Louis', '7 r Ernest Renan', '50000', 'SAINT LO', '1997-09-06 00:00:00', 3, 'N', 'NO'),
('r58', 'Quiquandon', 'Joel', '7 r Ernest Renan', '29000', 'QUIMPER', '1990-06-30 00:00:00', 3, 'O', 'BG');

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

DROP TABLE IF EXISTS `departement`;
CREATE TABLE IF NOT EXISTS `departement` (
  `NoDEPT` int(11) NOT NULL,
  `Departement` varchar(30) NOT NULL,
  `REG_CODE` varchar(2) NOT NULL,
  PRIMARY KEY (`NoDEPT`),
  KEY `REG_CODE` (`REG_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`NoDEPT`, `Departement`, `REG_CODE`) VALUES
(1, 'Ain', 'RA'),
(2, 'Aisne', 'HF'),
(3, 'Allier', 'RA'),
(4, 'Alpes-de-Haute-Provence', 'PA'),
(5, 'Hautes-Alpes', 'PA'),
(6, 'Alpes-Maritimes', 'PA'),
(7, 'Ardèche', 'RA'),
(8, 'Ardennes', 'GE'),
(9, 'Ariège', 'OC'),
(10, 'Aube', 'GE'),
(11, 'Aude', 'OC'),
(12, 'Aveyron', 'OC'),
(13, 'Bouches-du-Rhone', 'PA'),
(14, 'Calvados', 'NO'),
(15, 'Cantal', 'RA'),
(16, 'Charente', 'AQ'),
(17, 'Charente-Maritime', 'AQ'),
(18, 'Cher', 'CE'),
(19, 'Corrèze', 'AQ'),
(20, 'Corse', 'CO'),
(22, 'Cotes-d\'Armor', 'BG'),
(23, 'Creuse', 'AQ'),
(24, 'Dordogne', 'AQ'),
(25, 'Doubs', 'FC'),
(26, 'Drôme', 'RA'),
(27, 'Eure', 'NO'),
(28, 'Eure-et-Loir', 'CE'),
(29, 'Finistère', 'BG'),
(30, 'Gard', 'OC'),
(31, 'Haute-Garonne', 'OC'),
(32, 'Gers', 'OC'),
(33, 'Gironde', 'AQ'),
(34, 'Hérault', 'OC'),
(35, 'Ille-et-Vilaine', 'BG'),
(36, 'Indre', 'CE'),
(37, 'Indre-et-Loire', 'CE'),
(38, 'Isere', 'RA'),
(39, 'Jura', 'FC'),
(40, 'Landes', 'AQ'),
(41, 'Loir-et-Cher', 'CE'),
(42, 'Loire', 'RA'),
(43, 'Haute-Loire', 'RA'),
(44, 'Loire-Atlantique', 'PL'),
(45, 'Loiret', 'CE'),
(46, 'Lot', 'OC'),
(47, 'Lot-et-Garonne', 'AQ'),
(48, 'Lozère', 'OC'),
(49, 'Maine-et-Loire', 'PL'),
(50, 'Manche', 'NO'),
(51, 'Marne', 'GE'),
(52, 'Haute-Marne', 'GE'),
(53, 'Mayenne', 'PL'),
(54, 'Meurthe-et-Moselle', 'GE'),
(55, 'Meuse', 'GE'),
(56, 'Morbihan', 'BG'),
(57, 'Moselle', 'GE'),
(58, 'Nièvre', 'FC'),
(59, 'Nord', 'HF'),
(60, 'Oise', 'HF'),
(61, 'Orne', 'NO'),
(62, 'Pas-de-Calais', 'HF'),
(63, 'Puy-de-Dome', 'RA'),
(64, 'Pyrénées-Atlantiques', 'AQ'),
(65, 'Hautes-Pyrénées', 'OC'),
(66, 'Pyrénées-Orientales', 'OC'),
(67, 'Bas-Rhin', 'GE'),
(68, 'Haut-Rhin', 'GE'),
(69, 'Rhone', 'RA'),
(70, 'Haute-Saone', 'FC'),
(71, 'Saone-et-Loire', 'FC'),
(72, 'Sarthe', 'PL'),
(73, 'Savoie', 'RA'),
(74, 'Haute-Savoie', 'RA'),
(75, 'Paris', 'IF'),
(76, 'Seine-Maritime', 'NO'),
(77, 'Seine-et-Marne', 'IF'),
(78, 'Yvelines', 'IF'),
(79, 'Deux-Sevres', 'AQ'),
(80, 'Somme', 'HF'),
(81, 'Tarn', 'OC'),
(82, 'Tarn-et-Garonne', 'OC'),
(83, 'Var', 'PA'),
(84, 'Vaucluse', 'PA'),
(85, 'Vendée', 'PL'),
(86, 'Vienne', 'AQ'),
(87, 'Haute-Vienne', 'AQ'),
(88, 'Vosges', 'GE'),
(89, 'Yonne', 'FC'),
(90, 'Territoire-de-Belfort', 'FC'),
(91, 'Essonne', 'IF'),
(92, 'Hauts-de-Seine', 'IF'),
(93, 'Seine-St-Denis', 'IF'),
(94, 'Val-de-Marne', 'IF'),
(95, 'Val-d-Oise', 'IF');

-- --------------------------------------------------------

--
-- Structure de la table `dosage`
--

DROP TABLE IF EXISTS `dosage`;
CREATE TABLE IF NOT EXISTS `dosage` (
  `DOS_CODE` int(11) NOT NULL AUTO_INCREMENT,
  `DOS_QUANTITE` float NOT NULL,
  `DOS_UNITE` int(11) NOT NULL,
  PRIMARY KEY (`DOS_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `dosage`
--

INSERT INTO `dosage` (`DOS_CODE`, `DOS_QUANTITE`, `DOS_UNITE`) VALUES
(1, 500, 1),
(2, 1000, 1),
(3, 250, 1),
(4, 5, 2),
(5, 10, 2),
(6, 100, 3),
(7, 50, 1),
(8, 2.5, 1),
(9, 20, 1),
(10, 40, 1);

-- --------------------------------------------------------

--
-- Structure de la table `etat`
--

DROP TABLE IF EXISTS `etat`;
CREATE TABLE IF NOT EXISTS `etat` (
  `ETAT_CODE` int(11) NOT NULL,
  `ETAT_LIBELLE` varchar(50) NOT NULL,
  PRIMARY KEY (`ETAT_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `etat`
--

INSERT INTO `etat` (`ETAT_CODE`, `ETAT_LIBELLE`) VALUES
(1, 'En cours de saisie'),
(2, 'Saisie définitive / Validé'),
(3, 'Consulté par le Délégué'),
(4, 'Archivé');

-- --------------------------------------------------------

--
-- Structure de la table `famille`
--

DROP TABLE IF EXISTS `famille`;
CREATE TABLE IF NOT EXISTS `famille` (
  `FAM_CODE` varchar(3) NOT NULL,
  `FAM_LIBELLE` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`FAM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `famille`
--

INSERT INTO `famille` (`FAM_CODE`, `FAM_LIBELLE`) VALUES
('AA', 'Antalgiques en association'),
('AAA', 'Antalgiques antipyrétiques en association'),
('AAC', 'Antidépresseur d\'action centrale'),
('AAH', 'Antivertigineux antihistaminique H1'),
('ABA', 'Antibiotique antituberculeux'),
('ABC', 'Antibiotique antiacnéique local'),
('ABP', 'Antibiotique de la famille des bêta-lactamines (pénicilline A)'),
('AFC', 'Antibiotique de la famille des cyclines'),
('AFM', 'Antibiotique de la famille des macrolides'),
('AH', 'Antihistaminique H1 local'),
('AIM', 'Antidépresseur imipraminique (tricyclique)'),
('AIN', 'Antidépresseur inhibiteur sélectif de la recapture de la sérotonine'),
('ALO', 'Antibiotique local (ORL)'),
('ANS', 'Antidépresseur IMAO non sélectif'),
('AO', 'Antibiotique ophtalmique'),
('AP', 'Antipsychotique normothymique'),
('AUM', 'Antibiotique urinaire minute'),
('CRT', 'Corticoïde, antibiotique et antifongique à usage local'),
('HYP', 'Hypnotique antihistaminique'),
('PSA', 'Psychostimulant, antiasth?nique');

-- --------------------------------------------------------

--
-- Structure de la table `formuler`
--

DROP TABLE IF EXISTS `formuler`;
CREATE TABLE IF NOT EXISTS `formuler` (
  `MED_DEPOTLEGAL` varchar(10) NOT NULL,
  `PRE_CODE` varchar(2) NOT NULL,
  PRIMARY KEY (`MED_DEPOTLEGAL`,`PRE_CODE`),
  KEY `FORMULER_presentation1_FK` (`PRE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `formuler`
--

INSERT INTO `formuler` (`MED_DEPOTLEGAL`, `PRE_CODE`) VALUES
('ADIMOL9', 'CP'),
('AMOX45', 'CP'),
('APATOUX22', 'CP'),
('BITALV', 'CP'),
('CARTION6', 'CP'),
('CLAZER6', 'CP'),
('DEPRIL9', 'CP'),
('DIMIRTAM6', 'CP'),
('DOLRIL7', 'CP'),
('DORNOM8', 'CP'),
('EQUILARX6', 'CP'),
('JOVAI8', 'CP'),
('LITHOR12', 'CP'),
('PARMOL16', 'CP'),
('PHYSOI8', 'CP'),
('PIRIZ8', 'CP'),
('TROXT21', 'CP'),
('TXISOL22', 'CP'),
('3MYC7', 'CR'),
('BACTIG10', 'CR'),
('INSXT5', 'CR'),
('AMOPIL7', 'GE'),
('AMOXIG12', 'GE'),
('BITALV', 'GE'),
('DEPRIL9', 'GE'),
('EVILR7', 'GE'),
('LIDOXY23', 'IN'),
('3MYC7', 'PO'),
('POMDI20', 'PO'),
('ADIMOL9', 'SI'),
('AMOPIL7', 'SI'),
('CLAZER6', 'SI'),
('PARMOL16', 'SI'),
('LITHOR12', 'SO'),
('TROXT21', 'SO'),
('URIEG6', 'SO');

-- --------------------------------------------------------

--
-- Structure de la table `habilitation`
--

DROP TABLE IF EXISTS `habilitation`;
CREATE TABLE IF NOT EXISTS `habilitation` (
  `HAB_ID` int(11) NOT NULL,
  `HAB_LIB` varchar(30) NOT NULL,
  PRIMARY KEY (`HAB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `habilitation`
--

INSERT INTO `habilitation` (`HAB_ID`, `HAB_LIB`) VALUES
(1, 'Visiteur'),
(2, 'Délégué Régional'),
(3, 'Responsable Secteur');

-- --------------------------------------------------------

--
-- Structure de la table `interagir`
--

DROP TABLE IF EXISTS `interagir`;
CREATE TABLE IF NOT EXISTS `interagir` (
  `MED_DEPOTLEGAL` varchar(10) NOT NULL,
  `MED_DEPOTLEGAL2` varchar(10) NOT NULL,
  PRIMARY KEY (`MED_DEPOTLEGAL`,`MED_DEPOTLEGAL2`),
  KEY `interagir_med2_FK` (`MED_DEPOTLEGAL2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `interagir`
--

INSERT INTO `interagir` (`MED_DEPOTLEGAL`, `MED_DEPOTLEGAL2`) VALUES
('DOLRIL7', 'CARTION6'),
('PARMOL16', 'CARTION6'),
('JOVAI8', 'CLAZER6'),
('DIMIRTAM6', 'DEPRIL9'),
('DORNOM8', 'DEPRIL9'),
('EVILR7', 'DEPRIL9'),
('LITHOR12', 'DEPRIL9'),
('PARMOL16', 'DEPRIL9'),
('TROXT21', 'DEPRIL9'),
('DEPRIL9', 'DIMIRTAM6'),
('DORNOM8', 'DIMIRTAM6'),
('CARTION6', 'DOLRIL7'),
('PARMOL16', 'DOLRIL7'),
('DEPRIL9', 'DORNOM8'),
('DIMIRTAM6', 'DORNOM8'),
('TROXT21', 'DORNOM8'),
('DEPRIL9', 'EVILR7'),
('CLAZER6', 'JOVAI8'),
('DEPRIL9', 'LITHOR12'),
('URIEG6', 'LITHOR12'),
('CARTION6', 'PARMOL16'),
('DEPRIL9', 'PARMOL16'),
('DOLRIL7', 'PARMOL16'),
('TROXT21', 'PARMOL16'),
('TROXT21', 'PHYSOI8'),
('DEPRIL9', 'TROXT21'),
('DORNOM8', 'TROXT21'),
('PARMOL16', 'TROXT21'),
('PHYSOI8', 'TROXT21'),
('LITHOR12', 'URIEG6');

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `LOG_ID` int(11) NOT NULL,
  `LOG_LOGIN` varchar(50) NOT NULL,
  `LOG_MOTDEPASSE` varchar(255) NOT NULL,
  `COL_MATRICULE` varchar(10) NOT NULL,
  PRIMARY KEY (`LOG_ID`),
  UNIQUE KEY `login_collaborateur0_AK` (`COL_MATRICULE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`LOG_ID`, `LOG_LOGIN`, `LOG_MOTDEPASSE`, `COL_MATRICULE`) VALUES
(1, 'villou', '6cf17e0501b8078722f316f094e230341b4f1b2d4d14cc082c41494d6b462024f031beff6fc25145ed02a58181fc90a7fca58f0d879b349638df19dca85efa7f', 'a131'),
(2, 'anddav', 'ff781e873746adf59e3165b217034477ca29d4f2322720e05492ea90d21010378252a85f2d66025874647c6d162d45df2766e8003f33c885bbc3c4dbbe92141f', 'a17'),
(3, 'bedchr', 'dbb65dd51a8348771883fae9cd7cc40ce1cf33e3756b4ca798bfcdcc37499b7e7236af7bd16d469bdaf8b039f3d5f414cb8a840d3675862675c0dc4a18fb5946', 'a55'),
(11, 'chacat', '76c0ddffa104f6dd5ecea921b6f8eeea52ea6e97d42c9643cee29cc21ecbf91ccfc7ec1e10a0cbacf5c3c3cd79f99edf860c55333889aa9dffc1a615b421821d', 'b4'),
(14, 'dabfra', '3b35c54ac57dac17f7075312440a2e6287e46751a07c6ec0457dad257ace9494748f43df0bd87a17faa1ca3956e75c50e753be1f005e59aa0e93877d0e2b38d2', 'c14'),
(15, 'dephi', 'f62974c51dfec40c28428cd2cfbded1c6ff12d938e5a11ba0c32add8e144c3af0eb3e6a235ed84d3a4f19ebedc6975ed2878035c3dc33952337021607f42204b', 'c3'),
(17, 'debjea', 'dffebdcfcc45ec47f43d35b54fcbf6983b718a27a8c78a1f3d780cc927001143860ae4288e3598b46a8ef036398af81b6f7b044f63c31127ae90b1e9550a9732', 'd13'),
(21, 'dudfre', '6c95f16cb8cf78b7f0c717336fcaf458e8f766f7ddf48e4ff18246a958618869cd21a74bf05f52fc4e0a6224ade11c9b8411fcc9763bd9b2b7a081216330fcca', 'e39'),
(27, 'gesala', '383bb2585655939860f7f917620a91252a847341edcd7a7168ff089f1eebb570c90514da4314b593bfb418167446c8c0783baae2f96d9a15c951472b91f65ab3', 'f4'),
(29, 'giryvo', '8be0ebb8d359cbe7c163a2c630aa63abd56a988206e18afd45ca6728872dc09c5d2471a5ba5e9b1ac2aefc5a9a168dc786d898077dbcd185f9f8061d52b9ebf7', 'g30'),
(37, 'lanphi', '75af3ff0a387399d7f1be1a3bb50be50b741a2834547ccbfdca9b743b3c5fd3e6717f61a7b5cfce975b4d1111a373f1a8f3e66811b68765271ff5f7367ad855b', 'j50'),
(44, 'leclud', 'a4f68ca436749d73fe16df1edf58d3112be93531b9b42f5e4620d500de3cad63566f8c5fa203dac0696076cb8301efc4d4a9e5b8c3e2f1e5fa364688e96ffc68', 'l56'),
(48, 'loidid', '0a06fbb541eff83c5c43c1be921dc3b1976f344efcdb7f633ba02ac5782b52e9acbc5a2d262188c47859a31ddcc6e5bd0202f6c2ada1ff29a9b1eaca66b3e7f5', 'n58'),
(55, 'onfden', '0e625b7c29b24692bfb043a4e58cb4539a23650aea84ddc48b0274e7f7b60ca409b3cca528fbdfb3efc0d9e6389e53f26c9026b7ddb72e136d9164b789f71bed', 'p49'),
(59, 'petjea', 'ebdb37ab2458d2440dc0a4481c9558ab3f99837ee78d89d940e4acb9968f787288ed71d8d7897999b3a2bf17fe494397b72c04c56a625124d7079fbf35a85eb3', 'q17'),
(61, 'quijoe', '4ddb4228cb57582c02f378a4c7bcd2040e4e024f2190aafca6b11758c11cd12fd27287dbee6df0965811b4820395ebebc09d02fc7864836ef8783af704436d6a', 'r58');

-- --------------------------------------------------------

--
-- Structure de la table `medicament`
--

DROP TABLE IF EXISTS `medicament`;
CREATE TABLE IF NOT EXISTS `medicament` (
  `MED_DEPOTLEGAL` varchar(10) NOT NULL,
  `MED_NOMCOMMERCIAL` varchar(25) DEFAULT NULL,
  `MED_COMPOSITION` varchar(255) DEFAULT NULL,
  `MED_EFFETS` varchar(255) DEFAULT NULL,
  `MED_CONTREINDIC` varchar(255) DEFAULT NULL,
  `MED_PRIXECHANTILLON` float DEFAULT NULL,
  `FAM_CODE` varchar(3) NOT NULL,
  PRIMARY KEY (`MED_DEPOTLEGAL`),
  KEY `medicament_famille0_FK` (`FAM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `medicament`
--

INSERT INTO `medicament` (`MED_DEPOTLEGAL`, `MED_NOMCOMMERCIAL`, `MED_COMPOSITION`, `MED_EFFETS`, `MED_CONTREINDIC`, `MED_PRIXECHANTILLON`, `FAM_CODE`) VALUES
('3MYC7', 'TRIMYCINE', 'Triamcinolone (acétonide) + Néomycine + Nystatine', 'Ce médicament est un Corticoïde à activité forte ou très forte associé à un antibiotique et un antifongique, utilis? en application locale dans certaines atteintes cutaNées surinfectées.', 'Ce médicament est contre-indiqu? en cas d\'allergie à l\'un des constituants, d\'infections de la peau ou de parasitisme non traités, d\'acné. Ne pas appliquer sur une plaie, ni sous un pansement occlusif.', 78.99, 'CRT'),
('ADIMOL9', 'ADIMOL', 'Amoxicilline + Acide clavulanique', 'Ce médicament, plus puissant que les pénicillines simples, est utilis? pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqu? en cas d\'allergie aux pénicillines ou aux céphalosporines.', 40.99, 'ABP'),
('AMOPIL7', 'AMOPIL', 'Amoxicilline', 'Ce médicament, plus puissant que les pénicillines simples, est utilis? pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqu? en cas d\'allergie aux pénicillines. Il doit être administr? avec prudence en cas d\'allergie aux céphalosporines.', 29.99, 'ABP'),
('AMOX45', 'AMOXAR', 'Amoxicilline', 'Ce médicament, plus puissant que les pénicillines simples, est utilis? pour traiter des infections bactériennes spécifiques.', 'La prise de ce médicament peut rendre positifs les tests de dépistage du dopage.', 24.99, 'ABP'),
('AMOXIG12', 'AMOXI G?', 'Amoxicilline', 'Ce médicament, plus puissant que les pénicillines simples, est utilis? pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqu? en cas d\'allergie aux pénicillines. Il doit être administr? avec prudence en cas d\'allergie aux céphalosporines.', 25.99, 'ABP'),
('APATOUX22', 'APATOUX Vitamine C', 'Tyrothricine + Tétracaïne + Acide ascorbique (Vitamine C)', 'Ce médicament est utilis? pour traiter les affections de la bouche et de la gorge.', 'Ce médicament est contre-indiqu? en cas d\'allergie à l\'un des constituants, en cas de phénylcétonurie et chez l\'enfant de moins de 6 ans.', 89.99, 'ALO'),
('BACTIG10', 'BACTIGEL', 'Érythromycine', 'Ce médicament est utilis? en application locale pour traiter l\'acné et les infections cutaNées bactériennes associées.', 'Ce médicament est contre-indiqu? en cas d\'allergie aux antibiotiques de la famille des macrolides ou des lincosanides.', 46.99, 'ABC'),
('BACTIV13', 'BACTIVIL', 'Érythromycine', 'Ce médicament est utilis? pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqu? en cas d\'allergie aux macrolides (dont le chef de file est l\'érythromycine).', 34.99, 'AFM'),
('BITALV', 'BIVALIC', 'Dextropropoxyph?ne + paracétamol', 'Ce médicament est utilis? pour traiter les douleurs d\'intensité mod?r?e ou intense.', 'Ce médicament est contre-indiqu? en cas d\'allergie aux médicaments de cette famille, d\'insuffisance hépatique ou d\'insuffisance rénale.', 87.99, 'AAA'),
('CARTION6', 'CARTION', 'Acide acétylsalicylique (aspirine) + Acide ascorbique (Vitamine C) + paracétamol', 'Ce médicament est utilis? dans le traitement symptomatique de la douleur ou de la fièvre.', 'Ce médicament est contre-indiqu? en cas de troubles de la coagulation (tendances aux hémorragies), d\'ulcère gastroduodénal, maladies graves du foie.', 50.99, 'AAA'),
('CLAZER6', 'CLAZER', 'Clarithromycine', 'Ce médicament est utilis? pour traiter des infections bactériennes spécifiques. Il est ?galement utilis? dans le traitement de l\'ulcère gastro-duod?nal, en association avec d\'autres médicaments.', 'Ce médicament est contre-indiqu? en cas d\'allergie aux macrolides (dont le chef de file est l\'érythromycine).', 46.99, 'AFM'),
('DEPRIL9', 'DEPRAMIL', 'Clomipramine', 'Ce médicament est utilis? pour traiter les épisodes dépressifs sévères, certaines douleurs rebelles, les troubles obsessionnels compulsifs et certaines énurésies chez l\'enfant.', 'Ce médicament est contre-indiqu? en cas de glaucome ou d\'adénome de la prostate, d\'infarctus r?cent, ou si vous avez re?u un traitement par IMAO durant les 2 semaines précédentes ou en cas d\'allergie aux Antidépresseurs imipraminiques.', 96.99, 'AIM'),
('DIMIRTAM6', 'DIMIRTAM', 'Mirtazapine', 'Ce médicament est utilis? pour traiter les épisodes dépressifs sévères.', 'La prise de ce produit est contre-indiqu?e en cas de d\'allergie à l\'un des constituants.', 74.99, 'AAC'),
('DOLRIL7', 'DOLORIL', 'Acide acétylsalicylique (aspirine) + Acide ascorbique (Vitamine C) + paracétamol', 'Ce médicament est utilis? dans le traitement symptomatique de la douleur ou de la fièvre.', 'Ce médicament est contre-indiqu? en cas d\'allergie au paracétamol ou aux salicylates.', 22.99, 'AAA'),
('DORNOM8', 'NORMADOR', 'Doxylamine', 'Ce médicament est utilis? pour traiter l\'insomnie chez l\'adulte.', 'Ce médicament est contre-indiqu? en cas de glaucome, de certains troubles urinaires (rétention urinaire) et chez l\'enfant de moins de 15 ans.', 79.99, 'HYP'),
('EQUILARX6', 'EQUILAR', 'Méclozine', 'Ce médicament est utilis? pour traiter les vertiges et pour pr?venir le mal des transports.', 'Ce médicament ne doit pas être utilis? en cas d\'allergie au produit, en cas de glaucome ou de rétention urinaire.', 66.99, 'AAH'),
('EVILR7', 'EVEILLOR', 'Adrafinil', 'Ce médicament est utilis? pour traiter les troubles de la vigilance et certains symptomes neurologiques chez le sujet ag?.', 'Ce médicament est contre-indiqu? en cas d\'allergie à l\'un des constituants.', 41.99, 'PSA'),
('INSXT5', 'INSECTIL', 'Diph?nydramine', 'Ce médicament est utilis? en application locale sur les piqûres d\'insecte et l\'urticaire.', 'Ce médicament est contre-indiqu? en cas d\'allergie aux antihistaminiques.', 19.99, 'AH'),
('JOVAI8', 'JOVENIL', 'Josamycine', 'Ce médicament est utilis? pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqu? en cas d\'allergie aux macrolides (dont le chef de file est l\'érythromycine).', 63.99, 'AFM'),
('LIDOXY23', 'LIDOXYTRACINE', 'Oxytétracycline +Lidocaïne', 'Ce médicament est utilis? en injection intramusculaire pour traiter certaines infections spécifiques.', 'Ce médicament est contre-indiqu? en cas d\'allergie à l\'un des constituants. Il ne doit pas être associé aux rétinoïdes.', 74.99, 'AFC'),
('LITHOR12', 'LITHORINE', 'Lithium', 'Ce médicament est indiqu? dans la prévention des psychoses maniaco-d?pressives ou pour traiter les états maniaques.', 'Ce médicament ne doit pas être utilis? si vous êtes allergique au lithium. Avant de prendre ce traitement, signalez à votre Médecin traitant si vous souffrez d\'insuffisance rénale, ou si vous avez un régime sans sel.', 84.99, 'AP'),
('PARMOL16', 'PARMOCODEINE', 'Codéine + paracétamol', 'Ce médicament est utilis? pour le traitement des douleurs lorsque des antalgiques simples ne sont pas assez efficaces.', 'Ce médicament est contre-indiqu? en cas d\'allergie à l\'un des constituants, chez l\'enfant de moins de 15 Kg, en cas d\'insuffisance hépatique ou respiratoire, d\'asthme, de phénylcétonurie et chez la femme qui allaite.', 54.99, 'AA'),
('PHYSOI8', 'PHYSICOR', 'Sulbutiamine', 'Ce médicament est utilis? pour traiter les baisses d\'activité physique ou psychique, souvent dans un contexte de d?pression.', 'Ce médicament est contre-indiqu? en cas d\'allergie à l\'un des constituants.', 67.99, 'PSA'),
('PIRIZ8', 'PIRIZAN', 'Pyrazinamide', 'Ce médicament est utilis?, en association à d\'autres antibiotiques, pour traiter la tuberculose.', 'Ce médicament est contre-indiqu? en cas d\'allergie à l\'un des constituants, d\'insuffisance rénale ou hépatique, d\'hyperuricémie ou de porphyrie.', 72.99, 'ABA'),
('POMDI20', 'POMADINE', 'Bacitracine', 'Ce médicament est utilis? pour traiter les infections oculaires de la surface de l\'oeil.', 'Ce médicament est contre-indiqu? en cas d\'allergie aux antibiotiques appliqu?s localement.', 46.99, 'AO'),
('TROXT21', 'TROXADET', 'Paroxétine', 'Ce médicament est utilis? pour traiter la d?pression et les troubles obsessionnels compulsifs. Il peut ?galement être utilis? en prévention des crises de panique avec ou sans agoraphobie.', 'Ce médicament est contre-indiqu? en cas d\'allergie au produit.', 37.99, 'AIN'),
('TXISOL22', 'TOUXISOL Vitamine C', 'Tyrothricine + Acide ascorbique (Vitamine C)', 'Ce médicament est utilis? pour traiter les affections de la bouche et de la gorge.', 'Ce médicament est contre-indiqu? en cas d\'allergie à l\'un des constituants et chez l\'enfant de moins de 6 ans.', 57.99, 'ALO'),
('URIEG6', 'URIREGUL', 'Fosfomycine trométamol', 'Ce médicament est utilis? pour traiter les infections urinaires simples chez la femme de moins de 65 ans.', 'La prise de ce médicament est contre-indiqu?e en cas d\'allergie à l\'un des constituants et d\'insuffisance rénale.', 42.99, 'AUM');

-- --------------------------------------------------------

--
-- Structure de la table `motif_visite`
--

DROP TABLE IF EXISTS `motif_visite`;
CREATE TABLE IF NOT EXISTS `motif_visite` (
  `MOT_CODE` int(11) NOT NULL,
  `MOT_LIBELLE` varchar(50) NOT NULL,
  PRIMARY KEY (`MOT_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `motif_visite`
--

INSERT INTO `motif_visite` (`MOT_CODE`, `MOT_LIBELLE`) VALUES
(1, 'Périodicité'),
(2, 'Nouveauté / Actualisation'),
(3, 'Remontage - Chute de prescription'),
(4, 'Sollicitation du Médecin'),
(5, 'Autre');

-- --------------------------------------------------------

--
-- Structure de la table `offrir`
--

DROP TABLE IF EXISTS `offrir`;
CREATE TABLE IF NOT EXISTS `offrir` (
  `MED_DEPOTLEGAL` varchar(10) NOT NULL,
  `VIS_MATRICULE` varchar(10) NOT NULL,
  `RAP_NUM` int(11) NOT NULL,
  `OFF_QTE` float NOT NULL,
  PRIMARY KEY (`MED_DEPOTLEGAL`,`VIS_MATRICULE`,`RAP_NUM`),
  KEY `offrir_rv_FK` (`VIS_MATRICULE`,`RAP_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `offrir`
--

INSERT INTO `offrir` (`MED_DEPOTLEGAL`, `VIS_MATRICULE`, `RAP_NUM`, `OFF_QTE`) VALUES
('3MYC7', 'a17', 1, 18),
('AMOPIL7', 'a131', 1, 12),
('AMOPIL7', 'l56', 6, 1),
('AMOPIL7', 'l56', 7, 1),
('AMOPIL7', 'l56', 8, 1),
('AMOXIG12', 'a131', 3, 15),
('BACTIG10', 'a17', 1, 20),
('CARTION6', 'a131', 2, 20),
('CLAZER6', 'a131', 1, 8),
('DEPRIL9', 'a131', 2, 6),
('DIMIRTAM6', 'a17', 1, 8),
('DOLRIL7', 'a131', 1, 15),
('DORNOM8', 'a17', 1, 10),
('EQUILARX6', 'a17', 1, 10),
('EQUILARX6', 'l56', 4, 5),
('EVILR7', 'a17', 1, 8),
('INSXT5', 'a131', 3, 25),
('LITHOR12', 'a17', 1, 6),
('PARMOL16', 'a17', 1, 12),
('POMDI20', 'a17', 1, 15),
('TROXT21', 'a131', 3, 5),
('URIEG6', 'a17', 1, 30);

-- --------------------------------------------------------

--
-- Structure de la table `posseder`
--

DROP TABLE IF EXISTS `posseder`;
CREATE TABLE IF NOT EXISTS `posseder` (
  `SPE_CODE` varchar(5) NOT NULL,
  `PRA_NUM` int(11) NOT NULL,
  `POS_DIPLOME` varchar(10) NOT NULL,
  `POS_COEFPRESCRIPTIO` float NOT NULL,
  PRIMARY KEY (`PRA_NUM`,`SPE_CODE`),
  KEY `fk_posseder_specialiste` (`SPE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `posseder`
--

INSERT INTO `posseder` (`SPE_CODE`, `PRA_NUM`, `POS_DIPLOME`, `POS_COEFPRESCRIPTIO`) VALUES
('ACP', 1, 'DESC', 0.85),
('CPR', 1, 'DU', 0.7),
('CAC', 6, 'DESC', 0.9),
('CAC', 7, 'Médecine', 0.7),
('MPR', 11, 'DESC', 0.95),
('GEH', 12, 'DES', 0.8),
('MN', 16, 'DESC', 0.88),
('GO', 17, 'DES', 0.85),
('CCT', 21, 'DESC', 0.92),
('DV', 22, 'DES', 0.78),
('GO', 26, 'DESC', 0.85),
('NEP', 27, 'DES', 0.88),
('NEP', 31, 'DU', 0.78),
('OPH', 36, 'DESC', 0.83),
('OPH', 37, 'DES', 0.82),
('PNM', 41, 'DU', 0.75),
('DV', 46, 'DESC', 0.88),
('RHU', 47, 'DES', 0.83),
('RHU', 51, 'DESC', 0.9),
('NRL', 52, 'DES', 0.79),
('NRL', 56, 'DESC', 0.87),
('MTR', 61, 'DU', 0.92),
('GMO', 62, 'DES', 0.81),
('GEH', 66, 'DESC', 0.89),
('GMO', 71, 'DESC', 0.84),
('NRC', 72, 'DES', 0.86),
('ARC', 76, 'DU', 0.86),
('RGM', 77, 'DES', 0.84),
('NRC', 81, 'DESC', 0.91),
('RGM', 86, 'DESC', 0.93),
('ACP', 450, '', 0),
('AMV', 450, '', 0),
('COM', 450, '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `praticien`
--

DROP TABLE IF EXISTS `praticien`;
CREATE TABLE IF NOT EXISTS `praticien` (
  `PRA_NUM` int(11) NOT NULL,
  `PRA_PRENOM` varchar(30) DEFAULT NULL,
  `PRA_NOM` varchar(30) DEFAULT NULL,
  `PRA_ADRESSE` varchar(50) DEFAULT NULL,
  `PRA_CP` varchar(5) DEFAULT NULL,
  `PRA_VILLE` varchar(25) DEFAULT NULL,
  `PRA_COEFNOTORIETE` float DEFAULT NULL,
  `PRA_COEFCONFIANCE` float DEFAULT NULL,
  `TYP_CODE` varchar(3) NOT NULL,
  PRIMARY KEY (`PRA_NUM`),
  KEY `praticien_type_praticien0_FK` (`TYP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `praticien`
--

INSERT INTO `praticien` (`PRA_NUM`, `PRA_PRENOM`, `PRA_NOM`, `PRA_ADRESSE`, `PRA_CP`, `PRA_VILLE`, `PRA_COEFNOTORIETE`, `PRA_COEFCONFIANCE`, `TYP_CODE`) VALUES
(1, 'Alain', 'Notini', '114 r Authie', '85000', 'LA ROCHE SUR YON', 290.03, 754, 'MH'),
(2, 'Albert', 'Gosselin', '13 r Devon', '41000', 'BLOIS', 307.49, 623, 'MV'),
(3, 'André', 'Delahaye', '36 av 6 Juin', '25000', 'BESANCON', 185.79, 892, 'PS'),
(4, 'André', 'Leroux', '47 av Robert Schuman', '60000', 'BEAUVAIS', 172.04, 318, 'PH'),
(5, 'Anne', 'Desmoulins', '31 r St Jean', '30000', 'NIMES', 94.75, 445, 'PO'),
(6, 'Anne', 'Mouel', '27 r Auvergne', '80000', 'AMIENS', 45.2, 567, 'MH'),
(7, 'Antoine', 'Desgranges-Lentz', '1 r Albert de Mun', '29000', 'MORLAIX', 20.07, 156, 'MV'),
(8, 'Arnaud', 'Marcouiller', '31 r St Jean', '68000', 'MULHOUSE', 396.52, 789, 'PS'),
(9, 'Benoit', 'Dupuy', '9 r Demolombe', '34000', 'MONTPELLIER', 395.66, 934, 'PH'),
(10, 'Bernard', 'Lerat', '31 r St Jean', '59000', 'LILLE', 257.79, 412, 'PO'),
(11, 'Bertrand', 'Marçais-Lefebvre', '86Bis r Basse', '67000', 'STRASBOURG', 450.96, 678, 'MH'),
(12, 'Bruno', 'Boscher', '94 r Falaise', '10000', 'TROYES', 356.14, 523, 'MV'),
(13, 'Catherine', 'Morel', '21 r Chateaubriand', '75000', 'PARIS', 379.57, 845, 'PS'),
(14, 'Chantal', 'Guivarch', '4 av G?n Laperrine', '45000', 'ORLEANS', 114.56, 267, 'PH'),
(15, 'Christophe', 'Bessin-Grosdoit', '92 r Falaise', '6000', 'NICE', 222.06, 591, 'PO'),
(16, 'Claire', 'Rossa', '14 av Thiers', '6000', 'NICE', 529.78, 712, 'MH'),
(17, 'Denis', 'Cauchy', '5 av Ste Thérèse', '11000', 'NARBONNE', 458.82, 834, 'MV'),
(18, 'Dominique', 'Gaffé', '9 av 1ère Armée Française', '35000', 'RENNES', 213.4, 476, 'PS'),
(19, 'Dominique', 'Guenon', '98 bd Mar Lyautey', '44000', 'NANTES', 175.89, 198, 'PH'),
(20, 'Dominique', 'Pr?vot', '29 r Lucien Nelle', '87000', 'LIMOGES', 151.36, 623, 'PO'),
(21, 'Eliane', 'Houchard', '9 r Demolombe', '49100', 'ANGERS', 436.96, 945, 'MH'),
(22, 'Elisabeth', 'Desmons', '51 r Bernières', '29000', 'QUIMPER', 281.17, 387, 'MV'),
(23, 'Elisabeth', 'Flament', '11 r Pasteur', '35000', 'RENNES', 315.6, 556, 'PS'),
(24, 'Emmanuel', 'Goussard', '9 r Demolombe', '41000', 'BLOIS', 40.72, 234, 'PH'),
(25, 'Eric', 'Desprez', '9 r Vaucelles', '33000', 'BORDEAUX', 406.85, 801, 'PO'),
(26, 'Evelyne', 'Coste', '29 r Lucien Nelle', '19000', 'TULLE', 441.87, 689, 'MH'),
(27, 'Frédéric', 'Lefebvre', '2 pl Wurzburg', '55000', 'VERDUN', 573.63, 923, 'MV'),
(28, 'Frédéric', 'Lemée', '29 av 6 Juin', '56000', 'VANNES', 326.4, 445, 'PS'),
(29, 'Frédéric', 'Martin', 'Bât A 90 r Bayeux', '70000', 'VESOUL', 506.06, 778, 'PH'),
(30, 'Frédérique', 'Marie', '172 r Caponière', '70000', 'VESOUL', 313.31, 512, 'PO'),
(31, 'Geneviève', 'Rosenstech', '27 r Auvergne', '75000', 'PARIS', 366.82, 667, 'MH'),
(32, 'Ghislaine', 'Pontavice', '8 r Gaillon', '86000', 'POITIERS', 265.58, 334, 'MV'),
(33, 'Guillaume', 'Leveneur-Mosquet', '47 av Robert Schuman', '64000', 'PAU', 184.97, 876, 'PS'),
(34, 'Guy', 'Blanchais', '30 r Authie', '8000', 'SEDAN', 502.48, 543, 'PH'),
(35, 'Hugues', 'Leveneur', '7 pl St Gilles', '62000', 'ARRAS', 7.39, 189, 'PO'),
(36, 'Isabelle', 'Mosquet', '22 r Jules Verne', '76000', 'ROUEN', 77.1, 712, 'MH'),
(37, 'Jean-Christophe', 'Giraudon', '1 r Albert de Mun', '38100', 'VIENNE', 92.62, 456, 'MV'),
(38, 'Jean-Claude', 'Marie', '26 r Hérouville', '69000', 'LYON', 120.1, 623, 'PS'),
(39, 'Jean-François', 'Maury', '5 r Pierre Girard', '71000', 'CHALON SUR SAONE', 13.73, 298, 'PH'),
(40, 'Jean-Louis', 'Dennel', '7 pl St Gilles', '28000', 'CHARTRES', 550.69, 834, 'PO'),
(41, 'Jean-Pierre', 'Ain', '4 résid Olympia', '2000', 'LAON', 5.59, 4, 'MH'),
(42, 'Jean-Pierre', 'Chemery', '51 pl Ancienne Boucherie', '14000', 'CAEN', 396.58, 756, 'MV'),
(43, 'Jean-Pierre', 'Comoz', '35 r Auguste Lechesne', '18000', 'BOURGES', 340.35, 589, 'PS'),
(44, 'Jean-Pierre', 'Desfaudais', '7 pl St Gilles', '29000', 'BREST', 71.76, 401, 'PH'),
(45, 'Jérôme', 'Phan', '9 r Clos Caillet', '79000', 'NIORT', 451.61, 867, 'PO'),
(46, 'Line', 'Riou', '43 bd G?n Vanier', '77000', 'MARNE LA VALLEE', 193.25, 534, 'MH'),
(47, 'Louis', 'Chubilleau', '46 r Eglise', '17000', 'SAINTES', 202.07, 298, 'MV'),
(48, 'Lucette', 'Lebrun', '178 r Auge', '54000', 'NANCY', 410.41, 723, 'PS'),
(49, 'Marc', 'Goessens', '6 av 6 Juin', '39000', 'DOLE', 548.57, 912, 'PH'),
(50, 'Marc', 'Laforge', '5 résid Prairie', '50000', 'SAINT LO', 265.05, 445, 'PO'),
(51, 'Marc', 'Millereau', '36 av 6 Juin', '72000', 'LA FERTE BERNARD', 430.42, 678, 'MH'),
(52, 'Marie-Christine', 'Dauverne', '69 av Charlemagne', '21000', 'DIJON', 281.05, 523, 'MV'),
(53, 'Myriam', 'Vittorio', '3 pl Champlain', '94000', 'BOISSY SAINT LEGER', 356.23, 789, 'PS'),
(54, 'Nhieu', 'Lapasset', '31 av 6 Juin', '52000', 'CHAUMONT', 107, 234, 'PH'),
(55, 'Nicole', 'Plantet-Besnier', '10 av 1ère Armée Française', '86000', 'CHATELLEREAULT', 369.94, 856, 'PO'),
(56, 'Pascal', 'Chubilleau', '3 r Hastings', '15000', 'AURRILLAC', 290.75, 567, 'MH'),
(57, 'Pascal', 'Robert', '31 r St Jean', '93000', 'BOBIGNY', 162.41, 412, 'MV'),
(58, 'Pascale', 'Jean', '114 r Authie', '49100', 'SAUMUR', 375.52, 689, 'PS'),
(59, 'Patrice', 'Chanteloube', '14 av Thiers', '13000', 'MARSEILLE', 478.01, 945, 'PH'),
(60, 'Patrice', 'Lecuirot', 'résid St Pères 55 r Pigacière', '54000', 'NANCY', 239.66, 378, 'PO'),
(61, 'Patrick', 'Gandon', '47 av Robert Schuman', '37000', 'TOURS', 599.06, 812, 'MH'),
(62, 'Patrick', 'Mirouf', '22 r Puits Picard', '74000', 'ANNECY', 458.42, 634, 'MV'),
(63, 'Philippe', 'Boireaux', '14 av Thiers', '10000', 'CHALON EN CHAMPAGNE', 454.48, 901, 'PS'),
(64, 'Philippe', 'Cendrier', '7 pl St Gilles', '12000', 'RODEZ', 164.16, 267, 'PH'),
(65, 'Philippe', 'Duhamel', '114 r Authie', '34000', 'MONTPELLIER', 98.62, 523, 'PO'),
(66, 'Philippe', 'Grigy', '15 r Mélingue', '44000', 'CLISSON', 285.1, 745, 'MH'),
(67, 'Philippe', 'Linard', '1 r Albert de Mun', '81000', 'ALBI', 486.3, 867, 'MV'),
(68, 'Philippe', 'Lozier', '8 r Gaillon', '31000', 'TOULOUSE', 48.4, 189, 'PS'),
(69, 'Pierre', 'Dechêtre', '63 av Thiers', '23000', 'MONTLUCON', 253.75, 456, 'PH'),
(70, 'Pierre', 'Goessens', '22 r Jean Romain', '40000', 'MONT DE MARSAN', 426.19, 723, 'PO'),
(71, 'Pierre', 'Lem?nager', '39 av 6 Juin', '57000', 'METZ', 118.7, 334, 'MH'),
(72, 'Pierre', 'Née', '39 av 6 Juin', '82000', 'MONTAUBAN', 72.54, 578, 'MV'),
(73, 'Pierre-Laurent', 'Guyot', '43 bd G?n Vanier', '48000', 'MENDE', 352.31, 812, 'PS'),
(74, 'Roger', 'Chauchard', '9 r Vaucelles', '13000', 'MARSEILLE', 552.19, 923, 'PH'),
(75, 'Roland', 'Mabire', '11 r Boutiques', '67000', 'STRASBOURG', 422.39, 645, 'PO'),
(76, 'Soazig', 'Leroy', '45 r Boutiques', '61000', 'ALENCON', 570.67, 789, 'MH'),
(77, 'Stéphane', 'Guyot', '26 r Hérouville', '46000', 'FIGEAC', 28.85, 156, 'MV'),
(78, 'Sylvain', 'Delposen', '39 av 6 Juin', '27000', 'DREUX', 292.01, 534, 'PS'),
(79, 'Sylvie', 'Rault', '15 bd Richemond', '2000', 'SOISSON', 526.6, 867, 'PH'),
(80, 'Sylvie', 'Renouf', '98 bd Mar Lyautey', '88000', 'EPINAL', 425.24, 678, 'PO'),
(81, 'Thierry', 'Alliet-Grach', '14 av Thiers', '7000', 'PRIVAS', 451.31, 912, 'MH'),
(82, 'Thierry', 'Bayard', '92 r Falaise', '42000', 'SAINT ETIENNE', 271.71, 545, 'MV'),
(83, 'Thierry', 'Gauchet', '7 r Desmoueux', '38100', 'GRENOBLE', 406.1, 756, 'PS'),
(84, 'Tristan', 'Bobichon', '219 r Caponière', '9000', 'FOIX', 218.36, 389, 'PH'),
(85, 'V?ronique', 'Duchemin-Laniel', '130 r St Jean', '33000', 'LIBOURNE', 265.61, 601, 'PO'),
(86, 'Youn?s', 'Laurent', '34 r Demolombe', '53000', 'MAYENNE', 496.1, 834, 'MH'),
(450, 'test', 'test', 'te', '45000', 'orléaén', 20, 512, 'MH'),
(999, 'gdfgdf', 'dgdg', 'dfg', 'fds', 'dfg', 5, 267, 'MH');

-- --------------------------------------------------------

--
-- Structure de la table `prescrire`
--

DROP TABLE IF EXISTS `prescrire`;
CREATE TABLE IF NOT EXISTS `prescrire` (
  `MED_DEPOTLEGAL` varchar(10) NOT NULL,
  `TIN_Code` int(11) NOT NULL,
  `DOS_CODE` int(11) NOT NULL,
  `PRE_POSOLOGIE` varchar(50) NOT NULL,
  PRIMARY KEY (`MED_DEPOTLEGAL`,`TIN_Code`,`DOS_CODE`),
  KEY `prescrire_tind_FK` (`TIN_Code`),
  KEY `prescrire_dosage_FK` (`DOS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `prescrire`
--

INSERT INTO `prescrire` (`MED_DEPOTLEGAL`, `TIN_Code`, `DOS_CODE`, `PRE_POSOLOGIE`) VALUES
('3MYC7', 1, 5, 'Application 2 à 3 fois par jour'),
('3MYC7', 2, 5, 'Application 2 fois par jour'),
('ADIMOL9', 1, 2, '1g matin et soir pendant 7 jours'),
('ADIMOL9', 2, 3, '250mg 3 fois par jour pendant 7 jours'),
('ADIMOL9', 4, 2, '1g matin et soir pendant 7 jours'),
('AMOPIL7', 1, 2, '1g 3 fois par jour pendant 7 jours'),
('AMOPIL7', 2, 3, '250mg 3 fois par jour pendant 7 jours'),
('AMOPIL7', 5, 1, '500mg 3 fois par jour si n?cessaire'),
('AMOX45', 1, 2, '1g 3 fois par jour'),
('AMOX45', 2, 3, '250mg 3 fois par jour'),
('AMOXIG12', 1, 2, '1g 3 fois par jour'),
('AMOXIG12', 4, 1, '500mg 3 fois par jour'),
('APATOUX22', 1, 5, '1 Comprimé à sucer toutes les 2h'),
('APATOUX22', 2, 5, '1 Comprimé à sucer 4 fois par jour'),
('BACTIG10', 1, 5, 'Application locale 2 fois par jour'),
('BACTIG10', 2, 5, 'Application locale 2 fois par jour'),
('BITALV', 1, 1, '1 à 2 Comprimés toutes les 6h'),
('BITALV', 4, 7, '1 Comprimé toutes les 6h'),
('CARTION6', 1, 1, '1 Comprimé effervescent 3 fois par jour'),
('CARTION6', 4, 7, '1 Comprimé 2 fois par jour'),
('CLAZER6', 1, 1, '500mg 2 fois par jour pendant 7 jours'),
('CLAZER6', 2, 3, '250mg 2 fois par jour pendant 7 jours'),
('CLAZER6', 4, 1, '500mg 2 fois par jour pendant 7 jours'),
('DEPRIL9', 1, 7, '50mg le soir, augmenter progressivement'),
('DEPRIL9', 4, 7, '25mg le soir'),
('DIMIRTAM6', 1, 7, '30mg le soir au coucher'),
('DIMIRTAM6', 4, 7, '15mg le soir au coucher'),
('DOLRIL7', 1, 1, '1 à 2 Comprimés toutes les 6h si besoin'),
('DOLRIL7', 4, 7, '1 Comprimé toutes les 6h si besoin'),
('DORNOM8', 1, 7, '1 Comprimé 30 min avant le coucher'),
('DORNOM8', 4, 7, '1/2 Comprimé avant le coucher'),
('EQUILARX6', 1, 3, '25mg 2 à 3 fois par jour'),
('EQUILARX6', 4, 3, '25mg 1 à 2 fois par jour'),
('EVILR7', 1, 10, '600mg le matin'),
('EVILR7', 4, 9, '300mg le matin'),
('INSXT5', 1, 5, 'Application locale 3 fois par jour'),
('INSXT5', 2, 5, 'Application locale 3 fois par jour'),
('INSXT5', 3, 5, 'Application locale 2 fois par jour'),
('JOVAI8', 1, 1, '500mg 2 fois par jour'),
('JOVAI8', 2, 3, '250mg 2 fois par jour'),
('LIDOXY23', 1, 6, '1 injection IM toutes les 12h'),
('LITHOR12', 1, 10, '800mg en 2 prises'),
('PARMOL16', 1, 1, '1 à 2 Comprimés toutes les 6h'),
('PHYSOI8', 1, 10, '400mg par jour en 2 prises'),
('PHYSOI8', 4, 9, '200mg par jour'),
('PIRIZ8', 1, 2, '1,5g à 2g par jour en 1 prise'),
('POMDI20', 1, 5, '1 application 3 fois par jour'),
('POMDI20', 2, 5, '1 application 3 fois par jour'),
('TROXT21', 1, 9, '20mg le matin'),
('TROXT21', 4, 9, '10mg le matin'),
('TXISOL22', 1, 5, '1 Comprimé à sucer toutes les 2h'),
('TXISOL22', 2, 5, '1 Comprimé à sucer 4 fois par jour'),
('URIEG6', 1, 10, '1 sachet dose unique le soir');

-- --------------------------------------------------------

--
-- Structure de la table `presentation`
--

DROP TABLE IF EXISTS `presentation`;
CREATE TABLE IF NOT EXISTS `presentation` (
  `PRE_CODE` varchar(2) NOT NULL,
  `PRE_LIBELLE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PRE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `presentation`
--

INSERT INTO `presentation` (`PRE_CODE`, `PRE_LIBELLE`) VALUES
('CP', 'Comprimé'),
('CR', 'Cr?me'),
('GE', 'Gélule'),
('GO', 'Gouttes'),
('IN', 'Injectable'),
('PO', 'Pommade'),
('SI', 'Sirop'),
('SO', 'Solution'),
('SP', 'Spray'),
('SU', 'Suppositoire');

-- --------------------------------------------------------

--
-- Structure de la table `rapport_visite`
--

DROP TABLE IF EXISTS `rapport_visite`;
CREATE TABLE IF NOT EXISTS `rapport_visite` (
  `VIS_MATRICULE` varchar(10) NOT NULL,
  `RAP_NUM` int(11) NOT NULL,
  `RAP_DATEVISITE` date DEFAULT NULL,
  `RAP_BILAN` varchar(255) DEFAULT NULL,
  `RAP_MOTIF` varchar(50) DEFAULT NULL,
  `ETAT_CODE` int(11) DEFAULT NULL,
  `MED_DEPOTLEGAL1` varchar(10) DEFAULT NULL,
  `MED_DEPOTLEGAL2` varchar(10) DEFAULT NULL,
  `MOT_CODE` int(11) DEFAULT NULL,
  `PRA_NUM` int(11) NOT NULL,
  `PRA_NUM_REMPLACANT` int(11) DEFAULT NULL,
  PRIMARY KEY (`VIS_MATRICULE`,`RAP_NUM`),
  KEY `rapport_visite_praticien_remp_FK` (`PRA_NUM`),
  KEY `rapport_visite_motif_FK` (`MOT_CODE`),
  KEY `rapport_visite_etat_FK` (`ETAT_CODE`),
  KEY `rapport_visite_medicament1_FK` (`MED_DEPOTLEGAL1`),
  KEY `rapport_visite_medicament2_FK` (`MED_DEPOTLEGAL2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `rapport_visite`
--

INSERT INTO `rapport_visite` (`VIS_MATRICULE`, `RAP_NUM`, `RAP_DATEVISITE`, `RAP_BILAN`, `RAP_MOTIF`, `ETAT_CODE`, `MED_DEPOTLEGAL1`, `MED_DEPOTLEGAL2`, `MOT_CODE`, `PRA_NUM`, `PRA_NUM_REMPLACANT`) VALUES
('a131', 1, '2002-04-18', 'Médecin curieux, à recontacter en décembre pour Réunion.', NULL, NULL, NULL, NULL, NULL, 23, NULL),
('a131', 2, '2003-03-23', 'RAS.\r\nChangement de tel : 05 89 89 89 89.', NULL, NULL, NULL, NULL, NULL, 41, NULL),
('a131', 3, '2021-12-03', 'Médecin ?nerv?, ancien boxeur !', NULL, NULL, NULL, NULL, NULL, 7, NULL),
('a131', 4, '2025-11-22', 'dqsdf', NULL, 2, NULL, NULL, 3, 63, NULL),
('a131', 5, '2025-12-09', 'fff', NULL, 1, NULL, NULL, 1, 34, NULL),
('a131', 6, '2025-12-09', 'ee', NULL, 2, 'AMOX45', 'BITALV', 2, 41, NULL),
('a131', 7, '2025-12-09', 'g', NULL, 2, 'INSXT5', NULL, 1, 81, NULL),
('a17', 1, '2003-05-21', 'Changement de direction, red?finition de la politique médicamenteuse, recours au générique.', NULL, NULL, NULL, NULL, NULL, 4, NULL),
('l56', 1, '2025-11-20', 'sdgsfg', NULL, 2, NULL, NULL, 1, 15, NULL),
('l56', 2, '2025-11-21', 'tt', NULL, 2, NULL, NULL, 2, 82, NULL),
('l56', 3, '2025-11-21', 'test', NULL, 2, NULL, NULL, 2, 82, NULL),
('l56', 4, '2025-11-21', 'test', NULL, 2, NULL, NULL, 4, 74, NULL),
('l56', 5, '2025-12-03', 'sdf', NULL, 2, NULL, NULL, 2, 81, 82),
('l56', 6, '2025-12-09', 'test', NULL, 1, 'JOVAI8', 'EQUILARX6', 1, 41, 26),
('l56', 7, '2025-12-09', 'test', NULL, 2, 'JOVAI8', 'EQUILARX6', 1, 41, 26),
('l56', 8, '2025-12-10', 'test', NULL, 2, 'JOVAI8', 'EQUILARX6', 1, 41, 26),
('l56', 9, '2025-12-10', 'test', 'test', 1, NULL, NULL, 5, 41, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE IF NOT EXISTS `region` (
  `REG_CODE` varchar(2) NOT NULL,
  `REG_NOM` varchar(50) DEFAULT NULL,
  `SEC_CODE` varchar(1) NOT NULL,
  PRIMARY KEY (`REG_CODE`),
  KEY `region_secteur0_FK` (`SEC_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`REG_CODE`, `REG_NOM`, `SEC_CODE`) VALUES
('AQ', 'Nouvelle Aquitaine', 'S'),
('BG', 'Bretagne', 'O'),
('CE', 'Centre Val de Loire', 'P'),
('CO', 'Corse', 'S'),
('FC', 'Bourgogne Franche Comté', 'E'),
('GE', 'Grand Est', 'E'),
('GU', 'Guadeloupe', 'S'),
('GY', 'Guyanne', 'S'),
('HF', 'Haut de France', 'N'),
('IF', 'Ile de France', 'P'),
('MA', 'Martinique', 'S'),
('MY', 'Mayotte', 'S'),
('NC', 'Nouvelle Calédonie', 'S'),
('NO', 'Normandie', 'N'),
('OC', 'Occitanie', 'S'),
('PA', 'Provence Alpes Cote d\'Azur', 'S'),
('PL', 'Pays de Loire', 'O'),
('RA', 'Auvergne Rhone Alpes', 'E'),
('RE', 'Réunion', 'S');

-- --------------------------------------------------------

--
-- Structure de la table `secteur`
--

DROP TABLE IF EXISTS `secteur`;
CREATE TABLE IF NOT EXISTS `secteur` (
  `SEC_CODE` varchar(1) NOT NULL,
  `SEC_LIBELLE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`SEC_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `secteur`
--

INSERT INTO `secteur` (`SEC_CODE`, `SEC_LIBELLE`) VALUES
('E', 'Est'),
('N', 'Nord'),
('O', 'Ouest'),
('P', 'Paris centre'),
('S', 'Sud');

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

DROP TABLE IF EXISTS `specialite`;
CREATE TABLE IF NOT EXISTS `specialite` (
  `SPE_CODE` varchar(5) NOT NULL,
  `SPE_LIBELLE` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`SPE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `specialite`
--

INSERT INTO `specialite` (`SPE_CODE`, `SPE_LIBELLE`) VALUES
('ACP', 'anatomie et cytologie pathologiques'),
('AMV', 'angéiologie, Médecine vasculaire'),
('ARC', 'anesthésiologie et réanimation chirurgicale'),
('BM', 'biologie médicale'),
('CAC', 'cardiologie et affections cardio-vasculaires'),
('CCT', 'chirurgie cardio-vasculaire et thoracique'),
('CG', 'chirurgie Générale'),
('CMF', 'chirurgie maxillo-faciale'),
('COM', 'cancérologie, oncologie médicale'),
('COT', 'chirurgie orthopédique et traumatologie'),
('CPR', 'chirurgie plastique reconstructrice et esthétique'),
('CU', 'chirurgie urologique'),
('CV', 'chirurgie vasculaire'),
('DN', 'diabétologie-nutrition, nutrition'),
('DV', 'dermatologie et vénéréologie'),
('EM', 'endocrinologie et métabolismes'),
('ETD', 'évaluation et traitement de la douleur'),
('GEH', 'gastro-entérologie et hépatologie (appareil digestif)'),
('GMO', 'gynécologie médicale, obstétrique'),
('GO', 'gynécologie-obstétrique'),
('HEM', 'maladies du sang (hématologie)'),
('MBS', 'Médecine et biologie du sport'),
('MDT', 'Médecine du travail'),
('MMO', 'Médecine manuelle - ostéopathie'),
('MN', 'Médecine nucléaire'),
('MPR', 'Médecine physique et de réadaptation'),
('MTR', 'Médecine tropicale, pathologie infectieuse et tropicale'),
('NEP', 'n?phrologie'),
('NRC', 'neurochirurgie'),
('NRL', 'neurologie'),
('ODM', 'orthop?die dento maxillo-faciale'),
('OPH', 'ophtalmologie'),
('ORL', 'oto-rhino-laryngologie'),
('PEA', 'psychiatrie de l\'enfant et de l\'adolescent'),
('PME', 'pédiatrie maladies des enfants'),
('PNM', 'pneumologie'),
('PSC', 'psychiatrie'),
('RAD', 'radiologie (radiodiagnostic et imagerie médicale)'),
('RDT', 'radiothérapie (oncologie option radiothérapie)'),
('RGM', 'reproduction et gynécologie médicale'),
('RHU', 'rhumatologie'),
('STO', 'stomatologie'),
('SXL', 'sexologie'),
('TXA', 'toxicomanie et alcoologie');

-- --------------------------------------------------------

--
-- Structure de la table `travailler`
--

DROP TABLE IF EXISTS `travailler`;
CREATE TABLE IF NOT EXISTS `travailler` (
  `VIS_MATRICULE` varchar(10) NOT NULL,
  `REG_CODE` varchar(2) NOT NULL,
  `TRA_ROLE` varchar(50) NOT NULL,
  PRIMARY KEY (`VIS_MATRICULE`,`REG_CODE`),
  KEY `travailler_region0_FK` (`REG_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Structure de la table `type_frais`
--

DROP TABLE IF EXISTS `type_frais`;
CREATE TABLE IF NOT EXISTS `type_frais` (
  `TF_CODE` int(11) NOT NULL,
  `TF_LIBELLE` varchar(30) NOT NULL,
  `TF_FORFAIT` float NOT NULL,
  PRIMARY KEY (`TF_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Structure de la table `type_individu`
--

DROP TABLE IF EXISTS `type_individu`;
CREATE TABLE IF NOT EXISTS `type_individu` (
  `TIN_Code` int(11) NOT NULL AUTO_INCREMENT,
  `TIN_LIBELLE` varchar(50) NOT NULL,
  PRIMARY KEY (`TIN_Code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `type_individu`
--

INSERT INTO `type_individu` (`TIN_Code`, `TIN_LIBELLE`) VALUES
(1, 'Adulte'),
(2, 'Enfant'),
(3, 'Nourrisson'),
(4, 'Personne âgée'),
(5, 'Femme enceinte');

-- --------------------------------------------------------

--
-- Structure de la table `type_praticien`
--

DROP TABLE IF EXISTS `type_praticien`;
CREATE TABLE IF NOT EXISTS `type_praticien` (
  `TYP_CODE` varchar(3) NOT NULL,
  `TYP_LIBELLE` varchar(25) DEFAULT NULL,
  `TYP_LIEU` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`TYP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `type_praticien`
--

INSERT INTO `type_praticien` (`TYP_CODE`, `TYP_LIBELLE`, `TYP_LIEU`) VALUES
('MH', 'Médecin Hospitalier', 'Hopital ou clinique'),
('MV', 'Médecine de Ville', 'Cabinet'),
('PH', 'Pharmacien Hospitalier', 'Hopital ou clinique'),
('PO', 'Pharmacien Officine', 'Pharmacie'),
('PS', 'Personnel de sant?', 'Centre paramédical');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `collaborateur`
--
ALTER TABLE `collaborateur`
  ADD CONSTRAINT `collaborateur_habilitation0_FK` FOREIGN KEY (`HAB_ID`) REFERENCES `habilitation` (`HAB_ID`),
  ADD CONSTRAINT `collaborateur_region1_FK` FOREIGN KEY (`REG_CODE`) REFERENCES `region` (`REG_CODE`),
  ADD CONSTRAINT `collaborateur_secteur0_FK` FOREIGN KEY (`SEC_CODE`) REFERENCES `secteur` (`SEC_CODE`);

--
-- Contraintes pour la table `departement`
--
ALTER TABLE `departement`
  ADD CONSTRAINT `FK_region` FOREIGN KEY (`REG_CODE`) REFERENCES `region` (`REG_CODE`);

--
-- Contraintes pour la table `formuler`
--
ALTER TABLE `formuler`
  ADD CONSTRAINT `FORMULER_medicament0_FK` FOREIGN KEY (`MED_DEPOTLEGAL`) REFERENCES `medicament` (`MED_DEPOTLEGAL`),
  ADD CONSTRAINT `FORMULER_presentation1_FK` FOREIGN KEY (`PRE_CODE`) REFERENCES `presentation` (`PRE_CODE`);

--
-- Contraintes pour la table `interagir`
--
ALTER TABLE `interagir`
  ADD CONSTRAINT `interagir_med1_FK` FOREIGN KEY (`MED_DEPOTLEGAL`) REFERENCES `medicament` (`MED_DEPOTLEGAL`) ON UPDATE CASCADE,
  ADD CONSTRAINT `interagir_med2_FK` FOREIGN KEY (`MED_DEPOTLEGAL2`) REFERENCES `medicament` (`MED_DEPOTLEGAL`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_collaborateur0_FK` FOREIGN KEY (`COL_MATRICULE`) REFERENCES `collaborateur` (`COL_MATRICULE`);

--
-- Contraintes pour la table `medicament`
--
ALTER TABLE `medicament`
  ADD CONSTRAINT `medicament_famille0_FK` FOREIGN KEY (`FAM_CODE`) REFERENCES `famille` (`FAM_CODE`);

--
-- Contraintes pour la table `offrir`
--
ALTER TABLE `offrir`
  ADD CONSTRAINT `offrir_medicament_FK` FOREIGN KEY (`MED_DEPOTLEGAL`) REFERENCES `medicament` (`MED_DEPOTLEGAL`) ON UPDATE CASCADE,
  ADD CONSTRAINT `offrir_rv_FK` FOREIGN KEY (`VIS_MATRICULE`,`RAP_NUM`) REFERENCES `rapport_visite` (`VIS_MATRICULE`, `RAP_NUM`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `posseder`
--
ALTER TABLE `posseder`
  ADD CONSTRAINT `fk_posseder_praticien` FOREIGN KEY (`PRA_NUM`) REFERENCES `praticien` (`PRA_NUM`),
  ADD CONSTRAINT `fk_posseder_specialite` FOREIGN KEY (`SPE_CODE`) REFERENCES `specialite` (`SPE_CODE`);

--
-- Contraintes pour la table `praticien`
--
ALTER TABLE `praticien`
  ADD CONSTRAINT `praticien_type_praticien0_FK` FOREIGN KEY (`TYP_CODE`) REFERENCES `type_praticien` (`TYP_CODE`);

--
-- Contraintes pour la table `prescrire`
--
ALTER TABLE `prescrire`
  ADD CONSTRAINT `prescrire_dosage_FK` FOREIGN KEY (`DOS_CODE`) REFERENCES `dosage` (`DOS_CODE`) ON UPDATE CASCADE,
  ADD CONSTRAINT `prescrire_medicament_FK` FOREIGN KEY (`MED_DEPOTLEGAL`) REFERENCES `medicament` (`MED_DEPOTLEGAL`) ON UPDATE CASCADE,
  ADD CONSTRAINT `prescrire_tind_FK` FOREIGN KEY (`TIN_Code`) REFERENCES `type_individu` (`TIN_Code`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `rapport_visite`
--
ALTER TABLE `rapport_visite`
  ADD CONSTRAINT `rapport_visite_collaborateur0_FK` FOREIGN KEY (`VIS_MATRICULE`) REFERENCES `collaborateur` (`COL_MATRICULE`),
  ADD CONSTRAINT `rapport_visite_etat_FK` FOREIGN KEY (`ETAT_CODE`) REFERENCES `etat` (`ETAT_CODE`),
  ADD CONSTRAINT `rapport_visite_ibfk_1` FOREIGN KEY (`MOT_CODE`) REFERENCES `motif_visite` (`MOT_CODE`),
  ADD CONSTRAINT `rapport_visite_medicament1_FK` FOREIGN KEY (`MED_DEPOTLEGAL1`) REFERENCES `medicament` (`MED_DEPOTLEGAL`),
  ADD CONSTRAINT `rapport_visite_medicament2_FK` FOREIGN KEY (`MED_DEPOTLEGAL2`) REFERENCES `medicament` (`MED_DEPOTLEGAL`),
  ADD CONSTRAINT `rapport_visite_praticien2_FK` FOREIGN KEY (`PRA_NUM`) REFERENCES `praticien` (`PRA_NUM`);

--
-- Contraintes pour la table `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `region_secteur0_FK` FOREIGN KEY (`SEC_CODE`) REFERENCES `secteur` (`SEC_CODE`);

--
-- Contraintes pour la table `travailler`
--
ALTER TABLE `travailler`
  ADD CONSTRAINT `travailler_collaborateur_FK` FOREIGN KEY (`VIS_MATRICULE`) REFERENCES `collaborateur` (`COL_MATRICULE`) ON UPDATE CASCADE,
  ADD CONSTRAINT `travailler_region0_FK` FOREIGN KEY (`REG_CODE`) REFERENCES `region` (`REG_CODE`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
