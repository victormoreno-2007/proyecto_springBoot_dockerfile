-- Desactivar revisión de llaves foráneas temporalmente
-- SET FOREIGN_KEY_CHECKS = 0;

-- ===============================================================================================
-- 1. USUARIOS (Password para todos: "123456")
-- ===============================================================================================

-- ADMIN
INSERT INTO users (id, email, password, first_name, last_name, role) 
VALUES ('11111111-1111-1111-1111-111111111111', 'admin@construrenta.com', '$2a$10$.5Elh8fgxypNUWhpUUr/xOa2sZm0VIaE0qWuGGl9otUfobb46T1Pq', 'Super', 'Admin', 'ADMIN')
ON CONFLICT DO NOTHING;

-- PROVEEDOR 1 (Marcela)
INSERT INTO users (id, email, password, first_name, last_name, role) 
VALUES ('22222222-2222-2222-2222-222222222222', 'marcela@proveedor.com', '$2a$10$.5Elh8fgxypNUWhpUUr/xOa2sZm0VIaE0qWuGGl9otUfobb46T1Pq', 'Marcela', 'Albarracin', 'PROVIDER')
ON CONFLICT DO NOTHING;

-- PROVEEDOR 2 (Sebastian)
INSERT INTO users (id, email, password, first_name, last_name, role) 
VALUES ('33333333-3333-3333-3333-333333333333', 'sebastian@proveedor.com', '$2a$10$.5Elh8fgxypNUWhpUUr/xOa2sZm0VIaE0qWuGGl9otUfobb46T1Pq', 'Sebastian', 'Jaimes', 'PROVIDER')
ON CONFLICT DO NOTHING;

-- PROVEEDOR 3 (Victor)
INSERT INTO users (id, email, password, first_name, last_name, role) 
VALUES ('44444444-4444-4444-4444-444444444445', 'victor@proveedor.com', '$2a$10$.5Elh8fgxypNUWhpUUr/xOa2sZm0VIaE0qWuGGl9otUfobb46T1Pq', 'Victor', 'Moreno', 'PROVIDER')
ON CONFLICT DO NOTHING;

-- CLIENTE 1 (Marcela)
INSERT INTO users (id, email, password, first_name, last_name, role) 
VALUES ('44444444-4444-4444-4444-444444444444', 'marcela@cliente.com', '$2a$10$.5Elh8fgxypNUWhpUUr/xOa2sZm0VIaE0qWuGGl9otUfobb46T1Pq', 'Marcela', 'Albarracin', 'CUSTOMER')
ON CONFLICT DO NOTHING;

-- CLIENTE 2 (Sebastian)
INSERT INTO users (id, email, password, first_name, last_name, role) 
VALUES ('55555555-5555-5555-5555-555555555555', 'sebastian@cliente.com', '$2a$10$.5Elh8fgxypNUWhpUUr/xOa2sZm0VIaE0qWuGGl9otUfobb46T1Pq', 'Sebastian', 'Jaimes', 'CUSTOMER')
ON CONFLICT DO NOTHING;

-- CLIENTE 3 (Victor)
INSERT INTO users (id, email, password, first_name, last_name, role) 
VALUES ('66666666-6666-6666-6666-666666666666', 'victor@cliente.com', '$2a$10$.5Elh8fgxypNUWhpUUr/xOa2sZm0VIaE0qWuGGl9otUfobb46T1Pq', 'Victor', 'Moreno', 'CUSTOMER')
ON CONFLICT DO NOTHING;

-- ===============================================================================================
-- 2. HERRAMIENTAS (20 Items) - Precios en COP y Rutas Locales
-- ===============================================================================================

