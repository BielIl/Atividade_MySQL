CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id_aluno BIGINT(5) AUTO_INCREMENT,
    	nome_aluno VARCHAR(20),
    	data_nacimento_aluno VARCHAR(10),
    	sala_serie_aluno CHAR(4),
    	nota_aluno INT,
    	PRIMARY KEY (id_aluno)
);

INSERT INTO tb_estudantes(nome_aluno, data_nacimento_aluno, sala_serie_aluno, nota_aluno)
VALUES 		("Rodrigo", "1998/07/11", "5AT", 6),
		("Gustavo", "2000/11/07", "1MBN", 6),
        	("Armando", "2002/10/15", "3MAN", 6),
        	("Bruno", "2002/09/07", "3MAM", 9),
        	("Isabel", "2000/09/11", "2MAN", 8),
        	("Gabriel", "1999/10/20", "5AT", 7),
        	("David", "2000/10/12", "5AM", 8),
        	("Kaylaine", "1999/06/09", "6AM", 6),
        	("Giuliana", "2000/09/09", "2MAN", 10);
        
SELECT * FROM tb_estudantes
WHERE nota_aluno > 6;

SELECT * FROM tb_estudantes
WHERE nota_aluno < 7;

UPDATE tb_estudantes SET nota_aluno = 7 WHERE nota_aluno = 6;
