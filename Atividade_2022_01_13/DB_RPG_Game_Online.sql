CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id_classe BIGINT(5) AUTO_INCREMENT,
	nome_classe VARCHAR(10),
   	atributo_principal VARCHAR(12),
    	funcao CHAR(64),
    	PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagens(
	id_personagem BIGINT(5) AUTO_INCREMENT,
    	nome_personagem VARCHAR(24),
    	nivel_personagem INT(2),
    	ataque CHAR(64),
    	defesa CHAR(64),
    	PRIMARY KEY (id_personagem),
    	classe_personagem_id BIGINT,
    	FOREIGN KEY (classe_personagem_id) REFERENCES tb_classe(id_classe)
);

INSERT INTO tb_classes (nome_classe, atributo_principal, funcao) 
	VALUES  ("Mago", "Inteligencia", "Dano Magico, Controle de Grupo, Dano em Area(Magico)"), 
			("Guerreiro", "Forca", "Tank, Dano Fisico, Controle de Grupo"),
           	("Ladino", "Destreza", "Auto Dano Fisico, Esquiva, Mobilidade"),
           	("Arqueiro", "Destreza", "Dano Fisico a Distancia, Dano em Area(Fisico)"),
          	("Clerigo", "Fe", "Cura, Suporte, Tank");
          
INSERT INTO tb_personagens (nome_personagem, nivel_personagem, ataque, defesa, classe_personagem_id)
	VALUES  ("Rodrigo123", "3", "1d6+2", "1d6+2", "5"),
			("JogadorFeio", "4", "2d6+2", "1d6", "2"),
           	("DK", "2", "2d6+1", "1d6-1", "1"),
           	("Krafa'Khan", "3", "2d6+3", "1d20 (caso 16 a 20 esquiva do ataque) ou 1d6", "3"),
           	("BritadeiraDoTiao", "4", "2d6+1", "1d6", "4"),
           	("leeroy jenkins", "6", "2d6+4", "2d6+4", "2"),
           	("Boss", "1", "2d6", "1d6", "2"),
           	("GangDoVeloTroll", "6", "3d6", "2d6", "5");
          
SELECT * FROM tb_personagens
WHERE nivel_personagens > 2;

SELECT * FROM tb_personagens
WHERE nivel_personagens > 2 AND nivel_personagens < 7;

SELECT * FROM tb_personagens
WHERE nome_personagens LIKE "%C%";

SELECT * FROM tb_personagens
INNER JOIN tb_classe ON tb_classe.id_classe = classe_personagem_id;

SELECT * FROM tb_perssonagens
WHERE classe_perssonagem_id = 4;
