
/* referencias*/
/*creando tabla primary*/
create table persona (
id_persona int not null auto_increment,
nombres varchar(50) not null,
apellidos varchar(50) not null,
direccion varchar(120),
email varchar(120),
primary key(id_persona)
);
/*creando tabla segundaria*/
create table actividades (
id_actividad int not null auto_increment,
id_persona int not null,
fecha date,
hora time,
descripcion varchar(200),
primary key(id_actividad)
);
/*add primary key a tabla existente donde `CÓDIGO CLIENTE` es la col de la llave 
primaria con auto incremento*/
ALTER TABLE `PEDIDOS` CHANGE `NÚMERO DE PEDIDO` `NÚMERO DE PEDIDO` INT(4) NOT NULL AUTO_INCREMENT;
/*add primary key a tabla existente donde `CÓDIGO CLIENTE` es la col de la llave 
primaria*/
ALTER TABLE CLIENTES2 add PRIMARY key (`CÓDIGO CLIENTE`)
/* add  FOREIGN KEY a una tabla para que haga ref a la tabla clientes2*/
ALTER TABLE PEDIDOS add FOREIGN KEY(`CÓDIGO CLIENTE`) 
REFERENCES CLIENTES2(`CÓDIGO CLIENTE`);
/*borrar registro de una tabla*/
DELETE FROM PEDIDOS WHERE `NÚMERO DE PEDIDO`= NULl;
/*borrar columna*/
ALTER TABLE PEDIDOS DROP G;
/*se leccionamos todo los campos donde `NÚMERO DE PEDIDO` is null
podemos cambiar por not null seguns ea el caso
 */
SELECT * FROM `PEDIDOS` WHERE `NÚMERO DE PEDIDO` is null

/* cambiar propiedades de llave doranea  cuidado con el borrado en cascada
porque borrara la inf de la tabla primaria*/

ALTER TABLE `PEDIDOS` DROP FOREIGN KEY `PEDIDOS_ibfk_1`; 
ALTER TABLE `PEDIDOS` ADD CONSTRAINT `PEDIDOS_ibfk_1` 
FOREIGN KEY (`CÓDIGO CLIENTE`) REFERENCES `CLIENTES2`(`CÓDIGO CLIENTE`)
 ON DELETE CASCADE ON UPDATE RESTRICT;
 /*otra forma de acerlo*/
 ALTER TABLE `PEDIDOS` DROP FOREIGN KEY `PEDIDOS_ibfk_1`; 
 ALTER TABLE `PEDIDOS` ADD CONSTRAINT `PEDIDOS_ibfk_1` FOREIGN KEY
  (`CÓDIGO CLIENTE`) REFERENCES `CLIENTES2`(`CÓDIGO CLIENTE`) 
  ON DELETE CASCADE ON UPDATE CASCADE;
 /* crear llave foranea*/
 ALTER TABLE `PEDIDOS` ADD FOREIGN KEY (`ENVIADO`) 
 REFERENCES `CLIENTES2`(`CÓDIGO CLIENTE`) ON DELETE RESTRICT ON UPDATE RESTRICT;
 /*en caso de agregarle nombre a nuestra restrincion*/
 ALTER TABLE `PEDIDOS` ADD CONSTRAINT `fjdhjhjhgh` 
 FOREIGN KEY (`ENVIADO`) REFERENCES `CLIENTES2`(`CÓDIGO CLIENTE`) 
 ON DELETE RESTRICT ON UPDATE RESTRICT;