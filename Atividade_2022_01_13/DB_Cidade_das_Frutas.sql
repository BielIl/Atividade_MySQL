CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_categorias(

	id_categoria BIGINT(5) AUTO_INCREMENT,
    	tipo_categoria VARCHAR(20),
    	setor_categoria CHAR(8),
    
    PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produtos(

	id_produto BIGINT(5) AUTO_INCREMENT,
    	nome_produto VARCHAR(20),
    	valor_produto DECIMAL(10,2),
    
    	PRIMARY KEY (id_produto),
    
    	categoria_produto BIGINT(5),
    	FOREIGN KEY (categoria_produto) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias(tipo_categoria, setor_categoria)
VALUES 		("Folhagem", "Setor001"),
		("Frutas", "Setor002"),
        	("Legumes", "Setor003"),
        	("Raizes", "Setor004"),
        	("Outros", "Setor005");
        
INSERT INTO tb_produtos(nome_produto, valor_produto, categoria_produto)
VALUES 		("Alface", 4.99, 1),
		("Alecrin", 2.99, 1),
        	("Bacuri", 2.42, 2),
        	("Banana", 1.99, 2),
        	("Chicoria", 3.50, 3),
        	("Cenoura", 2.99, 4),
        	("Cebolinha", 0.99, 3),
        	("Salsa", 0.99, 3);
        
SELECT * FROM tb_produtos
WHERE valor_produto > 2.00;

SELECT * FROM tb_produtos
WHERE valor_produto > 3.00 AND valor_produto < 6.00;

SELECT * FROM tb_produtos
WHERE nome_produto LIKE "%C%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id_categoria = categoria_produto;
