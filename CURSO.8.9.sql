
/*Consultas Multitabla II Inner Join
nos va a devolver las informaciones comunes 
o relacionadas que existan en la tablas

left join devuelve los mismo que inner  pero sumado a todos los registros de la tabla 
a la izquierda de la consulta

right join hace lo contrario de left join
*/
/*Consultas Multitabla III. Left Join y Right Join*/
/* REALIZANDO UN INNER JOIN NOTA QUE PARA ESPECIFICAR RIGISTROS COMUNES ENTRE DOS TABLAS 
SE COLOCA UN PUNTO Y EL NOMBRE DE LA TABLA
EN ESTE CASO TENDREMOS UN ARROZ CON MANGO DE INF */
SELECT CLIENTES2.`CÓDIGO CLIENTE`, POBLACIÓN, DIRECCIÓN, 
`NÚMERO DE PEDIDO`, `PEDIDOS`.`CÓDIGO CLIENTE`, `FORMA DE PAGO` 
FROM CLIENTES2 INNER JOIN
PEDIDOS
/* CON ON ESPECIFICAMOS EL CAMPO EN COMUN ENTRE LAS DOS TABLAS PARA OBTIMIZAR LA BUSQUEDA

*/
SELECT CLIENTES2.`CÓDIGO CLIENTE`, POBLACIÓN, DIRECCIÓN, 
`NÚMERO DE PEDIDO`, `PEDIDOS`.`CÓDIGO CLIENTE`, `FORMA DE PAGO`
 FROM CLIENTES2 INNER JOIN PEDIDOS 
 ON `CLIENTES2`.`CÓDIGO CLIENTE`=`PEDIDOS`.`CÓDIGO CLIENTE`
 /* USANDO WHERE PODEMOS TENER AUN MAS ESPECIFICADA EL CRITERIO DE NUESTRA BUSQUEDA*/
SELECT CLIENTES2.`CÓDIGO CLIENTE`, POBLACIÓN, DIRECCIÓN, `NÚMERO DE PEDIDO`,
`PEDIDOS`.`CÓDIGO CLIENTE`, `FORMA DE PAGO` FROM CLIENTES2 INNER JOIN
PEDIDOS ON `CLIENTES2`.`CÓDIGO CLIENTE`=`PEDIDOS`.`CÓDIGO CLIENTE`
 WHERE POBLACIÓN='MADRID'
/*SI USAMOS LEFT JOIN PODEMOS VER LOS CLIENTES QUE NO HAN HECHO PEDIDOS Y LOS QUE SI */
SELECT CLIENTES2.`CÓDIGO CLIENTE`, POBLACIÓN, DIRECCIÓN, `NÚMERO DE PEDIDO`, 
`PEDIDOS`.`CÓDIGO CLIENTE`, `FORMA DE PAGO` FROM CLIENTES2 LEFT JOIN
PEDIDOS ON `CLIENTES2`.`CÓDIGO CLIENTE`=`PEDIDOS`.`CÓDIGO CLIENTE` 
WHERE POBLACIÓN='MADRID'
/*EN ESTE CASO PODEMOS VIER SOLO LOS QUE NO HAN HECHO PEDIDO*/
SELECT CLIENTES2.`CÓDIGO CLIENTE`, POBLACIÓN, DIRECCIÓN, `NÚMERO DE PEDIDO`, 
`PEDIDOS`.`CÓDIGO CLIENTE`, `FORMA DE PAGO` FROM CLIENTES2 
LEFT JOIN PEDIDOS ON `CLIENTES2`.`CÓDIGO CLIENTE`=`PEDIDOS`.`CÓDIGO CLIENTE` 
WHERE POBLACIÓN='MADRID' AND `PEDIDOS`.`CÓDIGO CLIENTE` IS NULL