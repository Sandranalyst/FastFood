USE FastFoodDB2

-- 1.Pregunta: Cual es el total de ventas (Total compras) a nivel grobal

--Escoger siemre primero la tabla con que vamos a trabajar
-- El total de algo relacionarlo con SUMA, la cantidad de algo siempre se relaciona con COUNT

SELECT SUM(TotalCompra) Total_Ventas
FROM ORDENES;

-- 2.Pregunta: Cual es el precio promedio de productos dentro de cada categoria

--Primero ver la tabla productos
-- La categoria que coloco en el SELECT debo colocarlo en el GROUP BY
-- Total relacionarlo con SUMA Y cantidad con COUNT
-- AVG(precio) para hallar el precio promedio
-- Al final del SELECT No debe ir coma

SELECT	CategoriaID, 											--Para desglosar el precio por categoria
	CAST(AVG(Precio) AS DECIMAL(10,2)) 'Precio promedio'		-- Se usa la funcion CAST, funcion a Castear es precio para y convertirla a decimal con el parametro (10.2)
FROM Productos
GROUP BY CategoriaID
ORDER BY 'Precio promedio' DESC;

-- 3. Preunta: Cual es el valor de la orden minima y maxima por cada sucursal

-- Trabajar en la tabla ordenes, sucursalID


SELECT SucursalID,
	MIN(TotalCompra) 'Minimo',
	MAX(TotalCompra) 'Maximo'							-- se usa'' para colocar algun caracter especial
FROM ORDENES											-- Tabla ordenes porque se relaciona con el total de compra
GROUP BY SucursalID;

USE FastFoodDB2

--4. Pregunta: Cual es el mayor numero de kilometros recorridos para una entrega

-- Pide el maximo de la columna kilometros recorrer
-- Top 1, para que solo me devuelva la primera

SELECT TOP 1 OrdenID, SucursalID, MAX(kilometrosRecorrer) Maximo      -- Se puede agrupar por orden y sucursal para saber de que oden y sucursal es esa entrega
FROM ORDENES
GROUP BY OrdenID, SucursalID
ORDER BY Maximo DESC;										        	--Para que quede el mayor arriba

-- 5. Pregunta: Cual es la cantidad promedio de productos por orden

-- Se escoje la tabla DetallesOrdenes porque contiene la columna productos

USE FastFoodDB2

SELECT OrdenID,
	AVG(Cantidad) Promedio_Productos
FROM DetallesOrdenes
GROUP BY OrdenID;

-- 6. Pregunta: Como se distribuye la facturacion Total del Negocio de acuerdo a los metodos de pago

-- Tabla Ordenes contiene el Total de compras esa es la facturacion
-- Pero me piden desglosarlo por metodos de pago, es decir TipoPagoID

SELECT TipoPagoID,                           
	SUM(TotalCompra) Total_Facturacion	      -- SUM para encontrar la facturacion total
FROM ORDENES
GROUP BY TipoPagoID
ORDER BY Total_Facturacion DESC;

-- 7. Pregunta: Sucursal con la venta promedio mas alta

--Select por el campo que deseo agrupar, es decir SucursalID
--El segundo campo a seleccionar es TotalCompra, es decir la venta
--El Order by  de el alias
--Top 1 porque preguntan la venta mas alta
-- Se castea para eliminar decimales con CAST

SELECT TOP 1 SucursalID,
	CAST(AVG(TotalCompra)AS DECIMAL(10,2)) Promedio_Venta
FROM ORDENES
GROUP BY sucursalID
ORDER BY Promedio_Venta DESC;



-- 8. Cuales son las sucursales que han generado ventas totales por encima de $1.000

-- Se escoje Ordenes por se la tabla transaccional, las demas son atributos
-- Para calcular la venta por encima de 1.000 , se necesita aplicar un filtro sobre Total_Ventas, 
-- Se debe usar HAVIG, porque Total_Ventas no es una columna original de la tabla ordenes, sino que es una columa calculada, debe ir debajo del Group by
-- El WHERE No se usa para columna calculadas, el alias solo funciona en el WHERE


SELECT SucursalID,
	SUM(TotalCompra) Total_Venta
FROM ORDENES
GROUP BY SucursalID
HAVING SUM(TotalCompra) > 1000       --Para el Having no funcina el alias, sino el calculo se SUM
ORDER BY SUM(TotalCompra) DESC;             -- Preferible usar el calculo que el alias

-- 9. Pregunta: Como se comparan las ventas promedio antes y despues del 1 de julio de 2023

-- Tomar fecha entrega
-- Se debe castear

SELECT CAST(AVG(TotalCompra) AS DECIMAL(10,2)) Venta_Promedio
FROM ORDENES
WHERE FechaEntrega > '2023-07-01';               -- la fecha escribirla en el orden a;o, mes, dia y entre comillas

/*10. Pregunta: Durante que horario del dia (ma;ana, tarde, noche) se registra la mayor cantidad de ventas,
 cual es el ingreso promedio de estas ventas y
 cual ha sido el importe maximo alcanzado  por una orden en dicha jornada*/

 -- Priero elegir columnas HorarioVenta, TotalCompra

SELECT HorarioVenta,
	COUNT(*)Cantidad_Ventas,							     --Para hallar la mayor cantidad de ventas
	CAST(AVG(TotalCompra) AS DECIMAL(10,2)) Venta_promedio,  --Para hallar ingreso promedio de ventas y lo casteamos
	MAX(TotalCompra) Venta_maxima                            -- Hallar el importe maximo o venta maxima
FROM ORDENES                                                 --De la tabla transaccional
GROUP BY HorarioVenta
ORDER BY HorarioVenta DESC;