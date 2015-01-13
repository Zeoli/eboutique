-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2015 at 09:06 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `web`
--
CREATE DATABASE IF NOT EXISTS `web` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `web`;

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `change_password`(
   _id  int ,
   _password varchar(100)
)
BEGIN

UPDATE usuario
SET 
   `password` = _password
WHERE
    `id` = _id
;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_articulo`(IN `_id` INT)
BEGIN

DELETE
FROM
    articulo
WHERE
    id = _id

;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_cat_Articulo`(
_id  int 
)
BEGIN

DELETE
FROM
    categoriaarticulo
WHERE
    id = _id

;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_stock`(IN `_id` INT)
BEGIN

DELETE
FROM
    stock
WHERE
    idproducto = _id

;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_user`(IN `_id` INT)
BEGIN

DELETE
FROM
    usuario
WHERE
    id = _id

;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_articulo_all`()
BEGIN

SELECT
    p.id,
    p.nombre,
	p.descripcion,
	p.precio,
	p.categoria,
	p.imagen
FROM
    articulo p
ORDER BY
    P.nombre

;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_articulo_one_by_id`(IN `_id` INT)
BEGIN

SELECT
    p.id,
    p.nombre,
	p.descripcion,
	p.precio,
	p.categoria,
	p.imagen
FROM
    articulo p
WHERE
    p.id = _id
ORDER BY
    P.nombre

;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_articulo_one_by_name`(IN `_nombre` VARCHAR(100))
BEGIN

SELECT
    p.id,
    p.nombre,
	p.descripcion,
	p.precio,
	p.categoria,
	p.imagen
FROM
    articulo p
WHERE
    p.nombre = _nombre
ORDER BY
    P.nombre

;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_cat_all`(
)
BEGIN

SELECT
    categoria.id,
    categoria.nombre
FROM
    categoriaarticulo categoria
ORDER BY
    categoria.nombre

;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_cat_one`(
_id  int 
)
BEGIN

SELECT
    categoria.id,
    categoria.nombre
FROM
    categoriaarticulo categoria
WHERE
    categoria.id = _id
ORDER BY
    categoria.nombre

;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_estatus_all`(
)
BEGIN

SELECT
    p.id,
    p.estatus
FROM
    estatuscompra p
ORDER BY
    P.estatus

;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_estatus_one`(
_id  int 
)
BEGIN

SELECT
    p.id,
    p.estatus
FROM
    estatus p
WHERE
    p.id = _id
ORDER BY
    P.estatus

;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_rol_all`(
)
BEGIN

SELECT
    p.id,
    p.nombre
FROM
    roles p
ORDER BY
    P.nombre

;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_rol_one`(IN `_id` INT)
BEGIN

SELECT
    p.id,
    p.nombre
FROM
    roles p
WHERE
    p.id = _id
ORDER BY
    P.nombre

;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_stock_all`(
)
BEGIN

SELECT
    a.id as idproducto,
	a.nombre as nombre,
	a.precio as precio,
	stk.stock as stock
FROM
    stock as stk INNER JOIN
	articulo AS a ON stk.idproducto = a.id
ORDER BY
    nombre

;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_stock_one`(
_idproducto  int 
)
BEGIN

SELECT
    a.id as idproducto,
	a.nombre as nombre,
	a.precio as precio,
	stk.stock as stock
FROM
    stock as stk inner join
	articulo as a on a.id = stk.idproducto
WHERE
    stk.idproducto = _idproducto
ORDER BY
    nombre

;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_user_all`()
BEGIN

SELECT
    p.id,
    p.nombre,
	p.username,
	p.apellidoP,
	p.apellidoM,
	p.edad,
	p.rol
	
FROM
    usuario p
ORDER BY
    P.nombre

;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_user_one_by_id`(IN `_id` INT)
BEGIN

SELECT
    p.id,
    p.nombre,
	p.username,
	p.apellidoP,
	p.apellidoM,
	p.edad,
	p.password,
	p.correo,
	p.direccion,
	p.ciudad,
	p.cp,
	p.rol
FROM
    usuario p
WHERE
    p.id = _id
ORDER BY
    P.nombre

;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_user_one_by_username`(
_username  varchar(100) 
)
BEGIN

SELECT
    p.id,
    p.nombre,
	p.username,
	p.apellidoP,
	p.apellidoM,
	p.password,
	p.rol
FROM
    usuario p
WHERE
    p.username = _username
ORDER BY
    P.nombre

