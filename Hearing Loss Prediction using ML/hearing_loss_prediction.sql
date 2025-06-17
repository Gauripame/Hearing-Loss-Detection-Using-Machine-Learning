-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 29, 2024 at 06:32 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hearing_loss_prediction`
--
CREATE DATABASE IF NOT EXISTS `hearing_loss_prediction` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hearing_loss_prediction`;

-- --------------------------------------------------------

--
-- Table structure for table `ada_algo`
--

DROP TABLE IF EXISTS `ada_algo`;
CREATE TABLE IF NOT EXISTS `ada_algo` (
  `ADA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`ADA_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ada_algo`
--

INSERT INTO `ada_algo` (`ADA_ID`, `Accuracy`, `Precession`, `F1_Score`, `Recall`, `Name`) VALUES
(1, '91.2', '91.91', '90.47', '89.56', 'ADA Boost Algorithm'),
(2, '91.2', '91.91', '90.47', '89.56', 'ADA Boost Algorithm');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add ad a_algo', 7, 'add_ada_algo'),
(26, 'Can change ad a_algo', 7, 'change_ada_algo'),
(27, 'Can delete ad a_algo', 7, 'delete_ada_algo'),
(28, 'Can view ad a_algo', 7, 'view_ada_algo'),
(29, 'Can add dataset', 8, 'add_dataset'),
(30, 'Can change dataset', 8, 'change_dataset'),
(31, 'Can delete dataset', 8, 'delete_dataset'),
(32, 'Can view dataset', 8, 'view_dataset'),
(33, 'Can add decissio n_algo', 9, 'add_decission_algo'),
(34, 'Can change decissio n_algo', 9, 'change_decission_algo'),
(35, 'Can delete decissio n_algo', 9, 'delete_decission_algo'),
(36, 'Can view decissio n_algo', 9, 'view_decission_algo'),
(37, 'Can add kn n_algo', 10, 'add_knn_algo'),
(38, 'Can change kn n_algo', 10, 'change_knn_algo'),
(39, 'Can delete kn n_algo', 10, 'delete_knn_algo'),
(40, 'Can view kn n_algo', 10, 'view_knn_algo'),
(41, 'Can add sx m_algo', 11, 'add_sxm_algo'),
(42, 'Can change sx m_algo', 11, 'change_sxm_algo'),
(43, 'Can delete sx m_algo', 11, 'delete_sxm_algo'),
(44, 'Can view sx m_algo', 11, 'view_sxm_algo'),
(45, 'Can add upload_dataset_model', 12, 'add_upload_dataset_model'),
(46, 'Can change upload_dataset_model', 12, 'change_upload_dataset_model'),
(47, 'Can delete upload_dataset_model', 12, 'delete_upload_dataset_model'),
(48, 'Can view upload_dataset_model', 12, 'view_upload_dataset_model'),
(49, 'Can add x g_algo', 13, 'add_xg_algo'),
(50, 'Can change x g_algo', 13, 'change_xg_algo'),
(51, 'Can delete x g_algo', 13, 'delete_xg_algo'),
(52, 'Can view x g_algo', 13, 'view_xg_algo'),
(53, 'Can add logistic', 14, 'add_logistic'),
(54, 'Can change logistic', 14, 'change_logistic'),
(55, 'Can delete logistic', 14, 'delete_logistic'),
(56, 'Can view logistic', 14, 'view_logistic'),
(57, 'Can add random forest', 15, 'add_randomforest'),
(58, 'Can change random forest', 15, 'change_randomforest'),
(59, 'Can delete random forest', 15, 'delete_randomforest'),
(60, 'Can view random forest', 15, 'view_randomforest'),
(61, 'Can add gradient boosting', 16, 'add_gradientboosting'),
(62, 'Can change gradient boosting', 16, 'change_gradientboosting'),
(63, 'Can delete gradient boosting', 16, 'delete_gradientboosting'),
(64, 'Can view gradient boosting', 16, 'view_gradientboosting'),
(65, 'Can add user hearing detection models', 17, 'add_userhearingdetectionmodels'),
(66, 'Can change user hearing detection models', 17, 'change_userhearingdetectionmodels'),
(67, 'Can delete user hearing detection models', 17, 'delete_userhearingdetectionmodels'),
(68, 'Can view user hearing detection models', 17, 'view_userhearingdetectionmodels'),
(69, 'Can add last_login', 18, 'add_last_login'),
(70, 'Can change last_login', 18, 'change_last_login'),
(71, 'Can delete last_login', 18, 'delete_last_login'),
(72, 'Can view last_login', 18, 'view_last_login'),
(73, 'Can add predict_details', 19, 'add_predict_details'),
(74, 'Can change predict_details', 19, 'change_predict_details'),
(75, 'Can delete predict_details', 19, 'delete_predict_details'),
(76, 'Can view predict_details', 19, 'view_predict_details'),
(77, 'Can add prediction count', 20, 'add_predictioncount'),
(78, 'Can change prediction count', 20, 'change_predictioncount'),
(79, 'Can delete prediction count', 20, 'delete_predictioncount'),
(80, 'Can view prediction count', 20, 'view_predictioncount');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

DROP TABLE IF EXISTS `dataset`;
CREATE TABLE IF NOT EXISTS `dataset` (
  `DS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Age` int(11) NOT NULL,
  `TEST_RESULTS` int(11) NOT NULL,
  `Pregnancies` int(11) NOT NULL,
  `PHYSICAL_SCORE` double NOT NULL,
  PRIMARY KEY (`DS_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `decission_algo`
--

DROP TABLE IF EXISTS `decission_algo`;
CREATE TABLE IF NOT EXISTS `decission_algo` (
  `DECISSION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`DECISSION_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `decission_algo`
--

INSERT INTO `decission_algo` (`DECISSION_ID`, `Accuracy`, `Precession`, `F1_Score`, `Recall`, `Name`) VALUES
(1, '88.5', '87.86', '87.88', '87.89', 'Decision Tree Algorithm'),
(2, '88.5', '87.86', '87.88', '87.89', 'Decision Tree Algorithm');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'adminapp', 'ada_algo'),
(8, 'adminapp', 'dataset'),
(9, 'adminapp', 'decission_algo'),
(10, 'adminapp', 'knn_algo'),
(11, 'adminapp', 'sxm_algo'),
(12, 'adminapp', 'upload_dataset_model'),
(13, 'adminapp', 'xg_algo'),
(14, 'adminapp', 'logistic'),
(15, 'adminapp', 'randomforest'),
(16, 'adminapp', 'gradientboosting'),
(17, 'userapp', 'userhearingdetectionmodels'),
(18, 'userapp', 'last_login'),
(19, 'userapp', 'predict_details'),
(20, 'userapp', 'predictioncount');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-05-29 17:51:26.995726'),
(2, 'auth', '0001_initial', '2024-05-29 17:51:27.526423'),
(3, 'admin', '0001_initial', '2024-05-29 17:51:27.615372'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-05-29 17:51:27.630363'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-05-29 17:51:27.647354'),
(6, 'adminapp', '0001_initial', '2024-05-29 17:51:27.891213'),
(7, 'adminapp', '0002_logistic_randomforest_and_more', '2024-05-29 17:51:28.069111'),
(8, 'adminapp', '0003_delete_anm_algo_delete_ann_algo_delete_dt_algo', '2024-05-29 17:51:28.084106'),
(9, 'adminapp', '0004_gradientboostingclassifier', '2024-05-29 17:51:28.096097'),
(10, 'adminapp', '0005_rename_gradientboostingclassifier_gradientboosting', '2024-05-29 17:51:28.202038'),
(11, 'contenttypes', '0002_remove_content_type_name', '2024-05-29 17:51:28.279993'),
(12, 'auth', '0002_alter_permission_name_max_length', '2024-05-29 17:51:28.314972'),
(13, 'auth', '0003_alter_user_email_max_length', '2024-05-29 17:51:28.352951'),
(14, 'auth', '0004_alter_user_username_opts', '2024-05-29 17:51:28.371939'),
(15, 'auth', '0005_alter_user_last_login_null', '2024-05-29 17:51:28.414915'),
(16, 'auth', '0006_require_contenttypes_0002', '2024-05-29 17:51:28.417912'),
(17, 'auth', '0007_alter_validators_add_error_messages', '2024-05-29 17:51:28.436903'),
(18, 'auth', '0008_alter_user_username_max_length', '2024-05-29 17:51:28.471883'),
(19, 'auth', '0009_alter_user_last_name_max_length', '2024-05-29 17:51:28.509860'),
(20, 'auth', '0010_alter_group_name_max_length', '2024-05-29 17:51:28.544841'),
(21, 'auth', '0011_update_proxy_permissions', '2024-05-29 17:51:28.569827'),
(22, 'auth', '0012_alter_user_first_name_max_length', '2024-05-29 17:51:28.611802'),
(23, 'sessions', '0001_initial', '2024-05-29 17:51:28.645783'),
(24, 'userapp', '0001_initial', '2024-05-29 17:51:28.662773'),
(25, 'userapp', '0002_last_login_and_more', '2024-05-29 17:51:28.767712'),
(26, 'userapp', '0003_predict_details', '2024-05-29 17:51:28.787701'),
(27, 'userapp', '0004_alter_userhearingdetectionmodels_user_dates_and_more', '2024-05-29 17:51:28.852666'),
(28, 'userapp', '0005_userprediction_delete_userprofile', '2024-05-29 17:51:28.943614'),
(29, 'userapp', '0006_predictioncount_delete_userprediction', '2024-05-29 17:51:28.997581');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('i5ir40wo1ikcmy2kqiwhlsh7wqfm6nlu', 'eyJhY2N1cmFjeSI6OTEuMH0:1sCNjA:SIHXe4EIISK6g4OBIeL0cUOGabUowPw4X-8Q7O42nvM', '2024-06-12 18:08:44.327848'),
('9ecbs0x4g5dsbjwrudq5tk1vtoeo3u8f', '.eJxNjcEKwjAQRP9lzktoqkKak39Slu1WAq3Khh5U_HeTUKiX5e1jhvmARTZjeSEO3nWESfN4uBDchWB8_3NDV3NbVht15bQgYuY3LzlZfa-3ep08VuypNCF6KktWyr07E56mDUNhU2nbvifMjcKp2lxK3x8pdTCT:1sCO5Y:ODCvPftlRj9iX6wM42h8nAssq834YvNKn3EuAMByya0', '2024-06-12 18:31:52.610620');

-- --------------------------------------------------------

--
-- Table structure for table `gradient`
--

DROP TABLE IF EXISTS `gradient`;
CREATE TABLE IF NOT EXISTS `gradient` (
  `Logistic_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`Logistic_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gradient`
--

INSERT INTO `gradient` (`Logistic_ID`, `Accuracy`, `Precession`, `F1_Score`, `Recall`, `Name`) VALUES
(1, '92.4', '91.38', '93.99', '96.74', 'Gradient Boost Algorithm'),
(2, '92.4', '91.38', '93.99', '96.74', 'Gradient Boost Algorithm');

-- --------------------------------------------------------

--
-- Table structure for table `hearing_table`
--

DROP TABLE IF EXISTS `hearing_table`;
CREATE TABLE IF NOT EXISTS `hearing_table` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_dates` date DEFAULT NULL,
  `user_username` longtext DEFAULT NULL,
  `user_email` longtext DEFAULT NULL,
  `user_password` longtext DEFAULT NULL,
  `user_contact` longtext DEFAULT NULL,
  `user_file` varchar(100) DEFAULT NULL,
  `user_status` longtext DEFAULT NULL,
  `otp_status` longtext NOT NULL,
  `otp` int(11) DEFAULT NULL,
  `Last_Login_Date` date DEFAULT NULL,
  `Last_Login_Time` time(6) DEFAULT NULL,
  `No_Of_Times_Login` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hearing_table`
--

INSERT INTO `hearing_table` (`user_id`, `user_dates`, `user_username`, `user_email`, `user_password`, `user_contact`, `user_file`, `user_status`, `otp_status`, `otp`, `Last_Login_Date`, `Last_Login_Time`, `No_Of_Times_Login`) VALUES
(1, '2024-05-30', 'fazal', 'fazalsirmail@gmail.com', 'fazal', '8555887987', 'images/face21.jpg', 'Accepted', 'verified', 8551, '2024-05-30', '00:01:57.000000', 2);

-- --------------------------------------------------------

--
-- Table structure for table `knn_algo`
--

DROP TABLE IF EXISTS `knn_algo`;
CREATE TABLE IF NOT EXISTS `knn_algo` (
  `KNN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`KNN_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `knn_algo`
--

INSERT INTO `knn_algo` (`KNN_ID`, `Accuracy`, `Precession`, `F1_Score`, `Recall`, `Name`) VALUES
(1, '91.9', '92.03', '91.34', '90.81', 'KNN Algorithm'),
(2, '91.9', '92.03', '91.34', '90.81', 'KNN Algorithm');

-- --------------------------------------------------------

--
-- Table structure for table `last_login`
--

DROP TABLE IF EXISTS `last_login`;
CREATE TABLE IF NOT EXISTS `last_login` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Login_Time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logistic`
--

DROP TABLE IF EXISTS `logistic`;
CREATE TABLE IF NOT EXISTS `logistic` (
  `Logistic_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`Logistic_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logistic`
--

INSERT INTO `logistic` (`Logistic_ID`, `Accuracy`, `Precession`, `F1_Score`, `Recall`, `Name`) VALUES
(1, '91.0', '91.02', '90.38', '89.88', 'Logistic Regression Algorithm'),
(2, '91.0', '91.02', '90.38', '89.88', 'Logistic Regression Algorithm'),
(3, '91.0', '91.02', '90.38', '89.88', 'Logistic Regression Algorithm');

-- --------------------------------------------------------

--
-- Table structure for table `predict_detail`
--

DROP TABLE IF EXISTS `predict_detail`;
CREATE TABLE IF NOT EXISTS `predict_detail` (
  `predict_id` int(11) NOT NULL AUTO_INCREMENT,
  `Field_1` varchar(60) DEFAULT NULL,
  `Field_2` varchar(60) DEFAULT NULL,
  `Field_3` varchar(60) DEFAULT NULL,
  `Field_4` varchar(60) DEFAULT NULL,
  `Field_5` varchar(60) DEFAULT NULL,
  `Field_6` varchar(60) DEFAULT NULL,
  `Field_7` varchar(60) DEFAULT NULL,
  `Field_8` varchar(60) DEFAULT NULL,
  `Field_9` varchar(60) DEFAULT NULL,
  `Field_10` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`predict_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `randomforest`
--

DROP TABLE IF EXISTS `randomforest`;
CREATE TABLE IF NOT EXISTS `randomforest` (
  `Random_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`Random_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `randomforest`
--

INSERT INTO `randomforest` (`Random_ID`, `Accuracy`, `Precession`, `F1_Score`, `Recall`, `Name`) VALUES
(1, '90.2', '90.06', '89.55', '89.13', 'Random Forest'),
(2, '90.0', '89.76', '89.36', '89.02', 'Random Forest');

-- --------------------------------------------------------

--
-- Table structure for table `svc_algo`
--

DROP TABLE IF EXISTS `svc_algo`;
CREATE TABLE IF NOT EXISTS `svc_algo` (
  `SXM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`SXM_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `svc_algo`
--

INSERT INTO `svc_algo` (`SXM_ID`, `Accuracy`, `Precession`, `F1_Score`, `Recall`, `Name`) VALUES
(1, '91.6', '92.02', '90.96', '90.23', 'SVM Algorithm'),
(2, '91.6', '92.02', '90.96', '90.23', 'SVM Algorithm');

-- --------------------------------------------------------

--
-- Table structure for table `upload_dataset`
--

DROP TABLE IF EXISTS `upload_dataset`;
CREATE TABLE IF NOT EXISTS `upload_dataset` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `Dataset` varchar(100) DEFAULT NULL,
  `File_size` varchar(100) NOT NULL,
  `Date_Time` datetime(6) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload_dataset`
--

INSERT INTO `upload_dataset` (`user_id`, `Dataset`, `File_size`, `Date_Time`) VALUES
(1, 'hearing_test.csv', '100.5791015625 kb', '2024-05-29 18:06:59.819324'),
(2, 'hearing_test_CGawiOG.csv', '100.5791015625 kb', '2024-05-29 18:27:30.713659');

-- --------------------------------------------------------

--
-- Table structure for table `userapp_predictioncount`
--

DROP TABLE IF EXISTS `userapp_predictioncount`;
CREATE TABLE IF NOT EXISTS `userapp_predictioncount` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prediction_count` int(10) UNSIGNED NOT NULL CHECK (`prediction_count` >= 0),
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xg_algo`
--

DROP TABLE IF EXISTS `xg_algo`;
CREATE TABLE IF NOT EXISTS `xg_algo` (
  `XG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Accuracy` longtext NOT NULL,
  `Precession` longtext NOT NULL,
  `F1_Score` longtext NOT NULL,
  `Recall` longtext NOT NULL,
  `Name` longtext NOT NULL,
  PRIMARY KEY (`XG_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xg_algo`
--

INSERT INTO `xg_algo` (`XG_ID`, `Accuracy`, `Precession`, `F1_Score`, `Recall`, `Name`) VALUES
(1, '91.7', '91.16', '93.41', '95.77', 'XG Boost Algorithm'),
(2, '91.7', '91.16', '93.41', '95.77', 'XG Boost Algorithm');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
