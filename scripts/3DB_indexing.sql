USE Farmacia;
CREATE INDEX idx_precio_medicamentos ON medicamentos (precio);
CREATE INDEX idx_proveedor_fecha_pedidos ON pedidos (id_proveedor, fecha);
CREATE INDEX idx_stock_medicamentos ON medicamentos (stock);
CREATE INDEX idx_fecha_ventas ON ventas(fecha);


