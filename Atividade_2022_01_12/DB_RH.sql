CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionario(
	id BIGINT(5) auto_increment,
   	nome VARCHAR(20) NOT NULL,
	idade INT(2) NOT NULL,
	salario INT(6),
	cargo VARCHAR(20),
    	PRIMARY KEY(id)
);

INSERT INTO tb_funcionario(nome, idade, salario, cargo) VALUE 
("ricardo", 23, 4300, "supervisor"),("juana", 44, 2200, "freelance"),("gustavo", 72, 4040, "zelador"),("pedro", 19, 3000, "dessenvolvedor fullstack"),("maria", 23, 7000, "analista");

SELECT * FROM tb_funcionario WHERE salario > 2000;

UPDATE tb_funcionario SET salario = 2200, salario = 2500;


