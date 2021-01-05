-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: db5001233455.hosting-data.io
-- Tiempo de generación: 22-12-2020 a las 15:33:17
-- Versión del servidor: 5.7.30-log
-- Versión de PHP: 7.0.33-0+deb9u10
CREATE DATABASE  dbs1055304
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `dbs1055304`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marks`
--

CREATE TABLE `marks` (
  `idMark` int(10) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `name` varchar(250) NOT NULL,
  `mark` decimal(10,2) NOT NULL,
  `idStudent` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `marks`
--

INSERT INTO `marks` (`idMark`, `subject`, `name`, `mark`, `idStudent`) VALUES
(1, 'DSBM', 'Examen Parcial', '6.15', 1),
(2, 'DSBM', 'Prácticas', '8.00', 1),
(3, 'PBE', 'Ejercicios Teoría', '9.90', 1),
(4, 'PBE', 'Proyecto', '9.00', 1),
(5, 'PBE', 'Examen Prácticas', '7.00', 1),
(6, 'TD', 'Examen Parcial', '2.00', 1),
(7, 'ICOM', 'Prácticas', '8.40', 1),
(8, 'ICOM', 'Examen Parcial', '5.05', 1),
(9, 'RP', 'Controles On-line', '7.24', 1),
(10, 'RP', 'Prácticas', '7.50', 1),
(11, 'RP', 'Examen Parcial', '4.38', 1),
(12, 'DSBM', 'Examen Parcial', '2.30', 2),
(13, 'DSBM', 'Prácticas', '8.00', 2),
(14, 'PBE', 'Ejercicios teoría', '10.00', 2),
(15, 'PBE', 'Proyecto', '9.00', 2),
(16, 'PBE', 'Examen Prácticas', '6.90', 2),
(17, 'TD', 'Examen Parcial', '0.99', 2),
(18, 'ICOM', 'Prácticas', '8.00', 2),
(19, 'ICOM', 'Examen Parcial', '7.60', 2),
(20, 'RP', 'Controles On-line', '8.05', 2),
(21, 'RP', 'Prácticas', '8.25', 2),
(22, 'RP', 'Examen Parcial', '3.60', 2),
(23, 'DSBM', 'Examen Parcial', '6.25', 3),
(24, 'DSBM', 'Prácticas', '8.00', 3),
(25, 'PBE', 'Ejercicios Teoría', '9.50', 3),
(26, 'PBE', 'Proyecto', '9.00', 3),
(27, 'PBE', 'Examen Prácticas', '9.10', 3),
(28, 'TD', 'Examen Parcial', '5.00', 3),
(29, 'PSAVC', 'Prácticas', '8.00', 3),
(30, 'PSAVC', 'Examen Parcial', '6.30', 3),
(31, 'RP', 'Controles On-line', '4.90', 3),
(32, 'RP', 'Prácticas', '7.50', 3),
(33, 'RP', 'Examen Parcial', '5.20', 3),
(34, 'DSBM', 'Examen Parcial', '6.70', 4),
(35, 'DSBM', 'Prácticas', '7.60', 4),
(36, 'PBE', 'Ejercicios Teoría', '8.50', 4),
(37, 'PBE', 'Proyecto', '9.00', 4),
(38, 'PBE', 'Examen Prácticas', '6.00', 4),
(39, 'TD', 'Examen Parcial', '4.20', 4),
(40, 'PSAVC', 'Prácticas', '8.40', 4),
(41, 'PSAVC', 'Examen Parcial', '1.00', 4),
(42, 'RP', 'Controles On-line', '5.25', 4),
(43, 'RP', 'Prácticas', '6.50', 4),
(44, 'RP', 'Examen Parcial', '5.90', 4),
(45, 'DSBM', 'Examen Parcial', '3.40', 5),
(46, 'DSBM', 'Prácticas', '6.70', 5),
(47, 'PBE', 'Ejercicios Teoría', '7.90', 5),
(48, 'PBE', 'Proyecto', '9.00', 5),
(49, 'PBE', 'Examen Prácticas', '7.40', 5),
(50, 'TD', 'Examen Parcial', '1.00', 5),
(51, 'PSAVC', 'Prácticas', '7.70', 5),
(52, 'PSAVC', 'Examen Parcial', '5.30', 5),
(53, 'RP', 'Controles On-line', '6.30', 5),
(54, 'RP', 'Prácticas', '7.05', 5),
(55, 'RP', 'Examen Parcial', '5.95', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `idStudent` int(10) NOT NULL,
  `nameStudent` varchar(100) NOT NULL,
  `idCard` varchar(20) NOT NULL,
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`idStudent`, `nameStudent`, `idCard`, `user`, `pass`) VALUES
(1, 'Raquel Acedo Benedicto', '1111', 'Raquel', '1111'),
(2, 'Miriam Conde Montoya', '2222', 'Miriam', '2222'),
(3, 'Sergi Izquierdo Bas', '3333', 'Sergi', '3333'),
(4, 'Carmen González Luque', '4444', 'Carmen', '4444'),
(5, 'Anna Puig Miret', '5555', 'Anna', '5555'),
(6, 'Rodolfo el Grande', '1234', 'rodolfo', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subjects`
--

