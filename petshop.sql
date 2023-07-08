-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2023 at 01:52 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL,
  `language_chooser_control` varchar(20) NOT NULL,
  `list_filter_highlight` tinyint(1) NOT NULL,
  `list_filter_removal_links` tinyint(1) NOT NULL,
  `show_fieldsets_as_tabs` tinyint(1) NOT NULL,
  `show_inlines_as_tabs` tinyint(1) NOT NULL,
  `css_generic_link_active_color` varchar(10) NOT NULL,
  `collapsible_stacked_inlines` tinyint(1) NOT NULL,
  `collapsible_stacked_inlines_collapsed` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines_collapsed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`, `form_pagination_sticky`, `form_submit_sticky`, `css_module_background_selected_color`, `css_module_link_selected_color`, `logo_max_height`, `logo_max_width`, `foldable_apps`, `language_chooser_control`, `list_filter_highlight`, `list_filter_removal_links`, `show_fieldsets_as_tabs`, `show_inlines_as_tabs`, `css_generic_link_active_color`, `collapsible_stacked_inlines`, `collapsible_stacked_inlines_collapsed`, `collapsible_tabular_inlines`, `collapsible_tabular_inlines_collapsed`) VALUES
(1, 'Django', 1, 'Django administration', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 400, 1, 'default-select', 1, 0, 0, 0, '#29B864', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(3, 'administradores'),
(1, 'cliente'),
(4, 'subscriptor'),
(2, 'vendedor');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 36),
(7, 2, 29),
(8, 2, 30),
(9, 2, 31),
(2, 2, 32),
(3, 2, 33),
(4, 2, 34),
(5, 2, 35),
(6, 2, 36),
(10, 3, 1),
(11, 3, 2),
(12, 3, 3),
(13, 3, 4),
(14, 3, 5),
(15, 3, 6),
(16, 3, 7),
(17, 3, 8),
(18, 3, 9),
(19, 3, 10),
(20, 3, 11),
(21, 3, 12),
(22, 3, 13),
(23, 3, 14),
(24, 3, 15),
(25, 3, 16),
(26, 3, 17),
(27, 3, 18),
(28, 3, 19),
(29, 3, 20),
(30, 3, 21),
(31, 3, 22),
(32, 3, 23),
(33, 3, 24),
(34, 3, 25),
(35, 3, 26),
(36, 3, 27),
(37, 3, 28),
(38, 3, 29),
(39, 3, 30),
(40, 3, 31),
(41, 3, 32),
(42, 3, 33),
(43, 3, 34),
(44, 3, 35),
(45, 3, 36),
(46, 3, 37),
(47, 3, 38),
(48, 3, 39),
(49, 3, 40),
(50, 3, 41),
(51, 3, 42),
(52, 3, 43),
(53, 3, 44),
(54, 4, 36);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add Theme', 1, 'add_theme'),
(2, 'Can change Theme', 1, 'change_theme'),
(3, 'Can delete Theme', 1, 'delete_theme'),
(4, 'Can view Theme', 1, 'view_theme'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add tipo producto', 8, 'add_tipoproducto'),
(30, 'Can change tipo producto', 8, 'change_tipoproducto'),
(31, 'Can delete tipo producto', 8, 'delete_tipoproducto'),
(32, 'Can view tipo producto', 8, 'view_tipoproducto'),
(33, 'Can add producto', 9, 'add_producto'),
(34, 'Can change producto', 9, 'change_producto'),
(35, 'Can delete producto', 9, 'delete_producto'),
(36, 'Can view producto', 9, 'view_producto'),
(37, 'Can add linea pedido', 10, 'add_lineapedido'),
(38, 'Can change linea pedido', 10, 'change_lineapedido'),
(39, 'Can delete linea pedido', 10, 'delete_lineapedido'),
(40, 'Can view linea pedido', 10, 'view_lineapedido'),
(41, 'Can add pedido', 11, 'add_pedido'),
(42, 'Can change pedido', 11, 'change_pedido'),
(43, 'Can delete pedido', 11, 'delete_pedido'),
(44, 'Can view pedido', 11, 'view_pedido'),
(45, 'Can add tipo seguimiento', 12, 'add_tiposeguimiento'),
(46, 'Can change tipo seguimiento', 12, 'change_tiposeguimiento'),
(47, 'Can delete tipo seguimiento', 12, 'delete_tiposeguimiento'),
(48, 'Can view tipo seguimiento', 12, 'view_tiposeguimiento');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$NaxboLfEhI3X$vC/EXLW548rhl0KwHtETsCSwsZCkaRNhH6t93WGoOhU=', '2023-07-08 23:30:58.611191', 1, 'alex', '', '', 'al.pavezf@duocuc.cl', 1, 1, '2023-06-06 13:22:15.172069'),
(2, 'pbkdf2_sha256$216000$SGMGqOYl9Koz$1tqQULOY/mdc9IGhCesSu5Qy4y4U1bNSopa8I3ylblk=', '2023-07-08 23:24:30.863367', 0, 'manuelsoto', '', '', 'manuelsoto@gmail.com', 0, 1, '2023-07-08 23:22:08.909752');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 4),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_producto`
--

