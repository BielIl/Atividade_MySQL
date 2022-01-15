CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categorias(

	id_categoria BIGINT(5) AUTO_INCREMENT,
    tipo_categoria VARCHAR(20),
    setor_produto VARCHAR(4),
    
    PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produtos(

	id_produto BIGINT(5) AUTO_INCREMENT,
    nome_produto VARCHAR(64),
    valor_produto DECIMAL(10,2),
    
    PRIMARY KEY(id_produto),
    
    categoria_produto BIGINT,
    FOREIGN KEY (categoria_produto) REFERENCES tb_categorias(id_categoria)
    
);

INSERT INTO tb_categorias(tipo_categoria, setor_produto)
VALUES 	("Medicamento", "Se01"),
		("Medicamento", "Se02"),
        ("Diverso", "Se06"),
        ("Medicamento", "Se03"),
        ("Alimento", "Se05");
        
INSERT INTO tb_produtos(nome_produto, valor_produto, categoria_produto)
VALUES 	("Clonazepan", 69.99, 1),
		("Diazepam", 79.99, 1),
        ("Cloridrato de Metformina", 39.99, 2),
        ("Diclofenaco Sodico", 19.99, 4),
        ("Camisinha", 0.99, 3),
        ("Revista", 16.72, 3),
        ("Barra Nutritiva", 3.99, 5),
        ("Barra Sabor Banana", 2.99, 5);
        
SELECT * FROM tb_produtos
WHERE valor_produto > 50;

SELECT * FROM tb_produtos
WHERE valor_produto > 3 AND valor_produto < 50;

SELECT * FROM tb_produtos
WHERE nome_produto LIKE "%B%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id_categoria = categoria_produto;