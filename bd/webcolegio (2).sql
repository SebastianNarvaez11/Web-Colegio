-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-08-2019 a las 05:31:18
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `webcolegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_permission`
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
(25, 'Can add Colegio', 7, 'add_colegio'),
(26, 'Can change Colegio', 7, 'change_colegio'),
(27, 'Can delete Colegio', 7, 'delete_colegio'),
(28, 'Can view Colegio', 7, 'view_colegio'),
(29, 'Can add Servicio', 8, 'add_service'),
(30, 'Can change Servicio', 8, 'change_service'),
(31, 'Can delete Servicio', 8, 'delete_service'),
(32, 'Can view Servicio', 8, 'view_service'),
(33, 'Can add Post', 9, 'add_post'),
(34, 'Can change Post', 9, 'change_post'),
(35, 'Can delete Post', 9, 'delete_post'),
(36, 'Can view Post', 9, 'view_post'),
(37, 'Can add Categoria', 10, 'add_category'),
(38, 'Can change Categoria', 10, 'change_category'),
(39, 'Can delete Categoria', 10, 'delete_category'),
(40, 'Can view Categoria', 10, 'view_category'),
(41, 'Can add Docente', 11, 'add_docente'),
(42, 'Can change Docente', 11, 'change_docente'),
(43, 'Can delete Docente', 11, 'delete_docente'),
(44, 'Can view Docente', 11, 'view_docente'),
(45, 'Can add Materia', 12, 'add_materia'),
(46, 'Can change Materia', 12, 'change_materia'),
(47, 'Can delete Materia', 12, 'delete_materia'),
(48, 'Can view Materia', 12, 'view_materia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$1E6zquXJdsVz$IPC6KPMKolxbmk6KxnZfcDZMf44QbQHjlNq5GynqQ2c=', '2019-08-03 16:15:24.868375', 1, 'sebas', '', '', 'sebastian@gmail.com', 1, 1, '2019-07-25 02:44:48.120228'),
(2, 'pbkdf2_sha256$150000$vE5MHwfOuTyV$vfN4wWYF8vIndcUFpbp0MwFW4Z4r44YbwuJrbPj/hQ0=', '2019-08-01 00:20:17.230430', 0, 'Prueba', 'prueba', 'prueba', 'prueba@gmail.com', 1, 1, '2019-07-30 00:34:09.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 33),
(2, 2, 34),
(3, 2, 35),
(4, 2, 36);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `creacion` date NOT NULL,
  `edicion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `blog_category`
--

INSERT INTO `blog_category` (`id`, `nombre`, `creacion`, `edicion`) VALUES
(1, 'Circulares', '2019-07-28', '2019-07-28'),
(2, 'Academico', '2019-07-28', '2019-07-28'),
(3, 'General', '2019-07-28', '2019-07-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_post`
--

CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descripcion` longtext,
  `contenido` longtext NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `creacion` date NOT NULL,
  `edicion` date NOT NULL,
  `autor_id` int(11) NOT NULL,
  `publicacion` date NOT NULL,
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `blog_post`
--

INSERT INTO `blog_post` (`id`, `titulo`, `descripcion`, `contenido`, `imagen`, `creacion`, `edicion`, `autor_id`, `publicacion`, `slug`) VALUES
(1, 'Banda Marcial Gana Concurso', 'That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower\r\n\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually\r\n\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower\r\n\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually', 'blog/WhatsApp_Image_2018-10-24_at_8.59.57_AM_3.jpeg', '2019-07-28', '2019-07-29', 1, '2019-07-28', 'banda-marcial-gana-concurso'),
(2, 'Izada de bandera', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower\r\n\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually\r\n\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower', 'blog/IMG-20190725-WA0061.jpg', '2019-07-28', '2019-07-29', 1, '2019-07-28', 'izada-de-bandera'),
(3, 'Convivencia', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower\r\n\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually\r\n\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower', 'blog/IMG-20190725-WA0098.jpg', '2019-07-28', '2019-07-29', 1, '2019-07-28', 'convivencia'),
(4, 'Papeleria y aseo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam posuere volutpat porta. Phasellus id', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam posuere volutpat porta. Phasellus id lobortis ligula. Sed dolor libero, rutrum tristique commodo maximus, consectetur eget tellus. Donec eget fringilla felis. Vestibulum pretium metus a ex vestibulum, eget elementum neque facilisis. Fusce et congue dolor. Pellentesque quis egestas tellus. Nunc ut congue lectus. Phasellus ac sapien ac purus blandit vestibulum. Sed eu arcu magna. Vestibulum ac sem vel ante aliquet dapibus eget vel sapien.\r\n\r\nDuis dapibus ante a lobortis varius. Sed turpis felis, luctus a nisl sed, viverra venenatis lacus. Aliquam maximus ultricies ex, id auctor turpis dignissim nec. Nullam tincidunt justo sit amet turpis feugiat, et hendrerit quam rhoncus. Aenean in lorem arcu. Vivamus erat nibh, fringilla vulputate mi sit amet, pretium maximus lacus. Sed malesuada pellentesque nunc. Donec massa turpis, lobortis et urna quis, rutrum faucibus massa.', 'blog/IMG-20190725-WA0109.jpg', '2019-07-29', '2019-07-29', 1, '2019-07-30', 'papeleria-y-aseo'),
(5, 'Ceremonia clausura', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non dapibus leo. Etiam metus orci, ultrices vitae placerat quis, aliquet in turpis. Cras commodo lorem ut semper congue. Vivamus a nibh in ante laoreet elementum vel sit amet justo. Donec scelerisque dictum libero, sit amet sollicitudin sapien laoreet venenatis. Etiam at gravida odio. Ut interdum aliquet purus ut condimentum. Integer fermentum, augue sit amet blandit egestas, massa ex iaculis mauris, sit amet tincidunt felis nulla id neque. Maecenas molestie lectus urna, eget condimentum nulla congue eget. Praesent purus dolor, euismod vitae sapien venenatis, ultricies cursus ex. Suspendisse fringilla tincidunt elementum. Vivamus gravida massa ante, id eleifend turpis molestie a.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non dapibus leo. Etiam metus orci, ultrices vitae placerat quis, aliquet in turpis. Cras commodo lorem ut semper congue. Vivamus a nibh in ante laoreet elementum vel sit amet justo. Donec scelerisque dictum libero, sit amet sollicitudin sapien laoreet venenatis. Etiam at gravida odio. Ut interdum aliquet purus ut condimentum. Integer fermentum, augue sit amet blandit egestas, massa ex iaculis mauris, sit amet tincidunt felis nulla id neque. Maecenas molestie lectus urna, eget condimentum nulla congue eget. Praesent purus dolor, euismod vitae sapien venenatis, ultricies cursus ex. Suspendisse fringilla tincidunt elementum. Vivamus gravida massa ante, id eleifend turpis molestie a.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non dapibus leo. Etiam metus orci, ultrices vitae placerat quis, aliquet in turpis. Cras commodo lorem ut semper congue. Vivamus a nibh in ante laoreet elementum vel sit amet justo. Donec scelerisque dictum libero, sit amet sollicitudin sapien laoreet venenatis. Etiam at gravida odio. Ut interdum aliquet purus ut condimentum. Integer fermentum, augue sit amet blandit egestas, massa ex iaculis mauris, sit amet tincidunt felis nulla id neque. Maecenas molestie lectus urna, eget condimentum nulla congue eget. Praesent purus dolor, euismod vitae sapien venenatis, ultricies cursus ex. Suspendisse fringilla tincidunt elementum. Vivamus gravida massa ante, id eleifend turpis molestie a.', 'blog/thumb-1920-502309.jpg', '2019-07-31', '2019-07-31', 1, '2019-08-01', 'ceremonia-clausura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_post_categoria`
--

CREATE TABLE `blog_post_categoria` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `blog_post_categoria`
--

INSERT INTO `blog_post_categoria` (`id`, `post_id`, `category_id`) VALUES
(1, 1, 3),
(2, 2, 2),
(3, 3, 1),
(4, 4, 2),
(5, 4, 3),
(6, 5, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_colegio`
--

CREATE TABLE `core_colegio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `lema` varchar(300) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `direccion` varchar(300) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `horarios` varchar(500) DEFAULT NULL,
  `mision` longtext NOT NULL,
  `vision` longtext NOT NULL,
  `creacion` date NOT NULL,
  `edicion` date NOT NULL,
  `historia` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `core_colegio`
--

INSERT INTO `core_colegio` (`id`, `nombre`, `lema`, `logo`, `email`, `direccion`, `telefono`, `horarios`, `mision`, `vision`, `creacion`, `edicion`, `historia`) VALUES
(1, 'Colegio Académico El poblado', '¡Educando con amor y calidad!', 'colegio/Imagen1_imcQBc3.png', 'academicoelpoblado@hotmail.com', 'Carrera 28f No. 72 ° 08 B/El Poblado 1', '437 0688', 'De lunes a viernes', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam elementum pellentesque nunc, id sollicitudin libero vestibulum sit amet. Vivamus interdum et mi sit amet condimentum. Vivamus bibendum, dui vitae tincidunt ultricies, ex libero volutpat justo, sed tempus eros felis et odio. Suspendisse at pellentesque lacus. Nam eget semper nisi. Suspendisse suscipit mi tellus, id posuere ipsum molestie a. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis sit amet feugiat purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris euismod tincidunt lorem, vitae volutpat justo convallis ac. Vivamus ut nisl nec ipsum sollicitudin pellentesque. Curabitur quis lacinia felis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam elementum pellentesque nunc, id sollicitudin libero vestibulum sit amet. Vivamus interdum et mi sit amet condimentum. Vivamus bibendum, dui vitae tincidunt ultricies, ex libero volutpat justo, sed tempus eros felis et odio. Suspendisse at pellentesque lacus. Nam eget semper nisi. Suspendisse suscipit mi tellus, id posuere ipsum molestie a. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis sit amet feugiat purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris euismod tincidunt lorem, vitae volutpat justo convallis ac. Vivamus ut nisl nec ipsum sollicitudin pellentesque. Curabitur quis lacinia felis.', '2019-07-01', '2019-08-03', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam elementum pellentesque nunc, id sollicitudin libero vestibulum sit amet. Vivamus interdum et mi sit amet condimentum. Vivamus bibendum, dui vitae tincidunt ultricies, ex libero volutpat justo, sed tempus eros felis et odio. Suspendisse at pellentesque lacus. Nam eget semper nisi. Suspendisse suscipit mi tellus, id posuere ipsum molestie a. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis sit amet feugiat purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris euismod tincidunt lorem, vitae volutpat justo convallis ac. Vivamus ut nisl nec ipsum sollicitudin pellentesque. Curabitur quis lacinia felis.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam elementum pellentesque nunc, id sollicitudin libero vestibulum sit amet. Vivamus interdum et mi sit amet condimentum. Vivamus bibendum, dui vitae tincidunt ultricies, ex libero volutpat justo, sed tempus eros felis et odio. Suspendisse at pellentesque lacus. Nam eget semper nisi. Suspendisse suscipit mi tellus, id posuere ipsum molestie a. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis sit amet feugiat purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris euismod tincidunt lorem, vitae volutpat justo convallis ac. Vivamus ut nisl nec ipsum sollicitudin pellentesque. Curabitur quis lacinia felis.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam elementum pellentesque nunc, id sollicitudin libero vestibulum sit amet. Vivamus interdum et mi sit amet condimentum. Vivamus bibendum, dui vitae tincidunt ultricies, ex libero volutpat justo, sed tempus eros felis et odio. Suspendisse at pellentesque lacus. Nam eget semper nisi. Suspendisse suscipit mi tellus, id posuere ipsum molestie a. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis sit amet feugiat purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris euismod tincidunt lorem, vitae volutpat justo convallis ac. Vivamus ut nisl nec ipsum sollicitudin pellentesque. Curabitur quis lacinia felis.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-07-25 02:53:01.872250', '1', 'Colegio Académico El poblado', 2, '[{\"changed\": {\"fields\": [\"logo\"]}}]', 7, 1),
(2, '2019-07-25 02:55:51.148698', '1', 'Colegio Académico El poblado', 2, '[{\"changed\": {\"fields\": [\"logo\"]}}]', 7, 1),
(3, '2019-07-25 03:02:34.709570', '1', 'Colegio Académico El poblado', 2, '[{\"changed\": {\"fields\": [\"logo\"]}}]', 7, 1),
(4, '2019-07-25 03:06:47.778878', '1', 'Colegio Académico El poblado', 2, '[{\"changed\": {\"fields\": [\"lema\"]}}]', 7, 1),
(5, '2019-07-25 03:41:17.837422', '1', 'Basica Primaria', 1, '[{\"added\": {}}]', 8, 1),
(6, '2019-07-25 03:55:29.182475', '2', 'Basica Secundaria', 1, '[{\"added\": {}}]', 8, 1),
(7, '2019-07-25 03:59:24.657619', '3', 'Media', 1, '[{\"added\": {}}]', 8, 1),
(8, '2019-07-25 04:03:38.189859', '4', 'Banda Marcial', 1, '[{\"added\": {}}]', 8, 1),
(9, '2019-07-27 23:11:25.951348', '1', 'Basica Primaria', 2, '[{\"changed\": {\"fields\": [\"index\"]}}]', 8, 1),
(10, '2019-07-27 23:15:05.650697', '4', 'Banda Marcial', 2, '[{\"changed\": {\"fields\": [\"index\"]}}]', 8, 1),
(11, '2019-07-27 23:15:24.153026', '1', 'Basica Primaria', 2, '[{\"changed\": {\"fields\": [\"index\"]}}]', 8, 1),
(12, '2019-07-27 23:17:54.622218', '4', 'Banda Marcial', 2, '[{\"changed\": {\"fields\": [\"imagen\"]}}]', 8, 1),
(13, '2019-07-27 23:19:30.150467', '1', 'Basica Primaria', 2, '[{\"changed\": {\"fields\": [\"imagen\"]}}]', 8, 1),
(14, '2019-07-27 23:19:41.025686', '2', 'Basica Secundaria', 2, '[{\"changed\": {\"fields\": [\"imagen\"]}}]', 8, 1),
(15, '2019-07-27 23:19:58.611006', '3', 'Media', 2, '[{\"changed\": {\"fields\": [\"imagen\"]}}]', 8, 1),
(16, '2019-07-28 01:20:15.665137', '1', 'Basica Primaria', 2, '[{\"changed\": {\"fields\": [\"costo\"]}}]', 8, 1),
(17, '2019-07-28 01:20:39.219250', '1', 'Basica Primaria', 2, '[]', 8, 1),
(18, '2019-07-28 03:15:51.872436', '1', 'Basica Primaria', 2, '[{\"changed\": {\"fields\": [\"costo\"]}}]', 8, 1),
(19, '2019-07-28 03:27:41.607210', '1', 'Basica Primaria', 2, '[{\"changed\": {\"fields\": [\"imagen\"]}}]', 8, 1),
(20, '2019-07-28 03:32:28.407735', '5', 'Jardín y Transición', 1, '[{\"added\": {}}]', 8, 1),
(21, '2019-07-28 03:38:12.213226', '5', 'Jardín y Transición', 2, '[{\"changed\": {\"fields\": [\"imagen\"]}}]', 8, 1),
(22, '2019-07-28 04:11:07.735097', '5', 'Jardín y Transición', 2, '[{\"changed\": {\"fields\": [\"slug\"]}}]', 8, 1),
(23, '2019-07-28 04:12:05.934383', '4', 'Banda Marcial', 2, '[{\"changed\": {\"fields\": [\"slug\"]}}]', 8, 1),
(24, '2019-07-28 04:12:16.821753', '3', 'Media', 2, '[{\"changed\": {\"fields\": [\"slug\"]}}]', 8, 1),
(25, '2019-07-28 04:12:31.632118', '2', 'Basica Secundaria', 2, '[{\"changed\": {\"fields\": [\"slug\"]}}]', 8, 1),
(26, '2019-07-28 04:12:40.460176', '1', 'Basica Primaria', 2, '[{\"changed\": {\"fields\": [\"slug\"]}}]', 8, 1),
(27, '2019-07-28 15:08:49.217562', '5', 'Jardín y Transición', 2, '[{\"changed\": {\"fields\": [\"mensualidad\"]}}]', 8, 1),
(28, '2019-07-28 15:09:01.951255', '4', 'Banda Marcial', 2, '[{\"changed\": {\"fields\": [\"mensualidad\", \"matricula\"]}}]', 8, 1),
(29, '2019-07-28 15:09:21.815311', '3', 'Media', 2, '[{\"changed\": {\"fields\": [\"mensualidad\"]}}]', 8, 1),
(30, '2019-07-28 15:09:44.506801', '3', 'Media', 2, '[{\"changed\": {\"fields\": [\"matricula\"]}}]', 8, 1),
(31, '2019-07-28 15:10:08.727001', '2', 'Basica Secundaria', 2, '[{\"changed\": {\"fields\": [\"mensualidad\", \"matricula\"]}}]', 8, 1),
(32, '2019-07-28 15:10:26.657442', '1', 'Basica Primaria', 2, '[{\"changed\": {\"fields\": [\"mensualidad\", \"matricula\"]}}]', 8, 1),
(33, '2019-07-28 15:34:48.573830', '5', 'Jardín y Transición', 2, '[{\"changed\": {\"fields\": [\"matricula\"]}}]', 8, 1),
(34, '2019-07-28 15:57:49.641980', '5', 'Jardín y Transición', 2, '[{\"changed\": {\"fields\": [\"horarios\"]}}]', 8, 1),
(35, '2019-07-28 15:59:36.743071', '5', 'Jardín y Transición', 2, '[{\"changed\": {\"fields\": [\"horarios\"]}}]', 8, 1),
(36, '2019-07-28 16:01:15.067394', '5', 'Jardín y Transición', 2, '[{\"changed\": {\"fields\": [\"horarios\"]}}]', 8, 1),
(37, '2019-07-28 16:04:23.643557', '5', 'Jardín y Transición', 2, '[{\"changed\": {\"fields\": [\"jornada\"]}}]', 8, 1),
(38, '2019-07-28 16:12:37.151927', '5', 'Jardín y Transición', 2, '[{\"changed\": {\"fields\": [\"jornada\"]}}]', 8, 1),
(39, '2019-07-28 16:15:26.073759', '4', 'Banda Marcial', 2, '[{\"changed\": {\"fields\": [\"jornada\"]}}]', 8, 1),
(40, '2019-07-28 16:15:37.932949', '3', 'Media', 2, '[{\"changed\": {\"fields\": [\"jornada\"]}}]', 8, 1),
(41, '2019-07-28 16:15:44.788977', '2', 'Basica Secundaria', 2, '[{\"changed\": {\"fields\": [\"jornada\"]}}]', 8, 1),
(42, '2019-07-28 16:15:49.877588', '1', 'Basica Primaria', 2, '[{\"changed\": {\"fields\": [\"jornada\"]}}]', 8, 1),
(43, '2019-07-28 18:40:37.801379', '1', 'Circulares', 1, '[{\"added\": {}}]', 10, 1),
(44, '2019-07-28 18:40:45.209759', '2', 'Academico', 1, '[{\"added\": {}}]', 10, 1),
(45, '2019-07-28 18:41:06.288261', '3', 'General', 1, '[{\"added\": {}}]', 10, 1),
(46, '2019-07-28 18:43:12.617363', '1', 'Banda Marcial Gana Concurso', 1, '[{\"added\": {}}]', 9, 1),
(47, '2019-07-28 18:44:48.713855', '2', 'Izada de bandera', 1, '[{\"added\": {}}]', 9, 1),
(48, '2019-07-28 18:45:29.969556', '3', 'Convivencia', 1, '[{\"added\": {}}]', 9, 1),
(49, '2019-07-28 22:44:58.754347', '5', 'Jardín y Transición', 2, '[{\"changed\": {\"fields\": [\"slug\"]}}]', 8, 1),
(50, '2019-07-28 22:45:27.381010', '4', 'Banda Marcial Gana Concurso', 2, '[{\"changed\": {\"fields\": [\"titulo\", \"slug\"]}}]', 8, 1),
(51, '2019-07-28 22:45:59.446871', '3', 'Media', 2, '[]', 8, 1),
(52, '2019-07-28 22:46:17.244531', '2', 'Basica Secundaria', 2, '[{\"changed\": {\"fields\": [\"slug\"]}}]', 8, 1),
(53, '2019-07-28 22:46:33.790563', '1', 'Basica Primaria', 2, '[{\"changed\": {\"fields\": [\"slug\"]}}]', 8, 1),
(54, '2019-07-28 22:48:38.910834', '4', 'Banda Marcial', 2, '[{\"changed\": {\"fields\": [\"titulo\"]}}]', 8, 1),
(55, '2019-07-28 22:48:56.827417', '4', 'Banda Marcial', 2, '[{\"changed\": {\"fields\": [\"slug\"]}}]', 8, 1),
(56, '2019-07-28 22:50:47.441443', '6', 'Papeleria y aseo', 1, '[{\"added\": {}}]', 8, 1),
(57, '2019-07-28 22:51:33.124993', '6', 'Papeleria y aseo', 3, '', 8, 1),
(58, '2019-07-28 22:53:16.278034', '4', 'Banda Marcial', 2, '[{\"changed\": {\"fields\": [\"estado\"]}}]', 8, 1),
(59, '2019-07-28 22:53:24.780927', '4', 'Banda Marcial', 2, '[{\"changed\": {\"fields\": [\"estado\"]}}]', 8, 1),
(60, '2019-07-30 00:20:38.154368', '6', 'Convivencia', 1, '[{\"added\": {}}]', 8, 1),
(61, '2019-07-30 00:24:28.369923', '6', 'Convivencia', 3, '', 8, 1),
(62, '2019-07-30 00:25:00.513663', '7', 'Convivencia', 1, '[{\"added\": {}}]', 8, 1),
(63, '2019-07-30 00:25:43.553072', '7', 'convivencia grado 8', 2, '[{\"changed\": {\"fields\": [\"titulo\"]}}]', 8, 1),
(64, '2019-07-30 00:31:59.274710', '7', 'convivencia grado 8', 2, '[{\"changed\": {\"fields\": [\"descripcion\"]}}]', 8, 1),
(65, '2019-07-30 00:32:04.693047', '5', 'Jardín y Transición', 2, '[{\"changed\": {\"fields\": [\"descripcion\"]}}]', 8, 1),
(66, '2019-07-30 00:32:09.995216', '5', 'Jardín y Transición', 2, '[]', 8, 1),
(67, '2019-07-30 00:32:15.809512', '4', 'Banda Marcial', 2, '[{\"changed\": {\"fields\": [\"descripcion\"]}}]', 8, 1),
(68, '2019-07-30 00:32:21.438569', '3', 'Media', 2, '[{\"changed\": {\"fields\": [\"descripcion\"]}}]', 8, 1),
(69, '2019-07-30 00:32:26.310151', '2', 'Basica Secundaria', 2, '[{\"changed\": {\"fields\": [\"descripcion\"]}}]', 8, 1),
(70, '2019-07-30 00:32:32.814726', '1', 'Basica Primaria', 2, '[{\"changed\": {\"fields\": [\"descripcion\"]}}]', 8, 1),
(71, '2019-07-30 00:34:10.141672', '2', 'Prueba', 1, '[{\"added\": {}}]', 4, 1),
(72, '2019-07-30 00:36:11.061442', '2', 'Prueba', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"is_staff\", \"user_permissions\"]}}]', 4, 1),
(73, '2019-07-30 00:38:12.398966', '4', 'Papeleria y aseo', 1, '[{\"added\": {}}]', 9, 2),
(74, '2019-07-30 00:38:27.524473', '1', 'Banda Marcial Gana Concurso', 2, '[]', 9, 2),
(75, '2019-07-30 00:47:29.494136', '3', 'Convivencia', 2, '[]', 9, 1),
(76, '2019-07-30 00:47:34.785415', '2', 'Izada de bandera', 2, '[]', 9, 1),
(77, '2019-07-30 00:47:40.006966', '1', 'Banda Marcial Gana Concurso', 2, '[]', 9, 1),
(78, '2019-07-30 00:47:43.787594', '4', 'Papeleria y aseo', 2, '[]', 9, 1),
(79, '2019-07-31 02:50:03.125173', '7', 'convivencia grado 8', 2, '[{\"changed\": {\"fields\": [\"descripcion\"]}}]', 8, 1),
(80, '2019-07-31 02:50:09.343870', '5', 'Jardín y Transición', 2, '[{\"changed\": {\"fields\": [\"descripcion\"]}}]', 8, 1),
(81, '2019-07-31 02:50:15.670327', '4', 'Banda Marcial', 2, '[{\"changed\": {\"fields\": [\"descripcion\"]}}]', 8, 1),
(82, '2019-07-31 02:50:29.294135', '3', 'Media', 2, '[{\"changed\": {\"fields\": [\"descripcion\"]}}]', 8, 1),
(83, '2019-07-31 02:50:35.099078', '2', 'Basica Secundaria', 2, '[{\"changed\": {\"fields\": [\"descripcion\"]}}]', 8, 1),
(84, '2019-07-31 02:50:41.886308', '1', 'Basica Primaria', 2, '[{\"changed\": {\"fields\": [\"descripcion\"]}}]', 8, 1),
(85, '2019-08-01 00:17:44.994114', '5', 'Ceremonia clausura', 1, '[{\"added\": {}}]', 9, 1),
(86, '2019-08-03 16:18:55.030574', '1', 'Colegio Académico El poblado', 2, '[{\"changed\": {\"fields\": [\"historia\"]}}]', 7, 1),
(87, '2019-08-04 15:35:51.421515', '7', 'convivencia grado 8', 2, '[{\"changed\": {\"fields\": [\"index\"]}}]', 8, 1),
(88, '2019-08-04 15:36:58.680164', '4', 'Banda Marcial', 2, '[{\"changed\": {\"fields\": [\"index\"]}}]', 8, 1),
(89, '2019-08-04 15:37:37.543855', '7', 'convivencia grado 8', 2, '[]', 8, 1),
(90, '2019-08-04 15:37:42.987436', '7', 'convivencia grado 8', 2, '[{\"changed\": {\"fields\": [\"index\"]}}]', 8, 1),
(91, '2019-08-04 15:47:56.116466', '7', 'convivencia grado 8', 2, '[{\"changed\": {\"fields\": [\"index\"]}}]', 8, 1),
(92, '2019-08-04 16:00:07.365469', '7', 'convivencia grado 8', 2, '[{\"changed\": {\"fields\": [\"index\"]}}]', 8, 1),
(93, '2019-08-04 16:00:32.808187', '4', 'Banda Marcial', 2, '[{\"changed\": {\"fields\": [\"index\"]}}]', 8, 1),
(94, '2019-08-04 16:14:35.948724', '3', 'Media', 2, '[{\"changed\": {\"fields\": [\"index\"]}}]', 8, 1),
(95, '2019-08-06 00:00:26.183553', '1', 'Matematicas', 1, '[{\"added\": {}}]', 12, 1),
(96, '2019-08-06 00:00:35.674649', '2', 'Español', 1, '[{\"added\": {}}]', 12, 1),
(97, '2019-08-06 00:00:44.848930', '3', 'Sociales', 1, '[{\"added\": {}}]', 12, 1),
(98, '2019-08-06 00:00:58.311575', '4', 'Informatica', 1, '[{\"added\": {}}]', 12, 1),
(99, '2019-08-06 00:01:10.279686', '5', 'Estadistica', 1, '[{\"added\": {}}]', 12, 1),
(100, '2019-08-06 00:01:17.222625', '6', 'Quimica', 1, '[{\"added\": {}}]', 12, 1),
(101, '2019-08-06 00:01:24.609955', '7', 'Edu. Fisica', 1, '[{\"added\": {}}]', 12, 1),
(102, '2019-08-06 00:01:30.861525', '8', 'Fisica', 1, '[{\"added\": {}}]', 12, 1),
(103, '2019-08-06 00:01:36.169513', '9', 'Ingles', 1, '[{\"added\": {}}]', 12, 1),
(104, '2019-08-06 00:01:52.623136', '10', 'Naturales', 1, '[{\"added\": {}}]', 12, 1),
(105, '2019-08-06 00:02:00.747909', '11', 'Catedra De Paz', 1, '[{\"added\": {}}]', 12, 1),
(106, '2019-08-06 00:02:06.431000', '12', 'Religion', 1, '[{\"added\": {}}]', 12, 1),
(107, '2019-08-06 00:02:15.257225', '13', 'Economia', 1, '[{\"added\": {}}]', 12, 1),
(108, '2019-08-06 00:02:24.191605', '14', 'Democracia', 1, '[{\"added\": {}}]', 12, 1),
(109, '2019-08-06 00:02:35.189109', '15', 'Geometria', 1, '[{\"added\": {}}]', 12, 1),
(110, '2019-08-06 00:05:39.604045', '1', 'Pedro', 1, '[{\"added\": {}}]', 11, 1),
(111, '2019-08-06 00:07:07.290106', '2', 'Sandra', 1, '[{\"added\": {}}]', 11, 1),
(112, '2019-08-06 00:10:50.444207', '16', 'Filosofia', 1, '[{\"added\": {}}]', 12, 1),
(113, '2019-08-06 01:23:41.786905', '3', 'Carlos Arango', 1, '[{\"added\": {}}]', 11, 1),
(114, '2019-08-06 01:24:29.657485', '4', 'Camila Plaza', 1, '[{\"added\": {}}]', 11, 1),
(115, '2019-08-06 01:37:49.781129', '4', 'Camila Plaza', 2, '[{\"changed\": {\"fields\": [\"informacion\"]}}]', 11, 1),
(116, '2019-08-06 01:37:58.091638', '3', 'Carlos Arango', 2, '[{\"changed\": {\"fields\": [\"informacion\"]}}]', 11, 1),
(117, '2019-08-06 01:38:09.577249', '2', 'Sandra Torres', 2, '[{\"changed\": {\"fields\": [\"informacion\"]}}]', 11, 1),
(118, '2019-08-06 01:38:18.835861', '1', 'Pedro Zapata', 2, '[{\"changed\": {\"fields\": [\"informacion\"]}}]', 11, 1),
(119, '2019-08-06 01:58:41.121595', '5', 'Luis Romero Perez', 1, '[{\"added\": {}}]', 11, 1),
(120, '2019-08-06 01:59:21.036099', '5', 'Luis Romero Perez', 2, '[{\"changed\": {\"fields\": [\"imagen\"]}}]', 11, 1),
(121, '2019-08-06 02:02:38.915127', '5', 'Luis Fernando Romero Perez', 2, '[{\"changed\": {\"fields\": [\"nombre\"]}}]', 11, 1),
(122, '2019-08-06 02:13:25.429306', '5', 'Luis Fernandorrrrrrr Romero Perezrrrrrrrr', 2, '[{\"changed\": {\"fields\": [\"nombre\", \"apellido\"]}}]', 11, 1),
(123, '2019-08-06 02:14:55.055995', '5', 'Luis Fernando Montealegre', 2, '[{\"changed\": {\"fields\": [\"nombre\", \"apellido\"]}}]', 11, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'blog', 'category'),
(9, 'blog', 'post'),
(5, 'contenttypes', 'contenttype'),
(7, 'core', 'colegio'),
(11, 'docentes', 'docente'),
(12, 'docentes', 'materia'),
(8, 'services', 'service'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-07-25 02:43:55.979471'),
(2, 'auth', '0001_initial', '2019-07-25 02:43:56.873500'),
(3, 'admin', '0001_initial', '2019-07-25 02:44:00.843380'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-07-25 02:44:01.784119'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-07-25 02:44:01.813492'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-07-25 02:44:02.299287'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-07-25 02:44:02.894028'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-07-25 02:44:03.365040'),
(9, 'auth', '0004_alter_user_username_opts', '2019-07-25 02:44:03.403739'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-07-25 02:44:03.631153'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-07-25 02:44:03.662385'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-07-25 02:44:03.866214'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-07-25 02:44:04.306231'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-07-25 02:44:04.808469'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-07-25 02:44:05.261129'),
(16, 'auth', '0011_update_proxy_permissions', '2019-07-25 02:44:05.292385'),
(17, 'core', '0001_initial', '2019-07-25 02:44:05.442725'),
(18, 'sessions', '0001_initial', '2019-07-25 02:44:05.610611'),
(19, 'services', '0001_initial', '2019-07-25 03:38:37.563690'),
(20, 'services', '0002_auto_20190727_1807', '2019-07-27 23:07:45.965911'),
(21, 'services', '0003_auto_20190727_2308', '2019-07-28 04:08:51.166548'),
(22, 'services', '0004_auto_20190727_2309', '2019-07-28 04:09:15.795825'),
(23, 'services', '0005_service_matricula', '2019-07-28 15:04:53.635951'),
(24, 'services', '0006_auto_20190728_1006', '2019-07-28 15:07:03.965299'),
(25, 'services', '0007_auto_20190728_1007', '2019-07-28 15:07:40.506968'),
(26, 'services', '0008_service_horarios', '2019-07-28 15:56:06.188011'),
(27, 'services', '0009_auto_20190728_1103', '2019-07-28 16:03:08.623353'),
(28, 'blog', '0001_initial', '2019-07-28 18:35:49.560496'),
(29, 'blog', '0002_post_publicacion', '2019-07-28 20:10:30.115821'),
(30, 'blog', '0003_auto_20190728_1512', '2019-07-28 20:12:30.149066'),
(31, 'blog', '0004_auto_20190728_1514', '2019-07-28 20:14:31.311242'),
(32, 'blog', '0005_auto_20190728_1515', '2019-07-28 20:15:08.298696'),
(33, 'services', '0010_auto_20190729_1931', '2019-07-30 00:31:08.213968'),
(34, 'blog', '0006_auto_20190729_1512', '2019-07-30 00:47:05.615285'),
(35, 'blog', '0007_auto_20190729_1609', '2019-07-30 00:47:06.416984'),
(36, 'blog', '0008_post_slug', '2019-07-30 00:47:06.947030'),
(37, 'blog', '0009_auto_20190729_1948', '2019-07-30 00:48:51.655697'),
(38, 'core', '0002_auto_20190729_1122', '2019-07-31 02:48:15.443254'),
(39, 'services', '0011_auto_20190729_1931', '2019-07-31 02:48:15.480233'),
(40, 'services', '0012_auto_20190730_2148', '2019-07-31 02:50:52.713477'),
(41, 'core', '0003_colegio_historia', '2019-08-03 16:17:48.682527'),
(42, 'core', '0004_auto_20190803_1118', '2019-08-03 16:18:30.651733'),
(43, 'docentes', '0001_initial', '2019-08-05 23:59:20.303830');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('11qgmkng8nvie48ld5lunazjmwghaurf', 'YzQ1ZTdkYTRhN2YxYmE1YWVlNTI4MDQ1ZWM0NzhiZDA4NTQzYzc5NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYTU0Yzc1NzEwNmQzYzJjMmJiYjA1MDg5OTQ3NGI3MDg0MjI5YmFmIn0=', '2019-08-10 23:05:33.318215'),
('a4ckv8wxseo3ow4ksch1ywsyudyzyl86', 'YzQ1ZTdkYTRhN2YxYmE1YWVlNTI4MDQ1ZWM0NzhiZDA4NTQzYzc5NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYTU0Yzc1NzEwNmQzYzJjMmJiYjA1MDg5OTQ3NGI3MDg0MjI5YmFmIn0=', '2019-08-17 16:15:24.943563');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes_docente`
--

CREATE TABLE `docentes_docente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `grados` varchar(200) NOT NULL,
  `informacion` longtext,
  `creacion` date NOT NULL,
  `edicion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `docentes_docente`
--

INSERT INTO `docentes_docente` (`id`, `nombre`, `apellido`, `imagen`, `grados`, `informacion`, `creacion`, `edicion`) VALUES
(1, 'Pedro', 'Zapata', 'docentes/testimonial_img_1.png', '6°, 7°, 8°', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non nisi quis massa dictum ornare', '2019-08-05', '2019-08-05'),
(2, 'Sandra', 'Torres', 'docentes/testimonial_img_3.png', 'Jardin, Transición', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non nisi quis massa dictum ornare', '2019-08-05', '2019-08-05'),
(3, 'Carlos', 'Arango', 'docentes/special_cource_1.png', '6°, 7°, 8°', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non nisi quis massa dictum ornare', '2019-08-05', '2019-08-05'),
(4, 'Camila', 'Plaza', 'docentes/cource_3.png', '6°, 7°, 8°, 10°, 11°', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non nisi quis massa dictum ornare', '2019-08-05', '2019-08-05'),
(5, 'Luis Fernando', 'Montealegre', 'docentes/blog_3.png', '6°, 7°, 8°, 10°, 11°', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed porta lacus eleifend odio hendrerit rho', '2019-08-05', '2019-08-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes_docente_materias`
--

CREATE TABLE `docentes_docente_materias` (
  `id` int(11) NOT NULL,
  `docente_id` int(11) NOT NULL,
  `materia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `docentes_docente_materias`
--

INSERT INTO `docentes_docente_materias` (`id`, `docente_id`, `materia_id`) VALUES
(1, 1, 1),
(2, 1, 5),
(3, 1, 15),
(4, 2, 2),
(5, 2, 3),
(6, 3, 3),
(7, 3, 6),
(8, 3, 7),
(9, 4, 10),
(10, 4, 11),
(11, 4, 12),
(13, 5, 4),
(12, 5, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes_materia`
--

CREATE TABLE `docentes_materia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `docentes_materia`
--

INSERT INTO `docentes_materia` (`id`, `nombre`) VALUES
(1, 'Matematicas'),
(2, 'Español'),
(3, 'Sociales'),
(4, 'Informatica'),
(5, 'Estadistica'),
(6, 'Quimica'),
(7, 'Edu. Fisica'),
(8, 'Fisica'),
(9, 'Ingles'),
(10, 'Naturales'),
(11, 'Catedra De Paz'),
(12, 'Religion'),
(13, 'Economia'),
(14, 'Democracia'),
(15, 'Geometria'),
(16, 'Filosofia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services_service`
--

CREATE TABLE `services_service` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `contenido` longtext NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `creacion` date NOT NULL,
  `edicion` date NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `index` tinyint(1) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `matricula` int(11) NOT NULL,
  `mensualidad` int(11) NOT NULL,
  `jornada` varchar(100) DEFAULT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `services_service`
--

INSERT INTO `services_service` (`id`, `titulo`, `contenido`, `imagen`, `creacion`, `edicion`, `estado`, `index`, `slug`, `matricula`, `mensualidad`, `jornada`, `descripcion`) VALUES
(1, 'Basica Primaria', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vitae lacus lectus. In hac habitasse platea dictumst. Duis commodo quam a iaculis sollicitudin. Vestibulum eu urna eget lacus rutrum pulvinar. Cras quis quam commodo, rutrum velit vel, iaculis quam. Sed nec odio vitae massa cursus lacinia. Pellentesque vitae cursus sem. Vivamus a porttitor nisi, auctor vestibulum mi.\r\n\r\nSed vel tincidunt nibh, a ornare mi. Nulla libero ex, condimentum non augue sit amet, porttitor ultrices nisi. Nullam accumsan dolor quis velit eleifend, ut ultricies velit rutrum. In bibendum elit sed nisi bibendum, id egestas ex porttitor. Sed felis ipsum, finibus in risus ut, cursus tincidunt elit. Ut finibus dolor et augue molestie, et mollis felis fermentum. Donec magna augue, iaculis id metus id, eleifend dictum ex.', 'services/IMG-20190725-WA0070.jpg', '2019-07-24', '2019-07-30', 1, 1, 'basica-primaria', 180000, 76000, 'Mañana y Tarde', 'Lorem ipsum dolor si'),
(2, 'Basica Secundaria', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vitae lacus lectus. In hac habitasse platea dictumst. Duis commodo quam a iaculis sollicitudin. Vestibulum eu urna eget lacus rutrum pulvinar. Cras quis quam commodo, rutrum velit vel, iaculis quam. Sed nec odio vitae massa cursus lacinia. Pellentesque vitae cursus sem. Vivamus a porttitor nisi, auctor vestibulum mi.\r\n\r\nSed vel tincidunt nibh, a ornare mi. Nulla libero ex, condimentum non augue sit amet, porttitor ultrices nisi. Nullam accumsan dolor quis velit eleifend, ut ultricies velit rutrum. In bibendum elit sed nisi bibendum, id egestas ex porttitor. Sed felis ipsum, finibus in risus ut, cursus tincidunt elit. Ut finibus dolor et augue molestie, et mollis felis fermentum. Donec magna augue, iaculis id metus id, eleifend dictum ex.', 'services/IMG-20190725-WA0037.jpg', '2019-07-24', '2019-07-30', 1, 1, 'basica-secundaria', 180000, 80000, 'Mañana y Tarde', 'Lorem ipsum dolor si'),
(3, 'Media', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vitae lacus lectus. In hac habitasse platea dictumst. Duis commodo quam a iaculis sollicitudin. Vestibulum eu urna eget lacus rutrum pulvinar. Cras quis quam commodo, rutrum velit vel, iaculis quam. Sed nec odio vitae massa cursus lacinia. Pellentesque vitae cursus sem. Vivamus a porttitor nisi, auctor vestibulum mi.\r\n\r\nSed vel tincidunt nibh, a ornare mi. Nulla libero ex, condimentum non augue sit amet, porttitor ultrices nisi. Nullam accumsan dolor quis velit eleifend, ut ultricies velit rutrum. In bibendum elit sed nisi bibendum, id egestas ex porttitor. Sed felis ipsum, finibus in risus ut, cursus tincidunt elit. Ut finibus dolor et augue molestie, et mollis felis fermentum. Donec magna augue, iaculis id metus id, eleifend dictum ex.', 'services/IMG-20190725-WA0045.jpg', '2019-07-24', '2019-08-04', 1, 0, 'media', 182000, 80000, 'Mañana', 'Lorem ipsum dolor'),
(4, 'Banda Marcial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vitae lacus lectus. In hac habitasse platea dictumst. Duis commodo quam a iaculis sollicitudin. Vestibulum eu urna eget lacus rutrum pulvinar. Cras quis quam commodo, rutrum velit vel, iaculis quam. Sed nec odio vitae massa cursus lacinia. Pellentesque vitae cursus sem. Vivamus a porttitor nisi, auctor vestibulum mi.\r\n\r\nSed vel tincidunt nibh, a ornare mi. Nulla libero ex, condimentum non augue sit amet, porttitor ultrices nisi. Nullam accumsan dolor quis velit eleifend, ut ultricies velit rutrum. In bibendum elit sed nisi bibendum, id egestas ex porttitor. Sed felis ipsum, finibus in risus ut, cursus tincidunt elit. Ut finibus dolor et augue molestie, et mollis felis fermentum. Donec magna augue, iaculis id metus id, eleifend dictum ex.', 'services/WhatsApp_Image_2018-10-24_at_8.59.57_AM_4_1.jpeg', '2019-07-24', '2019-08-04', 1, 0, 'banda-marcial', 0, 50000, 'Mañana y Tarde', 'Lorem ipsum dolor'),
(5, 'Jardín y Transición', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam rhoncus rhoncus nisi, et pharetra turpis placerat nec. Donec at nunc et odio pharetra pretium. Fusce tristique imperdiet rhoncus. Quisque erat orci, sollicitudin ac pulvinar et, sagittis id lectus. Maecenas eget congue nunc. Donec quis magna ipsum. Praesent rhoncus diam sit amet dui fringilla, vel varius lacus tempor. Suspendisse porttitor pulvinar felis et egestas. Sed velit ex, consequat placerat leo nec, lacinia pulvinar massa. Cras viverra sapien eu ornare ullamcorper. Fusce suscipit ex at auctor interdum. Curabitur eu fermentum risus, quis fermentum tortor. Proin nisl lectus, aliquam at lectus eu, feugiat iaculis risus. Etiam in arcu lacus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'services/foto1.jpg', '2019-07-27', '2019-07-30', 1, 1, 'jard-n-y-transici-n', 194000, 82000, 'Mañana y Tarde', 'Lorem ipsum dolor'),
(7, 'convivencia grado 8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam posuere volutpat porta. Phasellus id lobortis ligula. Sed dolor libero, rutrum tristique commodo maximus, consectetur eget tellus. Donec eget fringilla felis. Vestibulum pretium metus a ex vestibulum, eget elementum neque facilisis. Fusce et congue dolor. Pellentesque quis egestas tellus. Nunc ut congue lectus. Phasellus ac sapien ac purus blandit vestibulum. Sed eu arcu magna. Vestibulum ac sem vel ante aliquet dapibus eget vel sapien.\r\n\r\nDuis dapibus ante a lobortis varius. Sed turpis felis, luctus a nisl sed, viverra venenatis lacus. Aliquam maximus ultricies ex, id auctor turpis dignissim nec. Nullam tincidunt justo sit amet turpis feugiat, et hendrerit quam rhoncus. Aenean in lorem arcu. Vivamus erat nibh, fringilla vulputate mi sit amet, pretium maximus lacus. Sed malesuada pellentesque nunc. Donec massa turpis, lobortis et urna quis, rutrum faucibus massa.', 'services/IMG-20190725-WA0093.jpg', '2019-07-29', '2019-08-04', 1, 0, 'convivencia-grado-8', 10000, 30000, 'Mañana', 'Lorem ipsum dolor');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_post_autor_id_8811ea21_fk_auth_user_id` (`autor_id`),
  ADD KEY `blog_post_slug_b95473f2` (`slug`);

--
-- Indices de la tabla `blog_post_categoria`
--
ALTER TABLE `blog_post_categoria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_post_categoria_post_id_category_id_f146962f_uniq` (`post_id`,`category_id`),
  ADD KEY `blog_post_categoria_category_id_9878c9c0_fk_blog_category_id` (`category_id`);

--
-- Indices de la tabla `core_colegio`
--
ALTER TABLE `core_colegio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `docentes_docente`
--
ALTER TABLE `docentes_docente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docentes_docente_materias`
--
ALTER TABLE `docentes_docente_materias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `docentes_docente_materias_docente_id_materia_id_1f10dbe7_uniq` (`docente_id`,`materia_id`),
  ADD KEY `docentes_docente_mat_materia_id_20d791a1_fk_docentes_` (`materia_id`);

--
-- Indices de la tabla `docentes_materia`
--
ALTER TABLE `docentes_materia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `services_service`
--
ALTER TABLE `services_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_service_slug_a56f96e2` (`slug`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `blog_post_categoria`
--
ALTER TABLE `blog_post_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `core_colegio`
--
ALTER TABLE `core_colegio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `docentes_docente`
--
ALTER TABLE `docentes_docente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `docentes_docente_materias`
--
ALTER TABLE `docentes_docente_materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `docentes_materia`
--
ALTER TABLE `docentes_materia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `services_service`
--
ALTER TABLE `services_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `blog_post`
--
ALTER TABLE `blog_post`
  ADD CONSTRAINT `blog_post_autor_id_8811ea21_fk_auth_user_id` FOREIGN KEY (`autor_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `blog_post_categoria`
--
ALTER TABLE `blog_post_categoria`
  ADD CONSTRAINT `blog_post_categoria_category_id_9878c9c0_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`),
  ADD CONSTRAINT `blog_post_categoria_post_id_1b3e0dc2_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `docentes_docente_materias`
--
ALTER TABLE `docentes_docente_materias`
  ADD CONSTRAINT `docentes_docente_mat_docente_id_fb3a72aa_fk_docentes_` FOREIGN KEY (`docente_id`) REFERENCES `docentes_docente` (`id`),
  ADD CONSTRAINT `docentes_docente_mat_materia_id_20d791a1_fk_docentes_` FOREIGN KEY (`materia_id`) REFERENCES `docentes_materia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
