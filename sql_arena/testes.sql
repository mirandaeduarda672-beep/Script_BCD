USE arena_multiesportes;
-- buscando nome em ordem alfabetica
SELECT id_cliente, nome, email 
FROM clientes 
ORDER BY nome ASC;

--  exibindo as quadras que tenham o nome tenis em seu nome
SELECT * 
FROM quadras 
WHERE nome LIKE '%Tênis%';

-- procurar reserva dessa dta em especifico
SELECT * 
FROM reservas 
WHERE data_reserva = '2026-11-10';

-- procurar materiais com essa faixa de preço
SELECT * 
FROM materiais 
WHERE preco_aluguel BETWEEN 12.00 AND 22.00;

-- contar total de reservas
SELECT status, COUNT(*) AS total_reservas 
FROM reservas 
GROUP BY status;

-- contar o total de materiais
SELECT SUM(estoque_total) AS total_itens_estoque 
FROM materiais;

-- relatório completo
SELECT 
    reservas.id_reserva, 
    clientes.nome, 
    quadras.nome, 
    reservas.data_reserva 
FROM reservas
INNER JOIN clientes ON reservas.id_cliente = clientes.id_cliente
INNER JOIN quadras ON reservas.id_quadra = quadras.id_quadra;

-- essa ja é autoexplicativo:)      
SELECT * 
FROM reservas 
WHERE reservas.status = 'Cancelada';

-- mostra os materiais alugados na reserva código 1
SELECT 
    materiais.nome, 
    itens_reserva.quantidade 
FROM itens_reserva
INNER JOIN materiais ON itens_reserva.id_material = materiais.id_material
WHERE itens_reserva.id_reserva = 1;

-- mostra os clientes com o nome final em @email
SELECT * 
FROM clientes 
WHERE clientes.email LIKE '%@email.com';

-- tira a média do aluguel das quadras
SELECT AVG(quadras.preco_hora) 
FROM quadras;
 
 -- mostra o ID da reserva e o total de materiais diferentes que foram alugados nela (Função COUNT com agrupamento)
SELECT itens_reserva.id_reserva, COUNT(itens_reserva.id_material) 
FROM itens_reserva 
GROUP BY itens_reserva.id_reserva;

-- lista quadras que cobram mais de R$ 70,00 por hora, ordenadas do maior para o menor preço
SELECT * 
FROM quadras 
WHERE quadras.preco_hora > 70.00 
ORDER BY quadras.preco_hora DESC;

-- consulta todas as reservas feitas no período da noite, a partir das 18h
SELECT * 
FROM reservas 
WHERE reservas.hora_inicio >= '18:00:00';

-- calcula o valor total gasto apenas com o aluguel de materiais na Reserva 
    SELECT SUM(itens_reserva.quantidade * materiais.preco_aluguel) 
    FROM itens_reserva
    INNER JOIN reservas ON itens_reserva.id_reserva = reservas.id_reserva
    INNER JOIN materiais ON itens_reserva.id_material = materiais.id_material
    WHERE reservas.id_reserva = 1;
-- • O operador de multiplicação * calcula o custo de cada item (Quantidade × Preço de Aluguel).
-- A função SUM() junta esses valores e faz a soma total de todos os itens alugados naquela reserva específica.
-- Os dois INNER JOIN conectam as reservas aos materiais corretos usando a tabela intermediária como ponte.












