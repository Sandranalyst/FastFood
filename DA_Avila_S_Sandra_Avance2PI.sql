USE FastFoodDB2

-- Insertar datos en Categorias
INSERT INTO Categorias (Nombre) VALUES
('Comida Rápida'), ('Postres'), ('Bebidas'), ('Ensaladas'), ('Desayunos'),
('Cafetería'), ('Helados'), ('Comida Vegana'), ('Carnes'), ('Pizzas');

Select * from Categorias

-- Insertar datos en Productos
INSERT INTO Productos (Nombre, CategoriaID, Precio) VALUES
('Hamburguesa Deluxe', 1, 9.99), ('Cheeseburger', 1, 7.99), ('Pizza Margarita', 10, 11.99), ('Pizza Pepperoni', 10, 12.99), ('Helado de Chocolate', 7, 2.99),
('Helado de Vainilla', 7, 2.99), ('Ensalada César', 4, 5.99), ('Ensalada Griega', 4, 6.99), ('Pastel de Zanahoria', 2, 3.99), ('Brownie', 2, 2.99);

Select * from Productos

-- Insertar datos en Sucursales
INSERT INTO Sucursales (Nombre, Direccion) VALUES
('Sucursal Central', '1234 Main St'), ('Sucursal Norte', '5678 North St'), ('Sucursal Este', '9101 East St'), ('Sucursal Oeste', '1121 West St'), ('Sucursal Sur', '3141 South St'),
('Sucursal Playa', '1516 Beach St'), ('Sucursal Montaña', '1718 Mountain St'), ('Sucursal Valle', '1920 Valley St'), ('Sucursal Lago', '2122 Lake St'), ('Sucursal Bosque', '2324 Forest St');

Select * from Sucursales

-- Insertar datos en Empleados
INSERT INTO Empleados (Nombre, Posicion, Departamento, SucursalID, Rol) VALUES
('John Doe', 'Gerente', 'Administración', 1, 'Vendedor'), ('Jane Smith', 'Subgerente', 'Ventas', 1, 'Vendedor'), ('Bill Jones', 'Cajero', 'Ventas', 1, 'Vendedor'), ('Alice Johnson', 'Cocinero', 'Cocina', 1, 'Vendedor'), ('Tom Brown', 'Barista', 'Cafetería', 1, 'Vendedor'),
('Emma Davis', 'Repartidor', 'Logística', 1, 'Mensajero'), ('Lucas Miller', 'Atención al Cliente', 'Servicio', 1, 'Vendedor'), ('Olivia García', 'Encargado de Turno', 'Administración', 1, 'Vendedor'), ('Ethan Martinez', 'Mesero', 'Restaurante', 1, 'Vendedor'), ('Sophia Rodriguez', 'Auxiliar de Limpieza', 'Mantenimiento', 1, 'Vendedor');

Select * from Empleados
use FastFoodDB2

-- Insertar datos en Clientes
INSERT INTO Clientes (Nombre, Direccion) VALUES
('Cliente Uno', '1000 A Street'), ('Cliente Dos', '1001 B Street'), ('Cliente Tres', '1002 C Street'), ('Cliente Cuatro', '1003 D Street'), ('Cliente Cinco', '1004 E Street'),
('Cliente Seis', '1005 F Street'), ('Cliente Siete', '1006 G Street'), ('Cliente Ocho', '1007 H Street'), ('Cliente Nueve', '1008 I Street'), ('Cliente Diez', '1009 J Street');

Select * from Clientes

-- Insertar datos en OrigenesOrden
INSERT INTO OrigenesOrden (Descripcion) VALUES
('En línea'), ('Presencial'), ('Teléfono'), ('Drive Thru'), ('App Móvil'),
('Redes Sociales'), ('Correo Electrónico'), ('Publicidad'), ('Recomendación'), ('Evento');

Select * from OrigenesOrden

