CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id_produto BIGINT(5) AUTO_INCREMENT,
    nome_produto VARCHAR(20),
    tipo_produto VARCHAR(20),
    valor_produto DECIMAL(10,2),
    validade_produto VARCHAR(10) DEFAULT NULL,
    PRIMARY KEY (id_produto)
);

INSERT INTO tb_produtos(nome_produto, tipo_produto, valor_produto)
VALUES 	("Revista", "Diversos", 16.99),
		("Cigarro", "Diversos", 17.99),
        ("Jogos Eletronicos", "E-Gamer", 199.99);
        
INSERT INTO tb_produtos(nome_produto, tipo_produto, valor_produto, validade_produto)
VALUES	("Hot-Dog", "Alimentos", 14.99, "2022/01/14"),
		("Milho", "Alimentos", 6.99, "2022/04/11"),
        ("Ervilha em Lata", "Enlatados", 4.99, "2022/09/11");
        
SELECT * FROM tb_produtos
WHERE valor_produtos > 11.00;

SELECT * FROM tb_produtos
WHERE valor_produtos < 9.00;

UPDATE tb_produtos SET valor_produto = 7.00 WHERE id_produto =6;