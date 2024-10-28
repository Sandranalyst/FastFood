--CREAR LA BASE DE DATOS  - Primera entrega

CREATE DATABASE FastFoodDB2  --Para crear la base de datos anteriormente se debe abrir una carpeta en el disco C
ON
    (NAME = 'FastFoodDB2_Data',
    FILENAME = 'C:\SQL_DB2\FastFoodDB2_Data.mdf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
    )
LOG ON
    (NAME = 'FastFoodDB2_Log',
    FILENAME = 'C:\SQL_DB2\FastFoodDB2_Log.ldf',
    SIZE = 25MB,
    MAXSIZE = 256MB,
    FILEGROWTH = 5MB
    );

	SELECT name, database_id, create_date -- Para verificar la creacion de ls base de datos FastFoodDB
	FROM sys.databases
	WHERE name = 'FastFoodDB2'

	--Creo la tabla Categorias
	--con tipo de dato entero, es primary key, y se agrega IDENTITY por ser PRIMARY KEY, IDENTITY quiere decir autoincrementable
	--Nombre es tipo de dato VARCHAR, con longitud 100

	USE FastFoodDB2

	CREATE TABLE Categorias (
		CategoriaID INT PRIMARY KEY IDENTITY,
		Nombre VARCHAR(100) NOT NULL
	
	);

	USE FastFoodDB2

 -- Productos
 CREATE TABLE Productos (
	ProductoID INT PRIMARY KEY IDENTITY,
	Nombre VARCHAR (100) NOT NULL,
	CategoriaID INT,
	Precio DECIMAL (10,2) NOT NULL,
	FOREIGN KEY (CategoriaID) REFERENCES Categorias(CategoriaID)
	);

	SELECT* FROM Productos;

	CREATE TABLE Sucursales (
	SucursalID INT PRIMARY KEY IDENTITY,
	Nombre VARCHAR (100) NOT NULL, 
	Direccion VARCHAR (100)
	);

	-- Empleados
	CREATE TABLE Empleados (
	EmpleadoID INT PRIMARY KEY IDENTITY,
	Nombre VARCHAR (100) NOT NULL,
	Posicion VARCHAR (100) NOT NULL,
	Departamento VARCHAR (100) NOT NULL,
	SucursalID INT, 
	Rol VARCHAR (100) NOT NULL,
	FOREIGN KEY (SucursalID) REFERENCES Sucursales(SucursalID)
	);

	USE FastFoodDB2

	-- Clientes
	CREATE TABLE Clientes (
	ClienteID INT PRIMARY KEY IDENTITY,
	Nombre VARCHAR(100) NOT NULL,
	Direccion VARCHAR (100) NOT NULL
	);

	--Origen Orden
	CREATE TABLE OrigenesOrden (
	OrigenID INT PRIMARY KEY IDENTITY,
	Descripcion VARCHAR(100) NOT NULL
	);

	--Tipos pago
	CREATE TABLE TiposPago (
	TipoPagoID INT PRIMARY KEY IDENTITY,
	Descripcion VARCHAR(100) NOT NULL
	);

	--Mensajeros
	CREATE TABLE Mensajeros (
	MensajeroID INT PRIMARY KEY IDENTITY,
	Nombre VARCHAR(100) NOT NULL,
	EsExterno BIT NOT NULL
	);

	--Ordenes
	CREATE TABLE ORDENES (
	OrdenID INT PRIMARY KEY IDENTITY,
	ClienteID INT,
	EmpleadoID INT,
	SucursalID INT,
	MensajeroID INT,
	TipoPagoID INT,
	OrigenID INT,
	HorarioVenta VARCHAR(50) NOT NULL,
	TotalCompra DECIMAL(10,2) NOT NULL,
	KilometrosRecorrer DECIMAL(10,2), --En caso de entrega domicilio
	FechaDespacho DATETIME, --En caso de entrega domicilio
	FechaEntrega DATETIME, -- En caso de entrega domicilio
	FechaOrdenTomada DATETIME,
	FechaOrdenLista DATETIME NOT NULL,
	FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
	FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID),
	FOREIGN KEY (SucursalID) REFERENCES Sucursales(SucursalID),
	FOREIGN KEY (MensajeroID) REFERENCES Mensajeros(MensajeroID),
	FOREIGN KEY (TipoPagoID) REFERENCES TiposPago(TipoPagoID),
	FOREIGN KEY (OrigenID) REFERENCES OrigenesOrden(OrigenID),
	);

	--Detalles Ordenes
	CREATE TABLE DetallesOrdenes (
	OrdenID INT,
	ProductoID INT,
	Cantidad INT,
	Precio DECIMAL (10,2),
	PRIMARY KEY (OrdenID, ProductoID),
	FOREIGN KEY (OrdenID) REFERENCES Ordenes(OrdenID),
	FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
	);
