USE Farmacia;

DELIMITER //

CREATE PROCEDURE ObtenerMedicamentosBajoStock (
    IN limiteStock INT
)
BEGIN
    SELECT id_medicamento, nombre, stock
    FROM medicamentos
    WHERE stock < limiteStock;
END;

CREATE PROCEDURE ObtenerPedidosPendientesConProveedor ()
BEGIN
    SELECT pedidos.id_pedido, pedidos.fecha, pedidos.estado, 
    proveedores.nombre AS nombre_proveedor,
    proveedores.telefono AS telefono_proveedor,
    proveedores.email AS email_proveedor
    FROM pedidos
    JOIN proveedores ON pedidos.id_proveedor = proveedores.id_proveedor
    WHERE pedidos.estado <> 'entregado';
END;

CREATE PROCEDURE ObtenerMedicamentosAgotados()
BEGIN
    SELECT * FROM medicamentos WHERE stock = 0;
END;

CREATE PROCEDURE ObtenerDetallesVentaPorEmpleado(
    IN id_empleado INT
)
BEGIN
    SELECT dv.*, m.nombre AS nombre_medicamento
    FROM detalles_venta dv
    INNER JOIN medicamentos m ON dv.id_medicamento = m.id_medicamento
    INNER JOIN ventas v ON dv.id_venta = v.id_venta
    WHERE v.id_empleado = id_empleado;
END;

CREATE PROCEDURE ObtenerMedicamentosPorNombre(
    IN nombre_medicamento VARCHAR(30)
)
BEGIN
    SELECT * FROM medicamentos WHERE nombre LIKE CONCAT('%', nombre_medicamento, '%');
END;


