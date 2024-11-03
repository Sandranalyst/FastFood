**Resumen del Proyecto de Base de Datos para "Fast Food, Rápido y Sabroso"**

Fast Food, Rápido y Sabroso es una empresa de comidas rápidas que, tras un inicio exitoso, ha logrado abrir varias sucursales. Sin embargo, enfrenta el reto de manejar información dispersa en múltiples archivos y documentos manuales. Para abordar esta situación, construimos una base de datos que centraliza los datos existentes, utilizando SQL Server y aplicando el Lenguaje de Manipulación de Datos (DML) y el Lenguaje de Definición de Datos (DDL). Este proyecto busca optimizar la base de datos para análisis y garantizar su viabilidad a largo plazo.

1. **Construcción de la Base de Datos**:
   - Comenzamos estructurando la base de datos desde cero, definiendo su esquema y utilizando comandos DDL como `CREATE`, `ALTER` y `TRUNCATE` para crear las tablas y objetos necesarios. Esto incluyó la normalización de los datos para eliminar redundancias y mejorar la integridad.
   - La organización del esquema de la base de datos, junto con el uso de claves primarias y foráneas, permitió estructurar las relaciones entre tablas y asegurar la consistencia de la información.
   
2. **Gestión de Datos**:
   - Con el DML, realizamos operaciones básicas como `INSERT`, `UPDATE` y `DELETE` para poblar y manipular los datos en las tablas, implementando además consultas de agregación (`GROUP BY`, `SUM`, `COUNT`, `AVG`, `MAX`, `MIN`) para responder preguntas específicas sobre los datos.
   - Para mejorar la precisión, implementamos condiciones de filtrado avanzado (`HAVING`), y en consultas complejas, combinamos varias tablas mediante `JOINs`, especialmente `INNER JOIN` y `LEFT JOIN`, para obtener información consolidada.

3. **Primer Avance**:
   - Se construyó la base de datos con especificaciones para un crecimiento controlado y una nomenclatura estandarizada (CamelCase) para una mejor organización.
   - Con DDL, creamos las tablas y relaciones clave, asegurándonos de seleccionar los tipos de datos correctos (como `INT`, `VARCHAR`, `DATETIME`) y especificando columnas como `NOT NULL` para evitar valores vacíos.

4. **Segundo Avance**:
   - Poblamos las tablas y ejecutamos consultas básicas. Las operaciones incluyeron:
     - `INSERT` para añadir datos.
     - `UPDATE` para modificar registros, como el ajuste de precios y direcciones.
     - `DELETE` para remover registros específicos.
   - También implementamos restricciones de integridad de datos (`FOREIGN KEY`) y ejecutamos consultas agregadas con `GROUP BY` para obtener resúmenes, como el número de empleados por departamento.

5. **Tercer Avance**:
   - Ejecutamos consultas avanzadas para obtener insights detallados sobre las ventas y el comportamiento de los clientes. Utilizamos `GROUP BY`, `SUM`, `AVG`, `COUNT`, `TOP`, `MIN`, y `MAX` para preguntas como el total de ventas, el promedio de precios y el análisis de facturación.
   - También aplicamos `CAST` para mejorar la precisión en los precios y realizamos análisis de tendencias de ventas por períodos de tiempo específicos.

6. **Cuarto Avance**:
   - En este avance, trabajamos con múltiples tablas usando `JOINs` para consultas complejas, logrando relacionar los datos de manera eficiente. Usamos alias y la combinación de tablas (`INNER JOIN`, `LEFT JOIN`) para obtener detalles sobre órdenes, productos y categorías.
   - Estas consultas avanzadas ayudaron a comprender patrones de demanda y ventas en diferentes canales y periodos.

7. **Consultas Finales**:
   - Se realizaron consultas que respondieron preguntas clave para la toma de decisiones. Algunas de las más destacadas fueron:
     - **Eficiencia de Mensajeros**: Calculamos el tiempo promedio de entrega de pedidos, revelando una media de 30 minutos. Esto sugiere oportunidades para mejorar la eficiencia de las entregas.
     - **Ventas por Canal**: El análisis mostró que el canal presencial genera mayores ingresos. Sin embargo, los canales en línea y la App móvil tienen un rendimiento inferior, lo que presenta una oportunidad de mejora en marketing y experiencia del usuario.
     - **Productividad por Empleado**: El ingreso generado por cada empleado resultó ser uniforme, lo cual sugiere una productividad constante, pero también posibles áreas de mejora en liderazgo y motivación.
     - **Demanda por Horario y Día**: Observamos cómo varía la demanda a lo largo del día, identificando horarios pico que pueden orientar el plan de personal y la disponibilidad de productos.
     - **Comparación de Ventas Mensuales**: Utilizamos funciones para comparar ingresos mensuales, lo cual proporciona un análisis de tendencias y permite planificar con anticipación.
     - **Análisis de Fidelidad del Cliente**: Estimamos la proporción de clientes recurrentes versus nuevos clientes, analizando su frecuencia de compra.

**Resultados**:
El proyecto permitió organizar y optimizar los datos de la empresa, consolidando su información en una base de datos bien estructurada y facilitando un análisis detallado que respalda decisiones informadas. A través de este informe se documentan los avances realizados, desafíos superados, y se presenta un análisis de los resultados que permite a Fast Food, Rápido y Sabroso aprovechar al máximo sus datos en su proceso de expansión.