;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_user_password`(
_id int 
)
BEGIN

SELECT
    p.id,
    p.password
FROM
    usuario p
WHERE
    p.id = _id
ORDER BY
    P.id

;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_venta_all`(
)
BEGIN
SELECT
    v.idventa AS idventa,
    v.cliente AS cliente, 
    v.fecha AS fecha,
    d.idproducto AS idproducto, 
    a.nombre AS nombre,
    a.precio AS precio, 
    d.cantidad AS cantidad,
    a.precio*d.cantidad AS parcial,
    (
    SELECT     
        SUM((dt.cantidad * art.precio)) AS TotalPagar
    FROM         
        detalleventa AS dt INNER JOIN
        articulo AS art ON dt.idproducto = art.id
    WHERE
        dt.idventa=v.id
    ) AS TotalPagar
FROM 
    venta AS v INNER JOIN
    detalleventa AS d ON v.id = d.idventa INNER JOIN
    articulo AS a ON d.idproducto = a.id
ORDER BY
    idventa, nombre
 ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_venta_one`(
  _idventa  int
)
BEGIN
SELECT
    v.id AS idventa,
    v.cliente AS cliente, 
    v.fecha AS fecha, 
    d.idproducto AS idproducto, 
    art.nombre AS nombre,
    art.precio AS precio, 
    d.cantidad AS cantidad,
    art.precio*d.cantidad AS Parcial,
    (
    SELECT     
        SUM((dt.cantidad * pt.precio)) AS TotalPagar
    FROM         
        detalleventa AS dt INNER JOIN
        articulo AS pt ON dt.idproducto = pt.id
    WHERE
        dt.idventa=v.id
    ) AS TotalPagar
FROM 
    venta AS v INNER JOIN
    detalleventa AS d ON v.id = d.idventa INNER JOIN
    articulo AS art ON d.idproducto = art.id
WHERE
    v.id=_idventa
ORDER BY
    nombre
;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_articulo`(INOUT `_id` INT, IN `_nombre` VARCHAR(100), IN `_descripcion` VARCHAR(100), IN `_precio` DECIMAL(18,2), IN `_categoria` INT)
BEGIN
-- Genera una especie de autoincremental pero yo controlo los codigos
-- que genero
SELECT IFNULL(MAX(id),0)+1 into _id FROM `articulo`;
INSERT INTO `articulo`(
   `id`,
   `nombre`,
   `descripcion`,
   `precio`,
   `categoria`
)
VALUES (
	_id,
	_nombre,
	_descripcion,
	_precio,
	_categoria
);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_cat_Articulo`(
   INOUT _id  int ,
   _nombre  varchar(100)
)
BEGIN
-- Genera una especie de autoincremental pero yo controlo los codigos
-- que genero
SELECT IFNULL(MAX(id),0)+1 into _id FROM `categoriaarticulo`;
INSERT INTO `categoriaarticulo`(
   `id`,
   `nombre`
)
VALUES (
   _id,
   _nombre
);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_detalleventa`(
   _idventa  int ,
   _idproducto  int ,
   _cantidad  decimal(18, 2)
)
BEGIN

INSERT INTO `detalleventa`(
   `idventa`,
   `idproducto`,
   `cantidad`
)
VALUES (
   _idventa,
   _idproducto,
   _cantidad
);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_estatus`(
   INOUT _id  int ,
   _estatus  varchar(100)
)
BEGIN
-- Genera una especie de autoincremental pero yo controlo los codigos
-- que genero
SELECT IFNULL(MAX(id),0)+1 into _id FROM `estatuscompra`;
INSERT INTO `estatuscompra`(
   `id`,
   `estatus`
)
VALUES (
   _id,
   _estatus
);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_rol`(
   INOUT _id  int ,
   _nombre  varchar(100)
)
BEGIN
-- Genera una especie de autoincremental pero yo controlo los codigos
-- que genero
SELECT IFNULL(MAX(id),0)+1 into _id FROM `roles`;
INSERT INTO `roles`(
   `id`,
   `nombre`
)
VALUES (
   _id,
   _nombre
);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_stock`(
   _idproducto  int ,
   _stock  int
)
BEGIN
-- Genera una especie de autoincremental pero yo controlo los codigos
-- que genero
INSERT INTO `stock`(
   `idproducto`,
   `stock`
)
VALUES (
   _idproducto,
   _stock
);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_user`(INOUT `_id` INT, IN `_nombre` VARCHAR(100), IN `_username` VARCHAR(100), IN `_apellidoP` VARCHAR(100), IN `_apellidoM` VARCHAR(100), IN `_edad` VARCHAR(100), IN `_password` VARCHAR(100), IN `_correo` VARCHAR(100), IN `_rol` INT)
BEGIN
-- Genera una especie de autoincremental pero yo controlo los codigos
-- que genero
SELECT IFNULL(MAX(id),0)+1 into _id FROM `usuario`;
INSERT INTO `usuario`(
   `id`,
   `nombre`,
   `username`,
   `apellidoP`,
   `apellidoM`,
	`edad`,
   `password`,
    `correo`,
   `rol`
)
VALUES (
   _id,
   _nombre,
   _username,
   _apellidoP,
   _apellidoM,
	_edad,
   _password,
    _correo,
   _rol
);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_venta`(
   INOUT _id  int ,
   _cliente  int 
)
BEGIN
-- Codigo autogenerado
SELECT IFNULL(MAX(id),0)+1 into _id FROM `venta`;
INSERT INTO `venta`(
   `id`,
   `cliente`,
   `fecha`
)
VALUES (
   _codigoVenta,
   _cliente,
   CURDATE()
);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_articulo`(IN `_id` INT, IN `_nombre` VARCHAR(100), IN `_descripcion` VARCHAR(100), IN `_precio` DECIMAL(18,2), IN `_categoria` INT, IN `_img` MEDIUMINT)
BEGIN

