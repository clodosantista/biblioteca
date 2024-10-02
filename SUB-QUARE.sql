USE bd_carro;

-- quais carros tem o preco acima da media de todos os carros?
-- 1) descobir a media
SELECT AVG(valor) FROM tb_carros;

-- 4242500.000000

-- 2) filtar os carros que estao acima da media
SELECT * FROM tb_carros
WHERE valor > 4242500.000000;

-- resultado do misturao
SELECT * FROM tb_carros
WHERE valor > (SELECT AVG(valor) FROM tb_carros);

-- exemplo 2: quais proprietarios tem o carro da marca fiat?
-- 1) descobir os proprietarios que tem o carro com a marca fiat
SELECT * FROM tb_carros; -- ID 1

SELECT * FROM tb_proprietario
WHERE id_carro = 2;

-- 2) descobir carros cadastros da marca
SELECT * FROM tb_proprietario
WHERE marca = 'ford';

-- resultado
SELECT nome FROM tb_proprietario
WHERE is_carro = (SELECT * FROM tb_carros WHERE marca = 'ford');


