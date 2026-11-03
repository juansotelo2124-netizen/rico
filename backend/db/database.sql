CREATE DATABASE administracion_gastos:
USE administracion_gastos;
CREATE TABLE categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);
CREATE TABLE movimiento (
    id_movimiento INT AUTO_INCREMENT PRIMARY KEY,
    monto DECIMAL(10, 2) NOT NULL,
    fecha DATE NOT NULL,
    id_categoria INT NOT NULL,
    CONSTRAINT fk_movimiento_categoria 
        FOREIGN KEY (id_categoria) 
        REFERENCES categoria(id_categoria)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);
INSERT INTO categoria (nombre) VALUES 
('Salario'),
('Comida'),
('Transporte'),
('Entretenimiento'),
('Servicios Públicos');
INSERT INTO movimiento (monto, fecha, id_categoria) VALUES 
(250000.00, '2026-10-01', 1), -- Salario
(60000.00, '2026-10-02', 2),  -- Comida
(35000.00, '2026-10-03', 3),  -- Transporte
(120000.00, '2026-10-04', 4), -- Entretenimiento
(85000.00, '2026-10-05', 5);  -- Servicios Públicos
