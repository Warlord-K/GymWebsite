-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2020 at 10:39 PM
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
-- Database: `gymnasium`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_wallpaper`
--

CREATE TABLE `accounts_wallpaper` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_wallpaper`
--

INSERT INTO `accounts_wallpaper` (`id`, `photo`) VALUES
(1, '\\media\\wallpaper/test.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add wallpaper', 7, 'add_wallpaper'),
(26, 'Can change wallpaper', 7, 'change_wallpaper'),
(27, 'Can delete wallpaper', 7, 'delete_wallpaper'),
(28, 'Can view wallpaper', 7, 'view_wallpaper'),
(29, 'Can add member', 8, 'add_member'),
(30, 'Can change member', 8, 'change_member'),
(31, 'Can delete member', 8, 'delete_member'),
(32, 'Can view member', 8, 'view_member'),
(33, 'Can add generate reports', 9, 'add_generatereports'),
(34, 'Can change generate reports', 9, 'change_generatereports'),
(35, 'Can delete generate reports', 9, 'delete_generatereports'),
(36, 'Can view generate reports', 9, 'view_generatereports'),
(37, 'Can add payments', 10, 'add_payments'),
(38, 'Can change payments', 10, 'change_payments'),
(39, 'Can delete payments', 10, 'delete_payments'),
(40, 'Can view payments', 10, 'view_payments');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$F3gD8KGNs5ac$pSSmXq3Ff1WqcuCdlif5SRmhcDIyUQbNkONXVKWj6+Q=', '2022-02-24 18:55:05.138714', 1, 'Admin', '', '', '', 1, 1, '2022-02-24 15:58:18.493505');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'accounts', 'wallpaper'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'members', 'member'),
(10, 'payments', 'payments'),
(9, 'reports', 'generatereports'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'accounts', '0001_initial', '2022-02-24 15:55:38.584088'),
(2, 'contenttypes', '0001_initial', '2022-02-24 15:55:39.715067'),
(3, 'auth', '0001_initial', '2022-02-24 15:55:42.896911'),
(4, 'admin', '0001_initial', '2022-02-24 15:55:56.101400'),
(5, 'admin', '0002_logentry_remove_auto_add', '2022-02-24 15:56:00.081713'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-24 15:56:00.205076'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-02-24 15:56:01.707174'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-02-24 15:56:03.322121'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-02-24 15:56:03.463451'),
(10, 'auth', '0004_alter_user_username_opts', '2022-02-24 15:56:03.698598'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-02-24 15:56:10.827719'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-02-24 15:56:10.911356'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-02-24 15:56:11.017959'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-02-24 15:56:11.181699'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-02-24 15:56:11.360647'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-02-24 15:56:11.542227'),
(17, 'auth', '0011_update_proxy_permissions', '2022-02-24 15:56:11.698308'),
(18, 'members', '0001_initial', '2022-02-24 15:56:12.156386'),
(19, 'payments', '0001_initial', '2022-02-24 15:56:12.563548'),
(20, 'reports', '0001_initial', '2022-02-24 15:56:15.063474'),
(21, 'sessions', '0001_initial', '2022-02-24 15:56:16.103542');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1ppkeynsh73q04lheclwpa0s19jdewtd', 'ZjgzMGI0ZDYzZWI1YzkwMjM2ODMyODg5ZTAyN2MwYTBkNTczOWZlOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYWI3OTU4YzY5NDhkZDQzNGMwNDc4NjM1MzVmZmYzNWIzM2ZmY2FkIn0=', '2020-03-09 15:58:40.840413');

-- --------------------------------------------------------

--
-- Table structure for table `members_member`
--

