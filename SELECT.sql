-- 1. 
SELECT nome, categoria, preco 
FROM produtos 
ORDER BY preco ASC;

-- 2. 
SELECT * 
FROM produtos
WHERE nome LIKE 'Suporte%';

-- 3. 
SELECT * 
FROM produtos 
WHERE nome LIKE '%Gamer%';

-- 4. 
SELECT nome, categoria, estoque 
FROM produtos 
WHERE categoria = 'Hardware' AND preco < 500.00;

-- 5.
SELECT nome, categoria 
FROM produtos 
WHERE categoria = 'Móveis' OR categoria = 'Escritório';

-- 6.
SELECT nome, categoria 
FROM produtos 
WHERE categoria IN ('Redes', 'Monitores', 'Informática');

-- 7.
SELECT nome, categoria 
FROM produtos 
WHERE estoque = 0;

-- 8.
SELECT * 
FROM produtos 
WHERE preco BETWEEN 100.00 AND 400.00 
ORDER BY preco DESC;

-- 9.
SELECT nome, categoria 
FROM produtos 
WHERE categoria != 'Periféricos';

-- 10. 
SELECT COUNT(*) AS total_produtos 
FROM produtos;

-- 11.
SELECT COUNT(*) AS quantidade 
FROM produtos 
WHERE preco > 1000.00;

-- 12. 
SELECT SUM(estoque) AS total_itens_estoque 
FROM produtos;

-- 13. 
SELECT AVG(preco) AS media_precos 
FROM produtos;

-- 14. 
SELECT MAX(preco) AS maior_preco, MIN(preco) AS menor_preco 
FROM produtos;

-- 15. 
SELECT MAX(preco) AS maior_preco_perifericos 
FROM produtos 
WHERE categoria = 'Periféricos';

-- 16. 
SELECT categoria, COUNT(*) AS quantidade_produtos 
FROM produtos 
GROUP BY categoria;

-- 17.
SELECT categoria, SUM(estoque) AS total_estoque 
FROM produtos 
GROUP BY categoria;

-- 18. 
SELECT categoria, AVG(preco) AS preco_medio 
FROM produtos 
GROUP BY categoria;

-- 19. 
SELECT categoria, COUNT(*) AS quantidade 
FROM produtos 
GROUP BY categoria 
HAVING COUNT(*) > 4;

-- 20. 
SELECT categoria, AVG(preco) AS preco_medio 
FROM produtos 
GROUP BY categoria 
HAVING AVG(preco) > 300.00;

-- 21. 
SELECT nome, preco, estoque, (preco * estoque) AS valor_total_estoque 
FROM produtos 
WHERE estoque > 0 
ORDER BY valor_total_estoque DESC;

-- 22. 
SELECT * 
FROM produtos 
WHERE estoque <= 5 AND categoria IN ('Hardware', 'Periféricos');

-- 23. 
SELECT * 
FROM produtos 
WHERE data_cadastro BETWEEN '2023-01-01' AND '2023-03-31' 
ORDER BY data_cadastro DESC;

-- 24. 
SELECT categoria, AVG(estoque) AS media_estoque 
FROM produtos 
WHERE categoria != 'Monitores' 
GROUP BY categoria 
HAVING AVG(estoque) < 15;

-- 25. 
SELECT * 
FROM produtos 
WHERE preco > (SELECT AVG(preco) FROM produtos);