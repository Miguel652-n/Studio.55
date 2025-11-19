-- Banco de dados Studio55
CREATE DATABASE IF NOT EXISTS Studio55;
USE Studio55;

-- ==========================
-- Tabela de usuários
-- ==========================
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ==========================
-- Tabela de serviços
-- ==========================
CREATE TABLE IF NOT EXISTS servicos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    categoria ENUM('Corte','Coloração','Penteado') NOT NULL,
    nome_servico VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);

-- Inserir serviços do site
INSERT INTO servicos (categoria, nome_servico, preco) VALUES
('Corte', 'Corte reto', 150.00),
('Corte', 'Corte em camadas', 200.00),
('Corte', 'Corte chanel', 130.00),
('Corte', 'Corte pixie', 130.00),
('Corte', 'Wolf cut', 95.00),
('Corte', 'Butterfly haircut', 150.00),
('Coloração', 'Ruivo', 700.00),
('Coloração', 'Loiro Global', 1500.00),
('Coloração', 'Platinado', 1200.00),
('Coloração', 'Luzes', 750.00),
('Coloração', 'Preto Natural', 250.00),
('Coloração', 'Castanho Iluminado', 400.00),
('Penteado', 'Semi Preso', 120.00),
('Penteado', 'Trança', 180.00),
('Penteado', 'Coque Trançado', 220.00),
('Penteado', 'Coque Despojado', 170.00),
('Penteado', 'Trança boxeadora', 120.00),
('Penteado', 'Trança Cascata', 200.00);

-- ==========================
-- Tabela de agendamentos
-- ==========================
CREATE TABLE IF NOT EXISTS agendamentos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255),
  telefone VARCHAR(20),
  servico VARCHAR(100),
  data VARCHAR(20),
  horario VARCHAR(10)
);