-- Insertar datos en TiposPago
INSERT INTO TiposPago (Descripcion) VALUES
('Efectivo'), ('Tarjeta de Crédito'), ('Tarjeta de Débito'), ('PayPal'), ('Transferencia Bancaria'),
('Criptomonedas'), ('Cheque'), ('Vale de Comida'), ('Cupón de Descuento'), ('Pago Móvil');

Select * from TiposPago

-- Insertar datos en Mensajeros
INSERT INTO Mensajeros (Nombre, EsExterno) VALUES
('Mensajero Uno', 0), ('Mensajero Dos', 1), ('Mensajero Tres', 0), ('Mensajero Cuatro', 1), ('Mensajero Cinco', 0),
('Mensajero Seis', 1), ('Mensajero Siete', 0), ('Mensajero Ocho', 1), ('Mensajero Nueve', 0), ('Mensajero Diez', 1);

Select * from Mensajeros

-- Insertar datos en Ordenes
INSERT INTO Ordenes (ClienteID, EmpleadoID, SucursalID, MensajeroID, TipoPagoID, OrigenID, HorarioVenta, TotalCompra, KilometrosRecorrer, FechaDespacho, FechaEntrega, FechaOrdenTomada, FechaOrdenLista) VALUES
(1, 1, 1, 1, 1, 1, 'Mañana', 1053.51, 5.5, '2023-01-10 08:30:00', '2023-01-10 09:00:00', '2023-01-10 08:00:00', '2023-01-10 08:15:00'),
(2, 2, 2, 2, 2, 2, 'Tarde', 1075.00, 10.0, '2023-02-15 14:30:00', '2023-02-15 15:00:00', '2023-02-15 13:30:00', '2023-02-15 14:00:00'),
(3, 3, 3, 3, 3, 3, 'Noche', 920.00, 2.0, '2023-03-20 19:30:00', '2023-03-20 20:00:00', '2023-03-20 19:00:00', '2023-03-20 19:15:00'),
(4, 4, 4, 4, 4, 4, 'Mañana', 930.00, 0.5, '2023-04-25 09:30:00', '2023-04-25 10:00:00', '2023-04-25 09:00:00', '2023-04-25 09:15:00'),
(5, 5, 5, 5, 5, 5, 'Tarde', 955.00, 8.0, '2023-05-30 15:30:00', '2023-05-30 16:00:00', '2023-05-30 15:00:00', '2023-05-30 15:15:00'),
(6, 6, 6, 6, 6, 1, 'Noche', 945.00, 12.5, '2023-06-05 20:30:00', '2023-06-05 21:00:00', '2023-06-05 20:00:00', '2023-06-05 20:15:00'),
(7, 7, 7, 7, 7, 2, 'Mañana', 1065.00, 7.5, '2023-07-10 08:30:00', '2023-07-10 09:00:00', '2023-07-10 08:00:00', '2023-07-10 08:15:00'),
(8, 8, 8, 8, 8, 3, 'Tarde', 1085.00, 9.5, '2023-08-15 14:30:00', '2023-08-15 15:00:00', '2023-08-15 14:00:00', '2023-08-15 14:15:00'),
(9, 9, 9, 9, 9, 4, 'Noche', 1095.00, 3.0, '2023-09-20 19:30:00', '2023-09-20 20:00:00', '2023-09-20 19:00:00', '2023-09-20 19:15:00'),
(10, 10, 10, 10, 10, 5, 'Mañana', 900.00, 15.0, '2023-10-25 09:30:00', '2023-10-25 10:00:00', '2023-10-25 09:00:00', '2023-10-25 09:15:00');

Select * from Ordenes

USE FastFoodDB2

-- Insertar datos en DetalleOrdenes
INSERT INTO DetallesOrdenes (OrdenID, ProductoID, Cantidad, Precio) VALUES
(1, 1, 3, 23.44),
(1, 2, 5, 45.14),
(1, 3, 4, 46.37),
(1, 4, 4, 42.34),
(1, 5, 1, 18.25),
(1, 6, 4, 20.08),
(1, 7, 2, 13.31),
(1, 8, 2, 20.96),
(1, 9, 4, 30.13),
(1, 10, 3, 38.34);

