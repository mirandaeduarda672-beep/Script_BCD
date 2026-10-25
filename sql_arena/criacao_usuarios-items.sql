USE arena_multiesportes;

-- 1. Inserindo 5 Clientes
INSERT INTO clientes (nome, telefone, email) VALUES
('Carlos Augusto Silva', '11999991111', 'carlos.silva@email.com'),
('Ana Julia Oliveira', '11988882222', 'ana.oliveira@email.com'),
('Bruno Mendes Costa', '11977773333', 'bruno.costa@email.com'),
('Julia de Souza Lima', '11966664444', 'julia.lima@email.com'),
('Diego Rocha Ferreira', '11955555555', 'diego.rocha@email.com');

-- 2. Inserindo 5 Quadras
INSERT INTO quadras (nome, tipo, preco_hora) VALUES
('Quadra de Tênis Saibro A', 'Tênis', 80.00),
('Quadra de Tênis Saibro B', 'Tênis', 80.00),
('Campo Society Premium 1', 'Society', 120.00),
('Campo Society Premium 2', 'Society', 120.00),
('Arena Areia Beach 1', 'Beach Tennis', 60.00);

-- 3. Inserindo 5 Materiais
INSERT INTO materiais (nome, estoque_total, preco_aluguel) VALUES
('Bola de Futebol Society', 10, 15.00),
('Raquete de Tênis', 8, 20.00),
('Bola de Tênis (Tubo c/ 3)', 15, 10.00),
('Colete Azul (Lote c/ 10)', 5, 25.00),
('Raquete de Beach Tennis', 12, 15.00);

-- 4. Inserindo 5 Reservas
INSERT INTO reservas (id_cliente, id_quadra, data_reserva, hora_inicio, hora_fim, status) VALUES
(1, 3, '2026-11-10', '19:00:00', '21:00:00', 'Confirmada'),
(2, 1, '2026-11-10', '18:00:00', '19:00:00', 'Confirmada'),
(3, 5, '2026-11-11', '08:00:00', '10:00:00', 'Confirmada'),
(4, 3, '2026-11-12', '20:00:00', '21:00:00', 'Cancelada'),
(5, 2, '2026-11-12', '19:00:00', '21:00:00', 'Confirmada');

-- 5. Inserindo os Vínculos de Materiais por Reserva (N:N)
INSERT INTO itens_reserva (id_reserva, id_material, quantidade) VALUES
(1, 1, 1),
(1, 4, 1),
(2, 2, 2),
(2, 3, 1),
(3, 5, 4);
