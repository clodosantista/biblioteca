-- CRIAR BASE DE DADOS (DATABASE)

CREATE DATABASE db_biblioteca;

USE db_biblioteca;

-- CRIAR TABELA

-- 1) media do ano de publicacao dos livros
 SELECT AVG( ano_publicacao) FROM tb_livros;
 -- 2) puxar os libros acima da media
 SELECT id, titulo FROM tb_livros WHERE ano_publicacao ->;
 -- 3) puxar os autores
 SELECT id, nome FROM tb_autores;
 
 -- b). encontre os membros que realizam mais de um emprestimo
     1) SELECT na tb_membros;
     
     2) SLECT NA tb_emprestimo
     SELECT id_membro FROM tb_emprestimo GROUP BY id HAVING COUNT(id) > 1;
     -- agrupar o numero de emprfestimos realizados por membro
     
     -- resultado
     SELECT nome FROM tb_membros WHERE id IN (select id_membros FROM tb_emprestimos GROUP BY id_membro HAVING COUNT(id_membro) > 1);
     
     -- c) liste os livros que foram emprestados ao menos uma vez.
     -- os livros que tiveram emprestimo
     SELECT id_livro FROM  tb_emprestimo;
     
     -- resultado
     SELECT titulo FROM tb_livros
     WHERE id IN (SELECT id_livro  FROM tb_livro;
     
     -- d) consulte os livros que ainda nao foram emprestados
	 -- os titulos desse livro
     SELECT id_livro FROM tb_livros;
     
     -- os titulos que nao estao na tabela emprestimo
     SELECT id_livro FROM tb_emprestimo;
 
 SELECT * FROM tb_livros
 
 set @@autocommit = ON;

CREATE TABLE tb_autores(
id_autor INT(10) NOT NULL,
nome VARCHAR(100) NOT NULL,
data_nacimento DATE NOT NULL,
PRIMARY KEY(id_autor) 
);

CREATE TABLE tb_livros(
id_livro INT(10) NOT NULL,
titulo VARCHAR(100) NOT NULL,
ano_publicacao VARCHAR (100) NOT NULL,
id_autor INT(10) NOT NULL,
PRIMARY KEY(id_livro),
FOREIGN KEY (id_autor) REFERENCES tb_autores(id_autor)
);

CREATE TABLE Membros (
    id_membro INT PRIMARY KEY,
    nome VARCHAR(100),
    data_adesao DATE
);


CREATE TABLE Emprestimos (
    id_emprestimo INT PRIMARY KEY,
    id_membro INT,
    id_livro INT,
    data_emprestimo DATE,
    data_devolucao DATE,
    FOREIGN KEY (id_membro) REFERENCES Membros(id_membro),
    FOREIGN KEY (id_livro) REFERENCES Livros(id_livro)
);

