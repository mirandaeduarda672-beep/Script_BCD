CREATE DATABASE IF NOT EXISTS arena_multiesportes;
USE arena_multiesportes;

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE quadras (
    id_quadra INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    tipo VARCHAR(30) NOT NULL,
    preco_hora DECIMAL(10,2) NOT NULL
);
CREATE TABLE materiais (
    id_material INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    estoque_total INT NOT NULL,
    preco_aluguel DECIMAL(10,2) NOT NULL
);
CREATE TABLE reservas (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_quadra INT NOT NULL,
    data_reserva DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fim TIME NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'Confirmada',
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_quadra) REFERENCES quadras(id_quadra)
);
CREATE TABLE itens_reserva (
    id_reserva INT NOT NULL,
    id_material INT NOT NULL,
    quantidade INT NOT NULL,
    PRIMARY KEY (id_reserva, id_material),
    FOREIGN KEY (id_reserva) REFERENCES reservas(id_reserva) ON DELETE CASCADE,
    FOREIGN KEY (id_material) REFERENCES materiais(id_material)
);