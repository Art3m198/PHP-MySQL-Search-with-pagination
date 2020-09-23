-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Сен 23 2020 г., 07:10
-- Версия сервера: 5.5.25
-- Версия PHP: 5.6.19

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `database`
--

-- --------------------------------------------------------

--
-- Структура таблицы `persons`
--

CREATE TABLE IF NOT EXISTS `persons` (
  `contact_id` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `contact_number_home` varchar(20) DEFAULT NULL,
  `contact_number_mobile` varchar(20) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `address_line_1` varchar(100) DEFAULT NULL,
  `address_line_2` varchar(100) DEFAULT NULL,
  `address_town` varchar(100) DEFAULT NULL,
  `address_county` varchar(100) DEFAULT NULL,
  `address_post_code` varchar(20) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `city` longtext,
  `job` longtext,
  `web` longtext,
  `photo` longtext,
  `reason` longtext,
  `added` longtext,
  `updated` longtext,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `persons`
--

INSERT INTO `persons` (`contact_id`, `last_name`, `first_name`, `middle_name`, `date_of_birth`, `contact_number_home`, `contact_number_mobile`, `contact_email`, `address_line_1`, `address_line_2`, `address_town`, `address_county`, `address_post_code`, `gender`, `birthday`, `city`, `job`, `web`, `photo`, `reason`, `added`, `updated`) VALUES
('0VzH3pkppyOU', 'Fletcher', 'Maximillian', NULL, '1992-05-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Male', NULL, 'Berlin', 'Chief information officer', 'Twitter', '../../uploads/persons/Fletcher_Maximillian_23.09.2020/unnamed (4).jpg', '<div>test 5453121111</div>', '23.09.2020', '23.09.2020 10:00'),
('1raTNrXJp18X', 'Armstrong', 'Barnard', NULL, '1986-06-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Male', NULL, 'Boston', 'Pilot', 'Facebook', '../../uploads/persons/Armstrong_Barnard_23.09.2020/unnamed (2).jpg', '<div>6423257</div>', '23.09.2020', '23.09.2020 09:42'),
('6Hr2ARsk5aB4', 'Elizabeth', 'Anthony', NULL, '1987-06-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', NULL, 'Chicago', 'Recruiter', 'Instagram', '../../uploads/persons/Elizabeth_Anthony_23.09.2020/zelfverzekerd.jpg', '<div>665432</div>', '23.09.2020', '23.09.2020 09:38'),
('aZe0QhAUNkdr', 'Xavier', 'Charles', NULL, '1995-09-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Male', NULL, 'New York', 'Designer', 'Facebook', '../../uploads/persons/Charles _Xavier_22.09.2020/1.png', '<div>Description 123</div>', '22.09.2020', '22.09.2020 16:21'),
('BQLBsvBuMz2f', 'Lloyd', 'Cori', NULL, '1991-09-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', NULL, 'Los Angeles', 'Driver', 'Facebook', '../../uploads/persons/Lloyd_Cori_23.09.2020/Avatar-02.png', '<div>123454321</div>', '23.09.2020', '23.09.2020 09:29'),
('ImKAVAtaketr', 'Horn', 'Michael', NULL, '1980-08-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Male', NULL, 'Sydney', 'Chief software architect', 'Facebook', '../../uploads/persons/Horn_Michael_23.09.2020/unnamed (6).jpg', '<div>Test 9291</div>', '23.09.2020', '23.09.2020 10:04'),
('IxNv41sTn7tz', 'Glenn', 'Joella', NULL, '1980-10-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', NULL, 'Cambridge', 'Chief security officer', 'Twitter', '../../uploads/persons/Glenn_Joella_23.09.2020/99667960-businesswoman-avatar-character-icon-vector-illustration-design.jpg', '<div>test 929291</div>', '23.09.2020', '23.09.2020 09:52'),
('jMbx2a1PdYPY', 'Greer', 'William', NULL, '1991-08-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Male', NULL, 'Seattle', 'CEO', 'Twitter', '../../uploads/persons/Greer_William_23.09.2020/Male-Avtar.jpg', '<div>3456jfhhdgg</div>', '23.09.2020', '23.09.2020 09:46'),
('JQehvyXOVdSZ', 'Gordon', 'Harry', NULL, '1994-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Male', NULL, 'Detroit', 'Director', 'Instagram', '../../uploads/persons/Gordon_Harry_23.09.2020/unnamed (1).jpg', '<div>123456789</div>', '23.09.2020', '23.09.2020 09:38'),
('QaUF0FDEUVdG', 'Barker', 'Thomas', NULL, '2000-02-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Male', NULL, 'London', 'IT specialist', 'Twitter', '../../uploads/persons/Barker_Thomas_23.09.2020/unnamed.jpg', '<div>123</div>', '23.09.2020', '23.09.2020 09:24'),
('qnBxNYe5ACTE', 'Ray', 'Eleanore', NULL, '1990-09-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', NULL, 'Baltimore', 'Chief audit executive', 'Facebook', '../../uploads/persons/Ray_Eleanore_23.09.2020/sm_full.jpg', '<div>test 123</div>', '23.09.2020', '23.09.2020 09:56'),
('STuPxG1TPs4Q', 'Miller', 'Christopher', NULL, '1977-08-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Male', NULL, 'Portland', 'Chief marketing officer', 'Instagram', '../../uploads/persons/Miller_Christopher_23.09.2020/set-of-people-avatars-with-backgrounds-vector.jpg', '<div>test description</div>', '23.09.2020', '23.09.2020 09:53');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
