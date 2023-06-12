USE Farmacia;
CREATE INDEX idx_precio_medicamentos ON medicamentos (precio);
CREATE INDEX idx_proveedor_fecha_pedidos ON pedidos (id_proveedor, fecha);
CREATE INDEX idx_stock_medicamentos ON medicamentos (stock);
CREATE INDEX idx_medicamento_cantidad ON ventas (id_medicamento, cantidad);

