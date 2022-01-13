CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id_categoria_pizza BIGINT(5) AUTO_INCREMENT,
    tipo_pizza VARCHAR(20),
    PRIMARY KEY (id_categoria_pizza)
);

CREATE TABLE tb_pizzas(
    id_pizza BIGINT(5) AUTO_INCREMENT,
    massa_pizza VARCHAR(20),
    sabor1_pizza VARCHAR(20),
    sabor2_pizza VARCHAR(20) NULL,
    sabor3_pizza VARCHAR(20) NULL,
    sabor4_pizza VARCHAR(20) NULL,
    valor_pizza DECIMAL(10,2),
    PRIMARY KEY (id_pizza),
    tipo_pizza BIGINT,
    FOREIGN KEY (tipo_pizza) REFERENCES tb_categorias(id_categoria_pizza)
);

INSERT INTO tb_categorias(tipo_pizza)
	VALUES 	("Inteira"),
			("Meia-Meia"),
			("Broto"),
			("Familia"),
			("Pedaco");

INSERT INTO tb_pizzas(massa_pizza, sabor1_pizza, sabor2_pizza, sabor3_pizza, sabor4_pizza, valor_pizza, tipo_pizza)
	VALUES  ("Nomral", "Calabresa", "Cheddar", null, null, 23.99, 2),
			("Recheada", "Cheddar", null, null, null, 19.99, 1),
            ("Recheada", "Frango", "Cheddar", "calabresa", null, 26.99, 4),
            ("Nomral", "Frango", null, null, null, 19.99, 3),
            ("Recheada", "Mussarela", "Margherita", null, null, 25.99, 2),
            ("Nomral", "Mussarela", null, null, null, 9.99, 5),
            ("Recheada", "Portuguesa", null, null, null, 14.99, 3),
            ("Recheada", "Portuguesa", "Calabresa", "Margherita", "Moda da Casa", 41.99, 4);
            
SELECT * FROM tb_pizzas
WHERE valor_pizza > 30;

SELECT * FROM tb_pizzas
WHERE valor_pizza > 20 AND valor_pizza < 40;

SELECT * FROM tb_pizzas
WHERE sabor1_pizza LIKE "%M%";

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id_categoria_pizza = id_pizza;

SELECT * FROM tb_pizzas
WHERE tipo_pizza = 4;

	