Select * from DetallesOrdenes

--UPDATE Y DELETE

--ACTUALIZACIONES DE EJEMPLO (UPDATE) UPDATE actualiza todos los registros de una tabla y se una con SET que especifica los campos a cambiar.

-- Aumentar el precio de todos los productos en la categoría 1 -- si fuera porcentaje seria Precio= Preci+0.1*Precio
UPDATE Productos 
SET Precio = Precio + 1
WHERE CategoriaID = 1;

SELECT * from Productos

-- Cambiar la posición de todos los empleados del departamento 'Cocina' a 'Chef'
UPDATE Empleados 
SET Posicion = 'Chef'
WHERE Departamento = 'Cocina';

SELECT * from Empleados

-- Actualizar la dirección de una sucursal específica
UPDATE Sucursales 
SET Direccion = '1234 New Address St'
WHERE SucursalID = 1;

SELECT * from Sucursales


--ELIMINACIONES DE EJEMPLO (DELETE)

/*1. Eliminar una orden específica
Imaginemos que quieres eliminar una orden específica, 
por ejemplo, la orden con OrdenID = 10. 
Esta operación eliminaría la orden junto con sus detalles asociados 
(deberías asegurarte de eliminar o actualizar cualquier dato relacionado 
para mantener la integridad referencial).*/

DELETE FROM DetallesOrdenes WHERE OrdenID = 10                 --Esta es la que se ejecuta     --dice que no se afecta ninguna columna porque esta orden  no existe  

DELETE FROM Ordenes WHERE OrdenID = 10; 

SELECT * from Ordenes

/*2. Eliminar todos los productos de una categoría específica
Si decides dejar de ofrecer todos los "Postres" 
(supongamos que Categorias.CategoriaID = 2 para "Postres"), 
podrías querer eliminar todos los productos asociados a esa categoría.*/

DELETE FROM Productos WHERE CategoriaID = 2;



--Antes de ejecutar este comando, deberías considerar si hay órdenes que incluyen estos productos y decidir cómo manejar esas referencias.

--Cuando quiero borrar algo asociado a otra tabla debo desactivar la FK con el comando NOCHECK CONSTRAINT y volverlo a activar con CHECK CONSTRAINT
--Asi






--Desactivar la FK
ALTER TABLE DetallesOrdenes 
NOCHECK CONSTRAINT FK__DetallesO__Produ__6383C8BA;  --Esto ultimo es el error que me arroja SQL al ingresar

DELETE from Productos WHERE CategoriaID = 2

--Activar la FK
ALTER TABLE DetallesOrdenes 
CHECK CONSTRAINT FK__DetallesO__Produ__6383C8BA;

SELECT * from Productos; --Ahora no aparece ningun producto asociado a la categoria 2

/*3. Eliminar empleados de una sucursal que cerró
Si una sucursal cierra, por ejemplo, 
SucursalID = 10 (Sucursal Bosque), 
podrías necesitar eliminar a todos los empleados asociados con esa sucursal.*/

DELETE FROM Empleados WHERE SucursalID = 10;  --aca nos dice que cero filas afectadas porque no tenemos sucursal 10

select * from Empleados

-- Solucion Homwork

/*1. Cual es la cantidad total de registros unicos en la tabla ordenes*/
--primero se debe seleccionar todo lo que tenga la tabla, usar TOP para mirar los primeros registros cuando no sabemos el tama;o de la tabla
--Seleccionar OrdenID porque es la PK, porque son los valores que no se repiten
--Pero como me piden la cantidad utilizo COUNT
--Utilizo un alias AS para que el conteo que me regresa tenga un nombre = Cantidad_Registros

USE FastFoodDB2

SELECT COUNT(OrdenID) AS Cantidad_Registros
FROM ORDENES;