CREATE TABLE `members_member` (
  `member_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `mobile_number` varchar(10) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `address` varchar(300) NOT NULL,
  `medical_history` varchar(300) NOT NULL,
  `admitted_on` date NOT NULL,
  `registration_date` date NOT NULL,
  `registration_upto` date NOT NULL,
  `dob` date NOT NULL,
  `subscription_type` varchar(30) NOT NULL,
  `subscription_period` varchar(30) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `fee_status` varchar(30) NOT NULL,
  `batch` varchar(30) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `notification` int(11) NOT NULL,
  `stop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members_member`
--

INSERT INTO `members_member` (`member_id`, `first_name`, `last_name`, `mobile_number`, `email`, `address`, `medical_history`, `admitted_on`, `registration_date`, `registration_upto`, `dob`, `subscription_type`, `subscription_period`, `amount`, `fee_status`, `batch`, `photo`, `notification`, `stop`) VALUES
(1, 'Keval', 'Senghani', '8656423958', 'keval@gmail.com', 'B-105, Ganesh Apartment, Gandhi Road', 'None', '2022-02-24', '2022-04-24', '2022-05-24', '2022-05-11', 'gym', '1', '500', 'pending', 'morning', '', 0, 1),
(2, 'Mitesh', 'Masurkar', '9023568745', 'mitesh@gmail.com', 'A-3, Sai Apartment, Ganesh Nagar', 'None', '2022-02-24', '2022-02-24', '2022-03-24', '1999-06-05', 'gym_and_cross_fit', '1', '750', 'paid', 'evening', '', 2, 0),
(3, 'Keval', 'Patel', '9056487562', 'keval@gmail.com', 'A-104, Ganesh Apartment, Gandhi Road', 'None', '2022-02-24', '2022-02-24', '2022-03-24', '1999-11-08', 'gym', '1', '500', 'paid', 'morning', '', 2, 0),
(4, 'Suyash', 'Gupte', '8945623578', 'suyash@gmail.com', '105, Sai Sadan, Sector 5', 'None', '2022-02-24', '2022-04-25', '2022-05-25', '1998-12-11', 'pt', '1', '1500', 'paid', 'morning', '', 2, 0),
(5, 'Rajan', 'Yadav', '9056458725', 'rajan@gmail.com', 'C-2, Apollo Apartment, Sector 20', 'None', '2022-02-24', '2022-04-25', '2022-05-25', '1999-07-05', 'cross_fit', '1', '500', 'paid', 'morning', '', 2, 0),
(8, 'Rajat', 'Singh', '9856235487', 'rajat@gmail.com', 'B-103, Ganesh Apartment, Sector 10', 'None', '2022-02-25', '2022-01-29', '2022-03-29', '1998-09-02', 'pt', '2', '2000', 'paid', 'morning', '', 2, 0),
(9, 'Mahesh', 'Sawant', '6545892536', 'mahesh@gmail.com', 'B-102, Sai Sadan, Gandhi Road', 'None', '2022-02-25', '2022-02-25', '2022-03-25', '1999-10-29', 'gym_and_cross_fit', '1', '1000', 'paid', 'morning', '/profile_cKCVlHE.jpg', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments_payments`
--

CREATE TABLE `payments_payments` (
  `id` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_period` int(11) NOT NULL,
  `payment_amount` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments_payments`
--

INSERT INTO `payments_payments` (`id`, `payment_date`, `payment_period`, `payment_amount`, `user_id`) VALUES
(1, '2022-02-24', 1, 500, 1),
(2, '2022-03-25', 1, 500, 1),
(3, '2022-03-24', 1, 500, 1),
(4, '2022-02-24', 1, 750, 2),
(5, '2022-02-24', 1, 500, 3),
(6, '2022-02-24', 1, 1500, 4),
(7, '2022-02-24', 1, 500, 5),
(8, '2022-02-25', 1, 500, 5),
(9, '2022-02-25', 1, 1500, 4),
(10, '2022-04-25', 1, 1500, 4),
(14, '2022-01-29', 2, 2000, 8),
(15, '2022-02-25', 1, 1000, 9),
(16, '2022-04-25', 1, 500, 5);

-- --------------------------------------------------------

--
-- Table structure for table `reports_generatereports`
--

CREATE TABLE `reports_generatereports` (
  `id` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `batch` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_wallpaper`
--
ALTER TABLE `accounts_wallpaper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `members_member`
--
ALTER TABLE `members_member`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `mobile_number` (`mobile_number`);

--
-- Indexes for table `payments_payments`
--
ALTER TABLE `payments_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_payments_user_id_4ec24b26_fk_members_member_member_id` (`user_id`);

--
-- Indexes for table `reports_generatereports`
--
ALTER TABLE `reports_generatereports`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_wallpaper`
--
ALTER TABLE `accounts_wallpaper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `members_member`
--
ALTER TABLE `members_member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payments_payments`
--
ALTER TABLE `payments_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reports_generatereports`
--
ALTER TABLE `reports_generatereports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `payments_payments`
--
ALTER TABLE `payments_payments`
  ADD CONSTRAINT `payments_payments_user_id_4ec24b26_fk_members_member_member_id` FOREIGN KEY (`user_id`) REFERENCES `members_member` (`member_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