UPDATE articulo
SET 
	`nombre` = _nombre,
	`descripcion` = _descripcion,
	`precio` = _precio,
	`categoria` = _categoria,
	`imagen` = _img
WHERE
    `id` = _id
;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_cat_Articulo`(
   _id  int ,
   _nombre  varchar(100)
)
BEGIN

UPDATE categoriaarticulo
SET
   `nombre` = _nombre
WHERE
    `id` = _id
;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_estatus`(
   _id  int ,
   _estatus  varchar(100)
)
BEGIN

UPDATE estatuscompra
SET 
   `estatus` = _estatus
WHERE
    `id` = _id
;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_rol`(
   _id  int ,
   _nombre  varchar(100)
)
BEGIN

UPDATE roles
SET 
   `nombre` = _nombre
WHERE
    `id` = _id
;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_stock`(
   _idproducto  int ,
   _stock  int
)
BEGIN

UPDATE stock
SET 
   `stock` = _stock
WHERE
    `idproducto` = _idproducto
;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_user`(IN `_id` INT, IN `_nombre` VARCHAR(100), IN `_username` VARCHAR(100), IN `_apellidoP` VARCHAR(100), IN `_apellidoM` VARCHAR(100), IN `_password` VARCHAR(100), IN `_edad` INT, IN `_rol` INT, IN `_correo` VARCHAR(100), IN `_direccion` VARCHAR(100), IN `_ciudad` VARCHAR(100), IN `_cp` INT)
BEGIN

UPDATE usuario
SET 
   `nombre` = _nombre,
   `username` = _username,
   `apellidoP` = _apellidoP,
   `apellidoM` = _apellidoM,
   `password` = _password,
   `rol` = _rol,
	`edad`= _edad,
	`correo` = _correo,
 `direccion` = _direccion,
	`ciudad` = _ciudad,
	`cp` = _cp
WHERE
    `id` = _id
;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `articulo`
--

CREATE TABLE IF NOT EXISTS `articulo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `precio` varchar(45) NOT NULL,
  `categoria` int(11) DEFAULT NULL,
  `imagen` longblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `articulo_categoria_idx` (`categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `categoriaarticulo`
--

CREATE TABLE IF NOT EXISTS `categoriaarticulo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `categoriaarticulo`
--

INSERT INTO `categoriaarticulo` (`id`, `nombre`) VALUES
(1, 'DAMITAS'),
(2, 'HOMBRES'),
(3, 'NINIOS');

-- --------------------------------------------------------

--
-- Table structure for table `detalleventa`
--

CREATE TABLE IF NOT EXISTS `detalleventa` (
  `idventa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidad` decimal(18,2) NOT NULL,
  KEY `venta_producto_idx` (`idventa`),
  KEY `venta_producto_idx1` (`idproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `estatuscompra`
--

CREATE TABLE IF NOT EXISTS `estatuscompra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estatus` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `nombre`) VALUES
(1, 'Cliente'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `idproducto` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  UNIQUE KEY `idproducto_UNIQUE` (`idproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `apellidoP` varchar(45) DEFAULT NULL,
  `apellidoM` varchar(45) DEFAULT NULL,
  `edad` int(3) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `correo` varchar(45) NOT NULL,
  `rol` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_rol_idx` (`rol`),
  KEY `rol` (`rol`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `venta`
--

CREATE TABLE IF NOT EXISTS `venta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `venta_cliente_idx` (`cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `articulo_categoria` FOREIGN KEY (`categoria`) REFERENCES `categoriaarticulo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `venta_detalle` FOREIGN KEY (`idventa`) REFERENCES `venta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `venta_producto` FOREIGN KEY (`idproducto`) REFERENCES `articulo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_articulo` FOREIGN KEY (`idproducto`) REFERENCES `articulo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_rol` FOREIGN KEY (`rol`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_cliente` FOREIGN KEY (`cliente`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
