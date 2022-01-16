CREATE DATABASE db_blog_pessoal;

USE db_blog_pessoal;

CREATE TABLE tb_temas(

  id_tema BIGINT NOT NULL AUTO_INCREMENT,
  descricao_tema VARCHAR(255) NOT NULL,

PRIMARY KEY (id_tema)
);

CREATE TABLE tb_usuarios(

  id_usuario BIGINT NOT NULL AUTO_INCREMENT,
  nome_usuario VARCHAR(255) NOT NULL,
  nick_usuario VARCHAR(255) NOT NULL,
  senha_usuario VARCHAR(255) NOT NULL,
  foto_usuario VARCHAR(255) NOT NULL,

  PRIMARY KEY (id_usuario)

);

CREATE TABLE tb_postagens(

  id_postagem BIGINT NOT NULL AUTO_INCREMENT,
  postagem_titulo VARCHAR(100) NOT NULL,
  postagem_texto VARCHAR(1000) NOT NULL,
  postagem_data DATE,

  postagem_tema BIGINT,
  FOREIGN KEY (postagem_tema) REFERENCES tb_temas(id_tema),

  postagem_usuario BIGINT,
  FOREIGN KEY (postagem_usuario) REFERENCES tb_usuarios(id_usuario),

  PRIMARY KEY (id_postagem)

);

