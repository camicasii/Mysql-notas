/* Cláusula Order By*/
/* Ordenar consulta por defecto se hace A-Z, MAYOR a MENOR a menos que indiquemos lo contrario*/
SELECT * FROM PRODUCTOS WHERE SECCIÓN="DEPORTES" OR SECCIÓN="CERÁMICA" ORDER BY SECCIÓN;
/* en este caso ordemos de forma inverza*/
SELECT * FROM PRODUCTOS WHERE SECCIÓN="DEPORTES" OR SECCIÓN="CERÁMICA" ORDER BY SECCIÓN  DESC;
/*ordenamos por precio*/
SELECT * FROM PRODUCTOS WHERE SECCIÓN="DEPORTES" OR SECCIÓN="CERÁMICA" ORDER BY PRECIO;
/*en este caso ordemos primero por seccion y luego por el precio*/
SELECT * FROM PRODUCTOS WHERE SECCIÓN="DEPORTES" 
OR SECCIÓN="CERÁMICA" ORDER BY SECCIÓN, PRECIO;
/*en este caso ordemos por seccion y luego por precio desendente*/
SELECT * FROM PRODUCTOS WHERE SECCIÓN="DEPORTES" OR 
SECCIÓN="CERÁMICA" ORDER BY SECCIÓN, PRECIO DESC;
/* sentencia igual a la anterior*/
SELECT * FROM PRODUCTOS WHERE SECCIÓN="DEPORTES" OR
 SECCIÓN="CERÁMICA" ORDER BY SECCIÓN ASC, PRECIO DESC;
 /* ordemos por seccion, luego por pais de origen y si coinciden por precio*/
 SELECT * FROM PRODUCTOS WHERE SECCIÓN="DEPORTES" OR
  SECCIÓN="CERÁMICA" ORDER BY SECCIÓN , PAÍSDEORIGEN, PRECIO;