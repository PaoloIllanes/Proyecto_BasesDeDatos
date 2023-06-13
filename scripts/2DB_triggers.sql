USE Farmacia;

DELIMITER //
-- Trigger para verificar la disponibilidad del stock de un producto antes de realizar una venta
CREATE TRIGGER validar_stock_venta
BEFORE INSERT ON detalles_venta
FOR EACH ROW
BEGIN
    DECLARE stock_actual INT;
    SET stock_actual = (SELECT stock FROM medicamentos WHERE id_medicamento = NEW.id_medicamento);
    IF NEW.cantidad > stock_actual THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stock insuficiente para la venta';
    END IF;
END;
-- Trigger para actualizar el stock de medicamentos después de una venta
CREATE TRIGGER actualizar_stock_venta
AFTER INSERT ON detalles_venta
FOR EACH ROW
BEGIN
    UPDATE medicamentos
    SET stock = stock - NEW.cantidad
    WHERE id_medicamento = NEW.id_medicamento;
END;
-- Trigger para actualizar el stock de medicamentos después de una compra
CREATE TRIGGER actualizar_stock_compra
AFTER INSERT ON detalles_pedido
FOR EACH ROW
BEGIN
    UPDATE medicamentos
    SET stock = stock + NEW.cantidad
    WHERE id_medicamento = NEW.id_medicamento;
END;
-- Trigger para verificar el formato del nombre del empleado
CREATE TRIGGER verificar_nombre_empleados
BEFORE INSERT ON empleados
FOR EACH ROW
BEGIN
    DECLARE contains_special_chars INT;
    DECLARE contains_numbers INT;
    -- Verificar si el nombre contiene caracteres especiales
    SET contains_special_chars = (SELECT CASE WHEN NEW.nombre REGEXP '[^a-zA-Z ]' THEN 1 ELSE 0 END);
    -- Verificar si el nombre contiene números
    SET contains_numbers = (SELECT CASE WHEN NEW.nombre REGEXP '[0-9]' THEN 1 ELSE 0 END);
    IF contains_special_chars = 1 OR contains_numbers = 1 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El nombre del empleado no puede contener numeros ni caracteres especiales.';
    END IF;
END;
-- Trigger para eliminar detalles de venta relacionados cuando se elimina una venta:
CREATE TRIGGER eliminar_detalles_venta
BEFORE DELETE ON ventas
FOR EACH ROW
BEGIN
    DELETE FROM detalles_venta
    WHERE id_venta = OLD.id_venta;
END;