INSERT INTO tools (id, name, description, price_per_day, image_url, status, stock, provider_id) VALUES 
('a0000000-0000-0000-0000-000000000001', 'Taladro Percutor Dewalt', 'Taladro industrial 20V MAX XR de alto rendimiento. Ideal para concreto y mampostería pesada. Incluye 2 baterías y cargador rápido.', 45000.00, '/herramientas/taladro.jpeg', 'AVAILABLE', 8, '22222222-2222-2222-2222-222222222222'),
('a0000000-0000-0000-0000-000000000002', 'Sierra Circular Makita', 'Sierra de 7-1/4 pulgadas, motor de 1800W. Corte preciso en madera y aglomerados. Guía láser incorporada para cortes rectos.', 60000.00, '/herramientas/sierra.jpeg', 'AVAILABLE', 5, '22222222-2222-2222-2222-222222222222'),
('a0000000-0000-0000-0000-000000000003', 'Lijadora Orbital Bosch', 'Lijadora roto-orbital profesional con filtro microfilter. Perfecta para acabados finos en madera y metal. Velocidad variable.', 35000.00, '/herramientas/lijadora.jpeg', 'AVAILABLE', 6, '22222222-2222-2222-2222-222222222222'),
('a0000000-0000-0000-0000-000000000004', 'Martillo Demoledor Hilti', 'Rompedor de concreto TE-3000. La bestia para demolición de pisos y losas. Sistema de reducción de vibración AVR.', 180000.00, '/herramientas/demoledor.jpeg', 'RENTED', 0, '22222222-2222-2222-2222-222222222222'),
('a0000000-0000-0000-0000-000000000005', 'Andamio Tubular (Cuerpo)', 'Cuerpo de andamio certificado estándar 1.5m x 1.5m. Incluye crucetas. Ideal para trabajos en altura y fachada.', 12000.00, '/herramientas/andamio.png', 'AVAILABLE', 50, '22222222-2222-2222-2222-222222222222'),
('a0000000-0000-0000-0000-000000000006', 'Escalera Telescópica', 'Escalera de aluminio extensible hasta 6 metros. Ligera y fácil de transportar. Patas antideslizantes de seguridad.', 25000.00, '/herramientas/escalera.jpeg', 'AVAILABLE', 4, '22222222-2222-2222-2222-222222222222'),
('a0000000-0000-0000-0000-000000000007', 'Generador Eléctrico Honda', 'Planta eléctrica a gasolina 5000W. Arranque manual y eléctrico. Autonomía de 8 horas. Ideal para obras sin conexión a red.', 120000.00, '/herramientas/generador.jpeg', 'MAINTENANCE', 1, '22222222-2222-2222-2222-222222222222'),
('a0000000-0000-0000-0000-000000000008', 'Compresor de Aire', 'Compresor de 50 Litros, motor 2HP. Ideal para pintura y herramientas neumáticas ligeras. Presión máxima 115 PSI.', 55000.00, '/herramientas/compresor.jpeg', 'AVAILABLE', 3, '22222222-2222-2222-2222-222222222222'),
('a0000000-0000-0000-0000-000000000009', 'Hidrolavadora Industrial', 'Máquina de lavado a presión 3000 PSI a gasolina. Perfecta para limpieza de fachadas, maquinaria y pisos industriales.', 90000.00, '/herramientas/hidrolavadora.jpeg', 'AVAILABLE', 2, '22222222-2222-2222-2222-222222222222'),
('a0000000-0000-0000-0000-000000000010', 'Mezcladora de Concreto', 'Trompo mezclador de 1 bulto con motor eléctrico 110V/220V. Chasis reforzado para trabajo pesado en obra.', 75000.00, '/herramientas/mezcladora.jpeg', 'AVAILABLE', 4, '22222222-2222-2222-2222-222222222222'),

