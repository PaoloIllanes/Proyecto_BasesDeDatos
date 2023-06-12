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

