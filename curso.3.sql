SELECT NOMBREARTÍCULO, SECCIÓN, PRECIO from PRODUCTOS WHERE SECCIÓN="CERÁMICA";
/* esta linea no devuelve nada porque no hay ningun articulo que sea de dos secciones a la ves*/
SELECT NOMBREARTÍCULO, SECCIÓN, PRECIO from PRODUCTOS WHERE SECCIÓN="CERÁMICA" AND SECCIÓN="DEPORTES";
/* esta linea si devuelve  comparaciones de la seccion deporte y seramica
puesto el comando  lo OR permite*/
SELECT NOMBREARTÍCULO, SECCIÓN, PRECIO from PRODUCTOS WHERE SECCIÓN="CERÁMICA" OR SECCIÓN="DEPORTES";
/*sin enbargo en este caso si es correcto usar el operador AND puesto 
este permite buscar articulos que coincidan en dos columnas */
SELECT * from PRODUCTOS WHERE  SECCIÓN="DEPORTES" AND PAÍSDEORIGEN="USA";
/* nota que en los caracteres INT se escriben sin comillas
cuando se importa una tabla hay que notar si la columna contiene el tipo de datos con
el que trabajaremos puesto por defecto los toma como varchar
*/
SELECT * from PRODUCTOS WHERE  PRECIO > 200;

/*asi se usa en comando BETWEEN*/
SELECT * FROM PRODUCTOS WHERE FECHA BETWEEN '2000-03-01' AND '2000-04-30';
/*esta linea tiene el mismo resultado que la anterior*/
SELECT * FROM PRODUCTOS WHERE FECHA >= '2000-03-01' AND FECHA <='2000-04-30';

