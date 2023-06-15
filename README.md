
# Base de datos para farmacia de hospital

## Implementación De Un Sistema Software Para El Control Interno De Recepción, Entrega Y Control Interno De Inventario De Los Medicamentos

La base de datos "FARMACIA" ,está diseñada para gestionar la información de la farmacia del hospital que se encarga de recibir y distribuir medicamentos. A continuación, se ofrece una breve descripción de cada una de las tablas que componen la base de datos:

#### "Ciudades":
 Registra las ciudades para las direcciones, incluyendo detalles como el codigo postal y el nombre. El identificador único (id_ciudad) se utiliza como clave primaria, 

#### "Direcciones": 
Almacena la información de las direcciones, como la dirección física. Cada dirección tiene un identificador único (id_direccion) que se utiliza como clave primaria y se establece una relación con la tabla "Ciudades" mediante la clave foránea (id_ciudad).

#### "Medicamentos":
 Contiene información sobre los medicamentos disponibles en la farmacia, como su nombre, descripción, precio y cantidad en stock. Cada medicamento tiene un identificador único (id_medicamento) como clave primaria.

#### "Proveedores":
 Guarda los datos de los proveedores de la farmacia, como su nombre, teléfono y correo electrónico. Además, se registra el identificador de la dirección asociada a cada proveedor utilizando una clave foránea (id_direccion) que referencia a la tabla "Direcciones".

#### "Pedidos":
 Registra los pedidos realizados a los proveedores, incluyendo detalles como el proveedor, la fecha del pedido y el estado del mismo. El identificador único (id_pedido) se utiliza como clave primaria, y se establece una relación con la tabla "Proveedores" mediante la clave foránea (id_proveedor).

#### "Detalles_Pedido":
 Almacena los detalles de cada pedido, como los medicamentos solicitados y la cantidad de cada uno. Utiliza claves foráneas (id_pedido e id_medicamento) para relacionarse con las tablas "Pedidos" y "Medicamentos", respectivamente.

#### "Empleados":
 Contiene la información de los empleados de la farmacia, como su nombre, teléfono y correo electrónico. Además, se registra el identificador de la dirección asociada a cada empleado utilizando una clave foránea (id_direccion) que referencia a la tabla "Direcciones".

#### "Ventas":
 Registra las ventas realizadas en la farmacia, incluyendo detalles como el empleado que realizó la venta, la fecha y el total de la venta. El identificador único (id_venta) se utiliza como clave primaria, y se establece una relación con la tabla "Empleados" mediante la clave foránea (id_empleado).

#### "Detalles_Venta":
 Almacena los detalles de cada venta, como los medicamentos vendidos, la cantidad y el precio unitario. Utiliza claves foráneas (id_venta e id_medicamento) para relacionarse con las tablas "Ventas" y "Medicamentos", respectivamente.

Este esquema de base de datos permite gestionar de manera eficiente la información relacionada con los medicamentos, proveedores, pedidos, empleados y ventas en una farmacia, y consta de u servidor MASTER y 2 SLAVES


## Base de datos Farmacia

![App Screenshot](https://i.ibb.co/N394ftK/Diagrama-DB-Farmacia.png)


## Correr el proyecto localmente

Verificar que se tiene instalado docker-compose

```bash
  docker-compose --version
```

Clonar el proyecto

```bash
  git clone https://github.com/PaoloIllanes/Proyecto_BasesDeDatos.git
```

Ir al directorio del proyecto

```bash
  cd Proyecto_BasesDeDatos
```

Correr el comando de docker con el archivo de configuracion docker-compose.yml

```SQL
  docker-compose up
```

## Conectarse con un cliente gestor de base de datos como Mysql Workbench o DBeaver

- DB : localhost:3306

## Triggers implementados:

- Trigger para verificar la disponibilidad del stock de un producto antes de realizar una venta

- Trigger para actualizar el stock de medicamentos después de una venta

- Trigger para actualizar el stock de medicamentos después de una compra

- Trigger para verificar el formato del nombre del empleado

- Trigger para eliminar detalles de venta relacionados cuando se elimina una venta:

## Stored procedures implementados:


#### ->  Obtener medicamentos bajo cierto stock:

```bash
  ObtenerMedicamentosBajoStock(cantidad)
```

#### ->  Obtener pedidos pendientes de los proveedores:

```bash
  ObtenerPedidosPendientesConProveedor()
```

#### ->  Obtener medicamentos completamente agotados:

```bash
  ObtenerMedicamentosAgotados()
```

#### ->  Obtener todos los detalles de venta de un empleado:

```bash
  ObtenerDetallesVentaPorEmpleado(id_empleado)
```

#### ->  Obtener medicamentos por nombre:

```bash
  ObtenerMedicamentosPorNombre(nombre_medicamento)
```
## Consultas e indices
### Consultas potencialmente problemáticas :
- Obtener todos los medicamentos con un precio superior a cierto valor.
- Obtener todos los pedidos realizados hacia un proveedor en un rango de fechas específico, donde los pedidos estén en un estado determinado.
- Obtener todos los medicamentos con un stock inferior a cierta cantidad.
- Obtener todas las ventas realizadas en una fecha en específico .

### Indices que solucionan las consultas anteriores:

![App Screenshot](https://i.ibb.co/CBmm3wg/indices.png)