CREATE TABLE `core_producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `core_producto`
--

INSERT INTO `core_producto` (`id`, `nombre`, `precio`, `stock`, `imagen`, `tipo_id`, `descripcion`) VALUES
(1, 'Correa para perro', 15000, 11, 'correa_larga_de_entrenamiento_1.jpg', 5, 'Correa para perro'),
(2, 'Jaula para animales', 16000, 18, 'S01140100V_1.jpg', 2, 'Una jaula qe permite mover a tu animalito por distintos lugares, tanto gato, perro, etc...'),
(3, 'Cama para perro', 52990, 52, 'CAMA-BEIGE.jpg', 3, 'Cama comoda de tamaño mediano para tu animalito de casa'),
(4, 'Rascador para gato', 17890, 15, 'rascador-tubo-con-juguete-para-gatos.jpg', 4, 'Rascador para gatos de tamaño pequeño.'),
(5, 'Juguete para perro', 7000, 23, 'goma.jpg', 1, 'Juguete para perro con forma de huesito'),
(6, 'Cama para gato', 23000, 32, 'gato.jpg', 3, 'Cama para gato de tamaño mediano.'),
(7, 'Correa para gato', 12000, 23, '4126.jpg', 4, 'Correa para gato de color rosa'),
(8, 'Cama para perro', 20000, 12, 'cama.jpg', 3, 'Cama para perro de tamaño grande'),
(9, 'varilla para gato', 10000, 10, 'vara.jpg', 4, 'Juguete de varilla de 16cm para gato');

-- --------------------------------------------------------

--
-- Table structure for table `core_tipoproducto`
--

CREATE TABLE `core_tipoproducto` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `core_tipoproducto`
--

INSERT INTO `core_tipoproducto` (`id`, `descripcion`) VALUES
(1, 'objetos para perro'),
(2, 'jaulas para animales'),
(3, 'camas para animales'),
(4, 'objetos para gato'),
(5, 'accesorios para animales');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-06-06 13:27:35.721466', '1', 'objetos para perro', 1, '[{\"added\": {}}]', 8, 1),
(2, '2023-06-06 13:28:09.116803', '1', 'Correa para perro', 1, '[{\"added\": {}}]', 9, 1),
(3, '2023-06-26 01:49:20.799403', '1', 'cliente', 1, '[{\"added\": {}}]', 4, 1),
(4, '2023-06-26 01:49:35.689279', '2', 'vendedor', 1, '[{\"added\": {}}]', 4, 1),
(5, '2023-06-26 01:49:47.504092', '3', 'administradores', 1, '[{\"added\": {}}]', 4, 1),
(6, '2023-06-26 01:49:59.555900', '4', 'subscriptor', 1, '[{\"added\": {}}]', 4, 1),
(7, '2023-06-26 01:52:55.982269', '2', 'jaulas para animales', 1, '[{\"added\": {}}]', 8, 1),
(8, '2023-06-26 01:53:03.600037', '3', 'camas para animales', 1, '[{\"added\": {}}]', 8, 1),
(9, '2023-06-26 01:53:15.760125', '4', 'objetos para gato', 1, '[{\"added\": {}}]', 8, 1),
(10, '2023-06-26 01:53:27.077384', '5', 'accesorios para animales', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(1, 'admin_interface', 'theme'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(9, 'core', 'producto'),
(8, 'core', 'tipoproducto'),
(10, 'pedidos', 'lineapedido'),
(11, 'pedidos', 'pedido'),
(12, 'pedidos', 'tiposeguimiento'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-06 13:16:10.040466'),
(2, 'auth', '0001_initial', '2023-06-06 13:16:10.128490'),
(3, 'admin', '0001_initial', '2023-06-06 13:16:10.441372'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-06 13:16:10.510963'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-06 13:16:10.518965'),
(6, 'admin_interface', '0001_initial', '2023-06-06 13:16:10.548113'),
(7, 'admin_interface', '0002_add_related_modal', '2023-06-06 13:16:10.613740'),
(8, 'admin_interface', '0003_add_logo_color', '2023-06-06 13:16:10.635743'),
(9, 'admin_interface', '0004_rename_title_color', '2023-06-06 13:16:10.648740'),
(10, 'admin_interface', '0005_add_recent_actions_visible', '2023-06-06 13:16:10.668409'),
(11, 'admin_interface', '0006_bytes_to_str', '2023-06-06 13:16:10.715348'),
(12, 'admin_interface', '0007_add_favicon', '2023-06-06 13:16:10.737844'),
(13, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2023-06-06 13:16:10.770215'),
(14, 'admin_interface', '0009_add_enviroment', '2023-06-06 13:16:10.807568'),
(15, 'admin_interface', '0010_add_localization', '2023-06-06 13:16:10.822499'),
(16, 'admin_interface', '0011_add_environment_options', '2023-06-06 13:16:10.905965'),
(17, 'admin_interface', '0012_update_verbose_names', '2023-06-06 13:16:10.912967'),
(18, 'admin_interface', '0013_add_related_modal_close_button', '2023-06-06 13:16:10.933973'),
(19, 'admin_interface', '0014_name_unique', '2023-06-06 13:16:10.948975'),
(20, 'admin_interface', '0015_add_language_chooser_active', '2023-06-06 13:16:10.969489'),
(21, 'admin_interface', '0016_add_language_chooser_display', '2023-06-06 13:16:10.989494'),
(22, 'admin_interface', '0017_change_list_filter_dropdown', '2023-06-06 13:16:10.995354'),
(23, 'admin_interface', '0018_theme_list_filter_sticky', '2023-06-06 13:16:11.015344'),
(24, 'admin_interface', '0019_add_form_sticky', '2023-06-06 13:16:11.051280'),
(25, 'admin_interface', '0020_module_selected_colors', '2023-06-06 13:16:11.100314'),
(26, 'admin_interface', '0021_file_extension_validator', '2023-06-06 13:16:11.109316'),
(27, 'admin_interface', '0022_add_logo_max_width_and_height', '2023-06-06 13:16:11.146758'),
(28, 'admin_interface', '0023_theme_foldable_apps', '2023-06-06 13:16:11.167040'),
(29, 'admin_interface', '0024_remove_theme_css', '2023-06-06 13:16:11.197250'),
(30, 'admin_interface', '0025_theme_language_chooser_control', '2023-06-06 13:16:11.217256'),
(31, 'admin_interface', '0026_theme_list_filter_highlight', '2023-06-06 13:16:11.237344'),
(32, 'admin_interface', '0027_theme_list_filter_removal_links', '2023-06-06 13:16:11.258351'),
(33, 'admin_interface', '0028_theme_show_fieldsets_as_tabs_and_more', '2023-06-06 13:16:11.304085'),
(34, 'admin_interface', '0029_theme_css_generic_link_active_color', '2023-06-06 13:16:11.323882'),
(35, 'admin_interface', '0030_theme_collapsible_stacked_inlines_and_more', '2023-06-06 13:16:11.393355'),
(36, 'contenttypes', '0002_remove_content_type_name', '2023-06-06 13:16:11.439793'),
(37, 'auth', '0002_alter_permission_name_max_length', '2023-06-06 13:16:11.456429'),
(38, 'auth', '0003_alter_user_email_max_length', '2023-06-06 13:16:11.471433'),
(39, 'auth', '0004_alter_user_username_opts', '2023-06-06 13:16:11.479545'),
(40, 'auth', '0005_alter_user_last_login_null', '2023-06-06 13:16:11.511665'),
(41, 'auth', '0006_require_contenttypes_0002', '2023-06-06 13:16:11.514666'),
(42, 'auth', '0007_alter_validators_add_error_messages', '2023-06-06 13:16:11.523668'),
(43, 'auth', '0008_alter_user_username_max_length', '2023-06-06 13:16:11.539800'),
(44, 'auth', '0009_alter_user_last_name_max_length', '2023-06-06 13:16:11.554749'),
(45, 'auth', '0010_alter_group_name_max_length', '2023-06-06 13:16:11.571773'),
(46, 'auth', '0011_update_proxy_permissions', '2023-06-06 13:16:11.581731'),
(47, 'auth', '0012_alter_user_first_name_max_length', '2023-06-06 13:16:11.595786'),
(48, 'core', '0001_initial', '2023-06-06 13:16:11.624794'),
(49, 'sessions', '0001_initial', '2023-06-06 13:16:11.672767'),
(50, 'pedidos', '0001_initial', '2023-06-26 01:43:47.095146'),
(51, 'pedidos', '0002_pedido_estado', '2023-06-26 01:46:25.027033'),
(52, 'pedidos', '0003_lineapedido_estado', '2023-06-26 01:48:18.556289'),
(53, 'pedidos', '0004_remove_lineapedido_estado', '2023-06-26 02:22:55.403703'),
(54, 'pedidos', '0005_auto_20230708_1848', '2023-07-08 22:48:20.786781');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('04ozr1rdt49q08lzq13926151guakd5s', '.eJxVjEEOgyAQRe8y64YwCFhcdt8zmBkYq20jCejKePfWxI3b_977G0QqJUO37TfoaV3Gfq1S-ilBBwiXjSl-ZD5AetP8yirmeSkTq0NRJ63qmZN8H6d7ORipjv-6da2kYMho0g7joA0PwbLEYJC8ZW6Ctz5FZwTFOq-xEZL2PgRG1I2F_Qd00ztI:1qDc1l:pp5ziX1QWZHDcrwivVbbI_MXjZyCwggEPAiI3Oa1V04', '2023-07-10 02:32:29.271497'),
('9mzsao0hp3hvxfo8noe9eo0vhxn6w7dl', '.eJxVjEEOgyAQRe8y64YwCFhcdt8zmBkYq20jCejKePfWxI3b_977G0QqJUO37TfoaV3Gfq1S-ilBBwiXjSl-ZD5AetP8yirmeSkTq0NRJ63qmZN8H6d7ORipjv-6da2kYMho0g7joA0PwbLEYJC8ZW6Ctz5FZwTFOq-xEZL2PgRG1I2F_Qd00ztI:1qIHiD:M-uKw04wJEMkepoftBjuBA-b2EDiygccAYffkj_Mcy4', '2023-07-22 23:51:37.007685'),
('cy6zdz644b1u7p93xwseqdi3qan8zs8e', '.eJxVkMFuwyAMhl9l4hylQEIyeuzOewZkwEnoGohIcqry7jVtNW0XC_3-_882d2Zg3yazr5hN8OzMBKv-ahbcD8bS8FeIY6pdilsOti6W-t1d6-_k8XZ5e_8BJlgnSveqR68lSA5cCTdwaQfdWnRaCuhaaxvdtZ13SqLAVnVcNAjYfw7aCsGblqAOck7sfKcVqSw5-d1t6bm1qFhMs81Ik75SzggfC2QqWCIVmdGFVK5TnPNfQVKyCIUdt-DhhQozjBjJfZrRBzi5J9HcII9gPBqkH8AIc6BHMqK-LiM7juMB6E5sfg:1q8vRD:EcslEXbScNTUBmlePYJ1dqVXdE4pIaC-ji5_cm4SQcw', '2023-06-27 04:15:23.037102'),
('zc7jhb6z288l1rwqdvj1a45l4a7ae47i', '.eJxVjk1ugzAQha9SzRo5tjFQWKbrnsEa2wM4DTYysIq4e-00qpTN0-j9fJoHWEwpwvAAUWRN0R12j9o7GEQFIS4mEQzwFVMi_FgxZaEyqXKZrM9bEA3n_N-QeVmMKrPD7h3-ofyCE4XcvizkPF7sk6jvmCbUjjSFPVHAxecjasFu6wTnWYHGY5_1sVF6PpX_fPMM2h8KJXA3DFNkNmaQN6xU2Cvd2Hd0dL--um-AGbc5r7umI9dLlBx5I-zIpRl7Zcj2UmCrjKn7VrXONpIEqabloiak7nPsjRC8VnD-Ap8RbH4:1q6WnN:MDlLaXyhDORcxIHCBVk8CC-9k-itn-guihK5gBqXLsM', '2023-06-20 13:32:21.657845'),
('zjdb4achdsfgmyyb9zncc27mf4bn7j1m', 'eyJjYXJybyI6e319:1qIG3d:Wu-0uIDW_wuCPN8ji61AZOUpPlZ85gZVdiJLOE5wy_o', '2023-07-22 22:05:37.130981');

-- --------------------------------------------------------

--
-- Table structure for table `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seguimiento_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pedidos`
--

INSERT INTO `pedidos` (`id`, `created_at`, `user_id`, `seguimiento_id`) VALUES
(1, '2023-06-25 21:44:43.317456', 1, 3),
(2, '2023-06-25 21:45:37.314700', 1, 5),
(3, '2023-06-25 21:47:27.949006', 1, 4),
(4, '2023-06-25 22:14:31.248308', 1, 4),
(5, '2023-07-08 19:22:38.299737', 2, 4),
(6, '2023-07-08 19:31:30.747966', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `pedidos_lineapedido`
--

CREATE TABLE `pedidos_lineapedido` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pedidos_lineapedido`
--

