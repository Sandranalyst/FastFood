use FastFoodDB2

/*Listar todos los productos y sus categorías

Pregunta 1: ¿Cómo puedo obtener una lista de todos los productos junto con sus categorías?     */

-- Escoger primero las tablas a trabajar: Productos, Categorias
-- Seleccionar las dos tablas al tiempo para mirar que contienen y la columna en comun
--Para traer todos los productos con sus categorias utilizo INNER JOIN. En el Inner no importa el orden

SELECT*FROM Productos;
SELECT*FROM Categorias;

SELECT P.Nombre Producto, C.Nombre Categoria                    --Elijo las columnas nombre, porque me preguntan por los productos y categorias
FROM Productos P												--Manejar Alias
INNER JOIN Categorias C ON (P.CategoriaID = C.CategoriaID);		--Hago INNER JOIN con la tabla Categorias
                                                                -- ON Para indicarle el campo o columna que relaciona las dos tablas: CategoriaID



/*Obtener empleados y su sucursal asignada

Pregunta 2: ¿Cómo puedo saber a qué sucursal está asignado cada empleado?  */
--Usamos la tabla empleado como principal porque necesito saber el empleado con que sucursal se relaciona
--Primero mirar el LEFT JOIN al traer todas las columnas y miramos si hay nulos y por ultimo escogeos as coumnas que necesitamos
--Se puede tambien utilizar INNER JOIN porque miramos que  no hay nulos

SELECT * FROM Empleados;
SELECT * FROM Sucursales;

SELECT E.Nombre Empleado, S.Nombre Sucursal				--Columnas escogidas con sus alias
FROM Empleados E
INNER JOIN Sucursales S ON (E.SucursalID = S.SucursalID)


/* Identificar productos sin categoría asignada

Pregunta 3: ¿Existen productos que no tienen una categoría asignada? */
-- Productos es la principal, porque quiero saber que productos no tienen asociada a categoria
-- Se relacionan con el Campo CategoriaID
SELECT * FROM Productos;
SELECT * FROM Categorias;


SELECT*
FROM Productos P
LEFT JOIN Categorias C ON (P.CategoriaID = C.CategoriaID)
WHERE C.CategoriaID IS NULL;                                   -- Se utiliza IS NULL para saber si hay un producto que no tenga una categoria asignada
                                                               -- El resultado es vacio, tabla vacia porque todos los productos tienen una categoria


/* Detalle completo de órdenes

Pregunta 4: ¿Cómo puedo obtener un detalle completo de las órdenes, incluyendo el Nombre del cliente, 
Nombre del empleado que tomó la orden, y Nombre del mensajero que la entregó? */

-- Trabajamos con las tablas; Ordenes, cliente, empleado y mensajero
-- Utilizar Left Join, porque nos va a traer lo que haya relacionado y lo que no haya relacionado como Null, 
-- para rastreas ordenes que tienen el nombre del cliente pero no del empleado
-- Se corre de a un Join y vamos verificanco


SELECT O.OrdenID, C.Nombre Cliente, E.Nombre Empleado, M.Nombre Mensajero   -- Escogemos campos  y otorgamos alias
FROM ORDENES O
LEFT JOIN Clientes C ON (O.ClienteID = C.ClienteID)							-- Ordenes unido con Clientes a traves de  ClienteID
LEFT JOIN Empleados E ON (O.EmpleadoID = E.EmpleadoID)
LEFT JOIN Mensajeros M ON (O.MensajeroID = M.MensajeroID)


/* Productos vendidos por sucursal

Pregunta 5: ¿Cuántos artículos correspondientes a cada Categoría de Productos 
se han vendido en cada sucursal?  */

-- Escoger primero la columna Sucursales, porque debo mirar la consulta desglosada por sucursales
--Tablas a utilizar Ordenes, DetallesOrdenes para contar los productos, alli esta la Cantidad
--La suma de la cantidad de productos tengo que desglosar por sucursal, columna Sucursales

SELECT S.Nombre Sucursal, C.Nombre CategoriaProducto,SUM(DO.Cantidad) ProductosVendidos
FROM ORDENES O
INNER JOIN DetallesOrdenes DO ON (O.OrdenID = DO.OrdenID)
INNER JOIN Sucursales S ON (O.SucursalID = S.SucursalID)				--Relacionamos Ordenes con Sucursales
INNER JOIN Productos P ON (DO.ProductoID = P.ProductoID)
INNER JOIN Categorias C ON (P.CategoriaID = C.CategoriaID)				--Productos con categorias
GROUP BY S.Nombre, C.Nombre
ORDER BY ProductosVendidos DESC;

