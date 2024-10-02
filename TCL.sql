-- TCL -> TRASACT CONTROL LANGUAGE

-- ACID
-- ATOMICIDADE ->
-- CONSISTENCIA ->
-- ISOLAMENTO ->
-- DURABILIDADE ->

-- COMMIT
-- salvar as alteracoes no banco de dados.CONSOLIDAR A TRANSACAO

-- ROLLBACK
-- quando houver uma falha no processo, ele nao salva.transacao totalmentr desfeita

SELECT @@autocommit;
set @@autocommit = OFF; -- desativa o 'salvar automaticamente'

-- ROLLBACK SIMPLES
-- INSERT 
INSERT INTO tb_proprietario VALUE (
'6',
'cesar',
'3',
'30'
);
ROLLBACK;

INSERT INTO tb_proprietario VALUE (
'7',
'AUGUSTO',
'1',
'25'
);
-- DELETE
DELETE FROM tb_proprietario
WHERE id = 3;
ROLLBACK;

SELECT * FROM tb_proprietario;

-- UPDATE
UPDATE tb_proprietario
SET nome = 'fatima'
WHERE id = '2';

ROLLBACK;

START TRANSACTION;
INSERT INTO tb_proprietario VALUES(
'3',
'Antonio',
'3',
'10'
);

COMMIT;

SELECT * FROM tb_proprietario;