-- Herramientas del Proveedor 2 (María)
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'Soldador Inverter Elite', 'Equipo soldador 200A bi-voltaje (110/220V). Suelda electrodos 6011, 6013 y 7018. Pantalla digital.', 65000.00, '/herramientas/soldador.jpeg', 'AVAILABLE', 3, '33333333-3333-3333-3333-333333333333'),
('a0000000-0000-0000-0000-000000000011', 'Pulidora Angular 9"', 'Pulidora grande para trabajo pesado. Disco de 9 pulgadas. Mango antivibración. Ideal para corte de metal estructural.', 40000.00, '/herramientas/pulidora.jpeg', 'AVAILABLE', 6, '33333333-3333-3333-3333-333333333333'),
('a0000000-0000-0000-0000-000000000012', 'Nivel Láser Bosch', 'Nivel de líneas cruzadas con alcance de 20m. Autonivelante. Incluye trípode y estuche protector.', 35000.00, '/herramientas/nivellaser.jpeg', 'AVAILABLE', 2, '33333333-3333-3333-3333-333333333333'),
('a0000000-0000-0000-0000-000000000013', 'Cortadora de Baldosa', 'Cortadora manual profesional de 60cm. Rodel de carburo de tungsteno. Cortes precisos en cerámica y porcelanato.', 28000.00, '/herramientas/cortadora.png', 'AVAILABLE', 5, '33333333-3333-3333-3333-333333333333'),
('a0000000-0000-0000-0000-000000000014', 'Vibrador de Concreto', 'Vibrador a gasolina con manguera de 4 metros. Indispensable para evitar burbujas de aire en el fundido de losas y columnas.', 70000.00, '/herramientas/vibrador.jpeg', 'AVAILABLE', 2, '33333333-3333-3333-3333-333333333333'),
('a0000000-0000-0000-0000-000000000015', 'Pistola de Calor', 'Pistola térmica 1800W con temperatura variable (50°C - 600°C). Ideal para decapar pintura y moldear plásticos.', 20000.00, '/herramientas/pistola.jpeg', 'AVAILABLE', 4, '33333333-3333-3333-3333-333333333333'),
('a0000000-0000-0000-0000-000000000016', 'Cizalla Manual', 'Cortadora de varilla y pernos. Capacidad de corte hasta 1/2 pulgada. Brazos largos para mayor palanca.', 15000.00, '/herramientas/cizalla.jpeg', 'AVAILABLE', 3, '33333333-3333-3333-3333-333333333333'),
('a0000000-0000-0000-0000-000000000017', 'Carretilla Buggy', 'Carretilla plástica profunda tipo buggy. Capacidad 100 litros. Llanta neumática reforzada.', 12000.00, '/herramientas/carretilla.jpeg', 'AVAILABLE', 15, '33333333-3333-3333-3333-333333333333'),
('a0000000-0000-0000-0000-000000000018', 'Extensión Eléctrica Ind.', 'Cable encauchetado calibre 12 de 30 metros. Tomas industriales a prueba de agua. Soporta maquinaria pesada.', 15000.00, '/herramientas/extension.jpeg', 'AVAILABLE', 10, '33333333-3333-3333-3333-333333333333'),
('a0000000-0000-0000-0000-000000000019', 'Casco de Seguridad', 'Casco certificado tipo ingeniero. Suspensión rachet de 4 puntos. Dieléctrico. Colores variados.', 5000.00, '/herramientas/casco.jpeg', 'AVAILABLE', 30, '33333333-3333-3333-3333-333333333333')
ON CONFLICT DO NOTHING;


-- ===============================================================================================
-- 3. RESERVAS Y PAGOS (20 Registros Pasados) - Precios actualizados
-- ===============================================================================================

