USE Farmacia;

-- Trigger stock-venta
  -- SELECT nombre,stock FROM medicamentos WHERE id_medicamento=5;
-- INSERT INTO ventas (id_empleado,fecha)
-- VALUES (4,NOW());
-- INSERT INTO detalles_venta (id_venta,id_medicamento, cantidad,precio_unitario)
-- VALUES ( 3,5,2000,50);

-- Trigger actualizar stock venta-pedido
  -- SELECT nombre,stock FROM medicamentos WHERE id_medicamento=1;
  
-- INSERT INTO ventas (id_empleado,fecha)
-- VALUES (2,NOW());
-- INSERT INTO detalles_venta (id_venta,id_medicamento, cantidad,precio_unitario)
-- VALUES (4,1,2,2);

-- INSERT INTO pedidos (id_proveedor, fecha,estado)
-- VALUES ( 1,NOW(),"entregado");
-- INSERT INTO detalles_pedido (id_pedido,id_medicamento, cantidad,precio_unitario)
-- VALUES ( 6,1,300,2);

-- Trigger verificar el formato del nombre del empleado
 -- INSERT INTO empleados (nombre,apellido, telefono, email,id_direccion)
 -- VALUES ( "Ju@n","Lozano", 34567,"20@gmail.com",3);
 
 -- Trigger eliminar detalles de venta relacionados cuando se elimina una venta
 -- SELECT * FROM ventas WHERE id_venta=1;
  -- SELECT * FROM detalles_venta WHERE id_venta=1;
  -- DELETE FROM ventas WHERE id_venta=1;