CREATE TABLE `subjects` (
  `idStudent` int(10) NOT NULL,
  `subject` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subjects`
--

INSERT INTO `subjects` (`idStudent`, `subject`) VALUES
(0, ''),
(1, 'DSBM'),
(1, 'ICOM'),
(1, 'Lab DSBM'),
(1, 'Lab ICOM'),
(1, 'Lab PBE'),
(1, 'Lab RP'),
(1, 'PBE'),
(1, 'RP'),
(1, 'TD'),
(2, 'DSBM'),
(2, 'ICOM'),
(2, 'Lab DSBM'),
(2, 'Lab PBE'),
(2, 'Lab RP'),
(2, 'PBE'),
(2, 'RP'),
(2, 'TD'),
(3, 'DSBM'),
(3, 'Lab DSBM'),
(3, 'Lab PBE'),
(3, 'Lab PSAVC'),
(3, 'Lab RP'),
(3, 'PBE'),
(3, 'PSAVC'),
(3, 'RP'),
(3, 'TD'),
(4, 'DSBM'),
(4, 'Lab DSBM'),
(4, 'Lab PBE'),
(4, 'Lab PSAVC'),
(4, 'Lab RP'),
(4, 'PBE'),
(4, 'PSAVC'),
(4, 'RP'),
(4, 'TD'),
(5, 'DSBM'),
(5, 'Lab DSBM'),
(5, 'Lab PBE'),
(5, 'Lab PSAVC'),
(5, 'Lab RP'),
(5, 'PBE'),
(5, 'PSAVC'),
(5, 'RP'),
(5, 'TD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablas`
--

CREATE TABLE `tablas` (
  `tabla` varchar(50) NOT NULL,
  `nCamps` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tablas`
--

INSERT INTO `tablas` (`tabla`, `nCamps`) VALUES
('marks', 5),
('students', 5),
('subjects', 2),
('tasks', 3),
('timetables', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablas_camps`
--

CREATE TABLE `tablas_camps` (
  `tabla` varchar(20) NOT NULL,
  `camp` varchar(20) NOT NULL,
  `ordre` int(5) NOT NULL,
  `identificador` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tablas_camps`
--

INSERT INTO `tablas_camps` (`tabla`, `camp`, `ordre`, `identificador`) VALUES
('marks', 'idMark', 1, 1),
('marks', 'idStudent', 4, 1),
('marks', 'mark', 5, 0),
('marks', 'name', 3, 0),
('marks', 'subject', 2, 0),
('students', 'idCard', 1, 0),
('students', 'idStudent', 2, 1),
('students', 'nameStudent', 3, 2),
('students', 'pass', 5, 0),
('students', 'user', 4, 0),
('subjects', 'idStudent', 1, 1),
('subjects', 'subject', 2, 1),
('tasks', 'date', 2, 2),
('tasks', 'name', 3, 2),
('tasks', 'subject', 1, 2),
('timetables', 'day', 2, 0),
('timetables', 'hour', 3, 0),
('timetables', 'idTimetables', 1, 1),
('timetables', 'room', 5, 0),
('timetables', 'subject', 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `date` date NOT NULL,
  `subject` varchar(50) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`date`, `subject`, `name`) VALUES
('2020-12-12', 'PBE', 'Examen Final'),
('2020-12-14', 'RP', 'Examen Final'),
('2020-12-22', 'ICOM', 'Examen Prácticas'),
('2020-12-23', 'PBE', 'Proyecto'),
('2020-12-31', 'DSBM', 'Prácticas Opcionales'),
('2021-01-08', 'DSBM', 'Examen Final'),
('2021-01-11', 'ICOM', 'Examen Final'),
('2021-01-15', 'PBE', 'Final Report'),
('2021-01-18', 'PSAVC', 'Examen Final'),
('2021-01-20', 'TD', 'Examen Final');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `timetables`
--

CREATE TABLE `timetables` (
  `day` varchar(3) NOT NULL,
  `hour` time NOT NULL,
  `subject` varchar(50) NOT NULL,
  `room` varchar(10) NOT NULL,
  `idtimetables` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `timetables`
--

INSERT INTO `timetables` (`day`, `hour`, `subject`, `room`, `idtimetables`) VALUES
('Mon', '08:00:00', 'Lab RP', 'D3006', 1),
('Mon', '10:00:00', 'TD', 'A2002', 2),
('Mon', '13:00:00', 'DSBM', 'A2002', 3),
('Mon', '14:00:00', 'PBE', 'A3202', 4),
('Tue', '08:00:00', 'Lab PSAVC', 'D4001', 5),
('Tue', '10:00:00', 'PSAVC', 'A4001', 6),
('Tue', '10:00:00', 'Lab ICOM', 'D4001', 7),
('Tue', '12:00:00', 'ICOM', 'A2002', 8),
('Wed', '10:00:00', 'RP', 'A4001', 9),
('Wed', '12:00:00', 'PSAVC', 'A4001', 10),
('Wed', '17:00:00', 'Lab PBE', 'A3202', 11),
('Thu', '08:00:00', 'Lab DSBM', 'C5S101A', 12),
('Thu', '10:00:00', 'DSBM', 'A4001', 13),
('Thu', '12:00:00', 'TD', 'A4001', 14),
('Fri', '08:00:00', 'ICOM', 'A4001', 15),
('Fri', '10:00:00', 'PSAVC', 'A4001', 16),
('Fri', '12:00:00', 'RP', 'A4001', 17);


-- --------------------------------------------------------

--
-- Estructura para la vista `tasks_View`
--

CREATE VIEW `tasks_View`  AS SELECT `tasks`.`date` AS `date`, `tasks`.`subject` AS `subject`, `tasks`.`name` AS `name`, `subjects`.`idStudent` AS `idStudent` FROM (`tasks` join `subjects`) WHERE (`subjects`.`subject` = `tasks`.`subject`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `timetables_View`
--

CREATE VIEW `timetables_View`  AS SELECT `timetables`.`day` AS `day`, `timetables`.`hour` AS `hour`, `timetables`.`idtimetables` AS `idTimetables`, `timetables`.`room` AS `room`, `timetables`.`subject` AS `subject`, `subjects`.`idStudent` AS `idStudent` FROM (`timetables` join `subjects`) WHERE (`subjects`.`subject` = `timetables`.`subject`) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`idMark`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`idStudent`);

--
-- Indices de la tabla `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`idStudent`,`subject`);

--
-- Indices de la tabla `tablas`
--
ALTER TABLE `tablas`
  ADD PRIMARY KEY (`tabla`);

--
-- Indices de la tabla `tablas_camps`
--
ALTER TABLE `tablas_camps`
  ADD PRIMARY KEY (`tabla`,`camp`);

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`date`,`subject`,`name`);

--
-- Indices de la tabla `timetables`
--
ALTER TABLE `timetables`
  ADD PRIMARY KEY (`idtimetables`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `marks`
--
ALTER TABLE `marks`
  MODIFY `idMark` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `students`
--
ALTER TABLE `students`
  MODIFY `idStudent` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `timetables`
--
ALTER TABLE `timetables`
  MODIFY `idtimetables` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