/*2. Cuantos empleados existen en cada departamento */
--Hay que hacer un conteo y agrupar por departamento
--Debo hacer un conteo de empleadoID porque es lo que diferencia a cada empleado
--Le coloco un alias = 'Conteo Empleados'
--Usar GROUP BY, Cuando se utiliza una funcion de agregacion = count , con una categoria= Departamnto asociada a ese conteo
-- --GROUP BY divide el conteo por departamentos
--Uso ORDER BY para organizar los empleados y DESC para que queden en forma descendente

SELECT Departamento, COUNT(EmpleadoID) 'Conteo Empleados' -- Aqui no se usa AS para el alias si no que se deja un espacio, pero se deben usar las comillas
FROM Empleados
GROUP BY Departamento
ORDER BY COUNT(EmpleadoID) DESC;

/*3.Cuantos productos hay por codigo de categoria*/
-- Primero mirar la tabla y  los nombres de las categorias con SELECT* FROM Productos

SELECT CategoriaID, COUNT (ProductoID) Conteo_Producto
FROM Productos          -- Hasta aqui solo me devuelve el conteo de los productos
GROUP BY CategoriaID      --Aqui agrupa por codigo de categoria
ORDER BY Conteo_Producto DESC;     --Organiza conteo producto de manera descendente


/* 4. Cuantos clientes se han impotado a la tabla clientes*/
-- COUNT(1) Se utiliza para contar todos los registros ingresados, este pone un 1 a cada registro y lo cuenta

--Para tablas muy grandes
SELECT COUNT(1) Conteo   --se le da alias Conteo
FROM Clientes;

SELECT COUNT(ClienteID) Conteo   --utilizamos clienteID porque es una tabla peque;a
FROM Clientes;

/*5. Cuales son las sucursales con un promedio de facturacion/ingresos superior a 1000/00 y que minimizan sus costos en base
al promedio de kilometros recorridos de todas sus entregas gestionadas
Para un mejor relevamiento, ordene el listado por el promedio de km recorridos .  */

--Seleccionamos la tabla ordenes para mirar las columnas
--Primero hacer un promedio de la columna totalCompra 
--Utilizo la funcion CAST, para convertir los valores del promedio de total compra en los decimales del tama;o maximo 10 y dos decimales
--CAST quita los decimales que le digamos = CAST(AVG(TotalCompra) AS DECIMAL(10,2)) Promedio_Facturacio
--ORDER BY Promedio_Facturacion DESC; 
/*Usamos HAVING como filtro de una funcion de agregacion, para resolver que sea superior a 1000, para filtrar el promedio total compra
El HAVY lo usamos sobre una columna calculada, en este caso no sirve el WHERE  */
--

SELECT SucursalID,                                             -- Para poder segmentar por sucursales
AVG(TotalCompra) Promedio_Facturacio,                           --Promedio del total de facturacion
AVG(kilometrosRecorrer) Promedio_Kilometros						--Hallo el promedio de km recorridos y asigno alias
FROM Ordenes
GROUP BY SucursalID                                            --Por usar la funcion de agregacion AVG
HAVING AVG(TotalCompra) > 1000                                 --Para filtrar los valores mayores a 1000 en una tabla calculada                       
ORDER BY Promedio_Kilometros;

--limpiando los decimales con CAST quedaria}
SELECT SucursalID,                                                                     -- Para poder segmentar por sucursales
CAST(AVG(TotalCompra) AS DECIMAL(10,2)) Promedio_Facturacio,                           --Promedio del total de facturacion
CAST(AVG(kilometrosRecorrer) AS DECIMAL(10,2)) Promedio_Kilometros						--Hallo el promedio de km recorridos y asigno alias
FROM Ordenes
GROUP BY SucursalID                                                                     --Por usar la funcion de agregacion AVG
HAVING AVG(TotalCompra) > 1000                                                          --Para filtrar los valores mayores a 1000 en una tabla calculada                       
ORDER BY Promedio_Kilometros;



