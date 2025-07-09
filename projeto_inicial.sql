-- Criação da tabela de clientes
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    cidade VARCHAR(100),
    estado VARCHAR(2)
);

-- Inserção de dados fictícios
INSERT INTO clientes (nome, email, cidade, estado) VALUES
('Maria Silva', 'maria.silva@email.com', 'São Paulo', 'SP'),
('João Souza', 'joao.souza@email.com', 'Rio de Janeiro', 'RJ'),
('Ana Pereira', 'ana.pereira@email.com', 'Belo Horizonte', 'MG'),
('Carlos Lima', 'carlos.lima@email.com', 'Salvador', 'BA'),
('Fernanda Costa', 'fernanda.costa@email.com', 'Curitiba', 'PR'),
('Lucas Oliveira', 'lucas.oliveira@email.com', 'Porto Alegre', 'RS'),
('Juliana Alves', 'juliana.alves@email.com', 'Recife', 'PE'),
('Rodrigo Martins', 'rodrigo.martins@email.com', 'Fortaleza', 'CE'),
('Paula Rocha', 'paula.rocha@email.com', 'Brasília', 'DF'),
('Thiago Santos', 'thiago.santos@email.com', 'Manaus', 'AM');

-- Consultas básicas

-- 1. Ver todos os clientes
SELECT * FROM clientes;

-- 2. Ver apenas clientes do estado de SP
SELECT * FROM clientes
WHERE estado = 'SP';

-- 3. Contar quantos clientes tem por estado
SELECT estado, COUNT(*) AS total_clientes
FROM clientes
GROUP BY estado
ORDER BY total_clientes DESC;

-- 4. Buscar clientes cujo nome começa com "J"
SELECT * FROM clientes
WHERE nome ILIKE 'J%';

-- 5. Atualizar email de um cliente
UPDATE clientes
SET email = 'novo.email@email.com'
WHERE nome = 'Maria Silva';

-- 6. Deletar um cliente
DELETE FROM clientes
WHERE nome = 'Thiago Santos';