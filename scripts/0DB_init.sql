USE Farmacia;

CREATE TABLE ciudades(
    id_ciudad INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    codigo_postal INT
);
CREATE TABLE direcciones (
    id_direccion INT PRIMARY KEY AUTO_INCREMENT,
    direccion VARCHAR(30),
    id_ciudad INT,
    FOREIGN KEY (id_ciudad) REFERENCES ciudades(id_ciudad)
);
CREATE TABLE empleados (
    id_empleado INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30),
    apellido VARCHAR(30),
    telefono VARCHAR(20),
    email VARCHAR(30),
	id_direccion INT,
    FOREIGN KEY (id_direccion) REFERENCES direcciones(id_direccion)
);
CREATE TABLE medicamentos (
    id_medicamento INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30),
    descripcion VARCHAR(255),
    precio DECIMAL(10, 2),
    stock INT
);
CREATE TABLE proveedores (
    id_proveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30),
    telefono VARCHAR(20),
    email VARCHAR(30),
    id_direccion INT,
    FOREIGN KEY (id_direccion) REFERENCES direcciones(id_direccion)
);
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_proveedor INT,
    fecha DATETIME,
    estado VARCHAR(20),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
);
CREATE TABLE detalles_pedido (
    id_pedido INT,
    id_medicamento INT,
    cantidad INT,
    precio_unitario DECIMAL(10, 2),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_medicamento) REFERENCES medicamentos(id_medicamento)
);
CREATE TABLE ventas (
    id_venta INT PRIMARY KEY AUTO_INCREMENT,
    id_empleado INT,
    fecha DATETIME,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)
);

CREATE TABLE detalles_venta (
    id_venta INT,
    id_medicamento INT,
    cantidad INT,
    precio_unitario DECIMAL(10, 2),
    FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
    FOREIGN KEY (id_medicamento) REFERENCES medicamentos(id_medicamento)
);

CREATE TABLE audit_ventas (
    id_audit INT PRIMARY KEY AUTO_INCREMENT,
    accion VARCHAR(1),
    id_empleado INT,
    email VARCHAR(100),
    fecha DATETIME
);