INSERT INTO `pedidos_lineapedido` (`id`, `cantidad`, `created_at`, `pedido_id`, `producto_id`, `user_id`) VALUES
(1, 1, '2023-06-25 21:44:43.404005', 1, 1, 1),
(2, 1, '2023-06-25 21:45:37.404324', 2, 1, 1),
(3, 1, '2023-06-25 21:47:28.010011', 3, 1, 1),
(4, 1, '2023-06-25 22:14:31.353327', 4, 1, 1),
(5, 1, '2023-06-25 22:14:31.353327', 4, 2, 1),
(6, 1, '2023-07-08 19:22:38.377107', 5, 2, 2),
(7, 1, '2023-07-08 19:31:30.845995', 6, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pedidos_tiposeguimiento`
--

CREATE TABLE `pedidos_tiposeguimiento` (
  `id` int(11) NOT NULL,
  `seguimiento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pedidos_tiposeguimiento`
--

INSERT INTO `pedidos_tiposeguimiento` (`id`, `seguimiento`) VALUES
(1, 'Validando'),
(2, 'En Proceso'),
(3, 'Entregando'),
(4, 'Completado'),
(5, 'Cancelado');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

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
-- Indexes for table `core_producto`
--
ALTER TABLE `core_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_producto_tipo_id_e0e92ad1_fk_core_tipoproducto_id` (`tipo_id`);

--
-- Indexes for table `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidos_user_id_c7db7ff2_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `pedidos_lineapedido`
--
ALTER TABLE `pedidos_lineapedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidos_lineapedido_pedido_id_8e7e2da6_fk_pedidos_id` (`pedido_id`),
  ADD KEY `pedidos_lineapedido_producto_id_4ae1f0c1_fk_core_producto_id` (`producto_id`),
  ADD KEY `pedidos_lineapedido_user_id_096951d1_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `pedidos_tiposeguimiento`
--
ALTER TABLE `pedidos_tiposeguimiento`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_producto`
--
ALTER TABLE `core_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pedidos_lineapedido`
--
ALTER TABLE `pedidos_lineapedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pedidos_tiposeguimiento`
--
ALTER TABLE `pedidos_tiposeguimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- Constraints for table `core_producto`
--
ALTER TABLE `core_producto`
  ADD CONSTRAINT `core_producto_tipo_id_e0e92ad1_fk_core_tipoproducto_id` FOREIGN KEY (`tipo_id`) REFERENCES `core_tipoproducto` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_user_id_c7db7ff2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `pedidos_lineapedido`
--
ALTER TABLE `pedidos_lineapedido`
  ADD CONSTRAINT `pedidos_lineapedido_pedido_id_8e7e2da6_fk_pedidos_id` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  ADD CONSTRAINT `pedidos_lineapedido_producto_id_4ae1f0c1_fk_core_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `core_producto` (`id`),
  ADD CONSTRAINT `pedidos_lineapedido_user_id_096951d1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