-- Reserva 1 (Completada - Soldador por 3 días)
INSERT INTO bookings (id, user_id, tool_id, start_date, end_date, total_price, status) VALUES 
('b0000001-0000-0000-0000-000000000001', '44444444-4444-4444-4444-444444444444', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-01-10 08:00:00', '2024-01-13 18:00:00', 195000.00, 'COMPLETED')
ON CONFLICT DO NOTHING;

-- CORRECCIÓN: Cambiamos las p iniciales por c (letra válida en hexadecimal)
INSERT INTO payments (id, amount, payment_date, method, status, booking_id) VALUES 
('c0000001-0000-0000-0000-000000000001', 195000.00, '2024-01-10 09:00:00', 'CREDIT_CARD', 'COMPLETED', 'b0000001-0000-0000-0000-000000000001')
ON CONFLICT DO NOTHING;

-- Reserva 2 (Completada - Soldador por 5 días)
INSERT INTO bookings (id, user_id, tool_id, start_date, end_date, total_price, status) VALUES 
('b0000002-0000-0000-0000-000000000002', '55555555-5555-5555-5555-555555555555', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-02-01 08:00:00', '2024-02-06 18:00:00', 325000.00, 'COMPLETED')
ON CONFLICT DO NOTHING;

INSERT INTO payments (id, amount, payment_date, method, status, booking_id) VALUES 
('c0000002-0000-0000-0000-000000000002', 325000.00, '2024-02-01 08:30:00', 'PAYPAL', 'COMPLETED', 'b0000002-0000-0000-0000-000000000002')
ON CONFLICT DO NOTHING;

-- Generación de reservas variadas (relleno para cumplir rúbrica)
INSERT INTO bookings (id, user_id, tool_id, start_date, end_date, total_price, status) VALUES 
('b0000003-0000-0000-0000-000000000003', '44444444-4444-4444-4444-444444444444', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-03-01 08:00', '2024-03-02 18:00', 65000.00, 'COMPLETED')
ON CONFLICT DO NOTHING;

INSERT INTO payments (id, amount, payment_date, method, status, booking_id) VALUES 
('c0000003-0000-0000-0000-000000000003', 65000.00, '2024-03-01 08:00', 'CASH', 'COMPLETED', 'b0000003-0000-0000-0000-000000000003')
ON CONFLICT DO NOTHING;

INSERT INTO bookings (id, user_id, tool_id, start_date, end_date, total_price, status) VALUES 
('b0000004-0000-0000-0000-000000000004', '55555555-5555-5555-5555-555555555555', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-03-05 08:00', '2024-03-07 18:00', 130000.00, 'COMPLETED')
ON CONFLICT DO NOTHING;

INSERT INTO payments (id, amount, payment_date, method, status, booking_id) VALUES 
('c0000004-0000-0000-0000-000000000004', 130000.00, '2024-03-05 08:00', 'TRANSFER', 'COMPLETED', 'b0000004-0000-0000-0000-000000000004')
ON CONFLICT DO NOTHING;

INSERT INTO bookings (id, user_id, tool_id, start_date, end_date, total_price, status) VALUES 
('b0000005-0000-0000-0000-000000000005', '44444444-4444-4444-4444-444444444444', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-04-10 08:00', '2024-04-15 18:00', 325000.00, 'CONFIRMED')
ON CONFLICT DO NOTHING;

INSERT INTO payments (id, amount, payment_date, method, status, booking_id) VALUES 
('c0000005-0000-0000-0000-000000000005', 325000.00, '2024-04-10 08:00', 'CREDIT_CARD', 'COMPLETED', 'b0000005-0000-0000-0000-000000000005')
ON CONFLICT DO NOTHING;

-- Reservas de relleno masivas (Precios aleatorios coherentes)
INSERT INTO bookings (id, user_id, tool_id, start_date, end_date, total_price, status) VALUES 
('b0000006-0000-0000-0000-000000000006', '44444444-4444-4444-4444-444444444444', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-05-01 08:00', '2024-05-03 18:00', 130000.00, 'COMPLETED'),
('b0000007-0000-0000-0000-000000000007', '55555555-5555-5555-5555-555555555555', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-05-05 08:00', '2024-05-06 18:00', 65000.00, 'COMPLETED'),
('b0000008-0000-0000-0000-000000000008', '44444444-4444-4444-4444-444444444444', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-05-10 08:00', '2024-05-15 18:00', 325000.00, 'COMPLETED'),
('b0000009-0000-0000-0000-000000000009', '55555555-5555-5555-5555-555555555555', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-06-01 08:00', '2024-06-03 18:00', 130000.00, 'COMPLETED'),
('b0000010-0000-0000-0000-000000000010', '44444444-4444-4444-4444-444444444444', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-06-10 08:00', '2024-06-12 18:00', 130000.00, 'COMPLETED'),
('b0000011-0000-0000-0000-000000000011', '55555555-5555-5555-5555-555555555555', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-07-01 08:00', '2024-07-05 18:00', 260000.00, 'COMPLETED'),
('b0000012-0000-0000-0000-000000000012', '44444444-4444-4444-4444-444444444444', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-07-15 08:00', '2024-07-16 18:00', 65000.00, 'COMPLETED'),
('b0000013-0000-0000-0000-000000000013', '55555555-5555-5555-5555-555555555555', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-08-01 08:00', '2024-08-02 18:00', 65000.00, 'COMPLETED'),
('b0000014-0000-0000-0000-000000000014', '44444444-4444-4444-4444-444444444444', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-08-10 08:00', '2024-08-15 18:00', 325000.00, 'COMPLETED'),
('b0000015-0000-0000-0000-000000000015', '55555555-5555-5555-5555-555555555555', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-09-01 08:00', '2024-09-05 18:00', 260000.00, 'COMPLETED')
ON CONFLICT DO NOTHING;


-- ===============================================================================================
-- 3. RESERVAS Y PAGOS (20 Registros Pasados) - Precios actualizados
-- ===============================================================================================

-- Reserva 1 (Completada - Soldador por 3 días)
INSERT INTO bookings (id, user_id, tool_id, start_date, end_date, total_price, status) VALUES 
('b0000001-0000-0000-0000-000000000001', '44444444-4444-4444-4444-444444444444', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-01-10 08:00:00', '2024-01-13 18:00:00', 195000.00, 'COMPLETED')
ON CONFLICT DO NOTHING;

INSERT INTO payments (id, amount, payment_date, method, status, booking_id) VALUES 
('p0000001-0000-0000-0000-000000000001', 195000.00, '2024-01-10 09:00:00', 'CREDIT_CARD', 'COMPLETED', 'b0000001-0000-0000-0000-000000000001')
ON CONFLICT DO NOTHING;

-- Reserva 2 (Completada - Soldador por 5 días)
INSERT INTO bookings (id, user_id, tool_id, start_date, end_date, total_price, status) VALUES 
('b0000002-0000-0000-0000-000000000002', '55555555-5555-5555-5555-555555555555', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-02-01 08:00:00', '2024-02-06 18:00:00', 325000.00, 'COMPLETED')
ON CONFLICT DO NOTHING;

INSERT INTO payments (id, amount, payment_date, method, status, booking_id) VALUES 
('p0000002-0000-0000-0000-000000000002', 325000.00, '2024-02-01 08:30:00', 'PAYPAL', 'COMPLETED', 'b0000002-0000-0000-0000-000000000002')
ON CONFLICT DO NOTHING;

-- Generación de reservas variadas (relleno para cumplir rúbrica)
INSERT INTO bookings (id, user_id, tool_id, start_date, end_date, total_price, status) VALUES 
('b0000003-0000-0000-0000-000000000003', '44444444-4444-4444-4444-444444444444', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-03-01 08:00', '2024-03-02 18:00', 65000.00, 'COMPLETED')
ON CONFLICT DO NOTHING;

INSERT INTO payments (id, amount, payment_date, method, status, booking_id) VALUES 
('p0000003-0000-0000-0000-000000000003', 65000.00, '2024-03-01 08:00', 'CASH', 'COMPLETED', 'b0000003-0000-0000-0000-000000000003')
ON CONFLICT DO NOTHING;

INSERT INTO bookings (id, user_id, tool_id, start_date, end_date, total_price, status) VALUES 
('b0000004-0000-0000-0000-000000000004', '55555555-5555-5555-5555-555555555555', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-03-05 08:00', '2024-03-07 18:00', 130000.00, 'COMPLETED')
ON CONFLICT DO NOTHING;

INSERT INTO payments (id, amount, payment_date, method, status, booking_id) VALUES 
('p0000004-0000-0000-0000-000000000004', 130000.00, '2024-03-05 08:00', 'TRANSFER', 'COMPLETED', 'b0000004-0000-0000-0000-000000000004')
ON CONFLICT DO NOTHING;

INSERT INTO bookings (id, user_id, tool_id, start_date, end_date, total_price, status) VALUES 
('b0000005-0000-0000-0000-000000000005', '44444444-4444-4444-4444-444444444444', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-04-10 08:00', '2024-04-15 18:00', 325000.00, 'CONFIRMED')
ON CONFLICT DO NOTHING;

INSERT INTO payments (id, amount, payment_date, method, status, booking_id) VALUES 
('p0000005-0000-0000-0000-000000000005', 325000.00, '2024-04-10 08:00', 'CREDIT_CARD', 'COMPLETED', 'b0000005-0000-0000-0000-000000000005')
ON CONFLICT DO NOTHING;

-- Reservas de relleno masivas (Precios aleatorios coherentes)
INSERT INTO bookings (id, user_id, tool_id, start_date, end_date, total_price, status) VALUES 
('b0000006-0000-0000-0000-000000000006', '44444444-4444-4444-4444-444444444444', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-05-01 08:00', '2024-05-03 18:00', 130000.00, 'COMPLETED'),
('b0000007-0000-0000-0000-000000000007', '55555555-5555-5555-5555-555555555555', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-05-05 08:00', '2024-05-06 18:00', 65000.00, 'COMPLETED'),
('b0000008-0000-0000-0000-000000000008', '44444444-4444-4444-4444-444444444444', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-05-10 08:00', '2024-05-15 18:00', 325000.00, 'COMPLETED'),
('b0000009-0000-0000-0000-000000000009', '55555555-5555-5555-5555-555555555555', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-06-01 08:00', '2024-06-03 18:00', 130000.00, 'COMPLETED'),
('b0000010-0000-0000-0000-000000000010', '44444444-4444-4444-4444-444444444444', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-06-10 08:00', '2024-06-12 18:00', 130000.00, 'COMPLETED'),
('b0000011-0000-0000-0000-000000000011', '55555555-5555-5555-5555-555555555555', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-07-01 08:00', '2024-07-05 18:00', 260000.00, 'COMPLETED'),
('b0000012-0000-0000-0000-000000000012', '44444444-4444-4444-4444-444444444444', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-07-15 08:00', '2024-07-16 18:00', 65000.00, 'COMPLETED'),
('b0000013-0000-0000-0000-000000000013', '55555555-5555-5555-5555-555555555555', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-08-01 08:00', '2024-08-02 18:00', 65000.00, 'COMPLETED'),
('b0000014-0000-0000-0000-000000000014', '44444444-4444-4444-4444-444444444444', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-08-10 08:00', '2024-08-15 18:00', 325000.00, 'COMPLETED'),
('b0000015-0000-0000-0000-000000000015', '55555555-5555-5555-5555-555555555555', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2024-09-01 08:00', '2024-09-05 18:00', 260000.00, 'COMPLETED')
ON CONFLICT DO NOTHING;