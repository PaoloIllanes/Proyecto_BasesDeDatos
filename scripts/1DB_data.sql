USE Farmacia;
INSERT INTO ciudades (nombre, codigo_postal)
VALUES ( "Cocahbamba", 3243),
       ( "La Paz", 2344),
       ( "Oruro", 2344),
       ( "Santa Cruz", 3243),
       ( "Sucre", 32432);
       
INSERT INTO direcciones ( direccion,id_ciudad)
VALUES ( "Miraflores, Calle 14", 2),
       ( "Calacoto, Calle 15", 2),
       ( "Obrajes, Calle 25", 1),
       ( "Achumani, Calle 33", 4),
       ( "San miguel, Calle 20", 2),
       ( "El alto, Calle 14", 2),
       ( "San Pedro, Calle 15", 2),
       ( "Mallasa, Calle 25", 1),
       ( "Mallasilla, Calle 33", 4),
       ( "Achocalla, Calle 20", 2);
       
INSERT INTO clientes (nombre,apellido, telefono,id_direccion)
VALUES ( "Paolo","Illanes",34234324,1),
       ( "Andres","Paredes",32435325,2),
       ( "Alvaro","Alba",32532523,3),
       ( "Santiago","Maldonado",532532523,4),
       ( "Jose","Garcia",34325235,5);

INSERT INTO empleados (nombre,apellido, telefono, email,id_direccion)
VALUES ( "Jose","Lara", 12345,"6@gmail.com",7),
       ( "Luis","Sanchez", 54321,"7@gmail.com",6),
       ( "Carlos","Balderrama", 65543,"8@gmail.com",8),
       ( "Nicolas","Flores", 75556,"9@gmail.com",9),
       ( "Alberto","Rada", 98754,"10@gmail.com",10);
       
INSERT INTO proveedores (nombre, telefono, email,id_direccion)
VALUES ( "FarmacosBO", 23456,"11@gmail.com",2),
       ( "BAGO", 36789,"12@gmail.com",4),
       ( "FARCO", 13568,"13@gmail.com",6),
       ( "VITA", 87544,"14@gmail.com",8),
       ( "INTI", 86543,"15@gmail.com",10);
       
INSERT INTO medicamentos (nombre, descripcion, precio,stock)
VALUES ( "vitagrip", "medicina para el resfrio",5,100),
       ( "sanatusin", "medicina para la garganta",7,200),
       ( "paracetamol", "medicina para la cabeza",2,300),
       ( "ibuprofeno", "medicina para inflamaciones",5,400),
       ( "insulina", "medicina para la diabetes",50,500);
       
INSERT INTO pedidos (id_proveedor, fecha,estado)
VALUES ( 1,NOW(),"entregado"),
       ( 2,NOW(),"espera"),
       ( 3,NOW(),"rechazado"),
       ( 4,NOW(),"entregado"),
       ( 5,NOW(),"espera");
INSERT INTO detalles_pedido (id_pedido,id_medicamento, cantidad,precio_unitario)
VALUES ( 1,2,300,2),
       ( 4,5,400,40);