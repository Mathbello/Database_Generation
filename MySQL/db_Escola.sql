CREATE DATABASE db_Escola;

USE db_Escola;

CREATE TABLE tb_Aluno (
	ra bigint AUTO_INCREMENT,
    nome varchar (100) NOT NULL,
    periodo varchar (5) NOT NULL,
    media decimal (3.1) NOT NULL,
    materia varchar (15) NOT NULL,
    PRIMARY KEY (ra)
);

drop table tb_aluno;

INSERT INTO tb_aluno (nome, periodo, media, materia) VALUES ("Matheus", "Manhã", 7.5, "Português");
INSERT INTO tb_aluno (nome, periodo, media, materia) VALUES ("Joãozinho", "Noite", 4, "Filosofia");
INSERT INTO tb_aluno (nome, periodo, media, materia) VALUES ("Mariazinha", "Tarde", 9.5, "Física");
INSERT INTO tb_aluno (nome, periodo, media, materia) VALUES ("Zézinho", "Manhã", 6, "Artes");
INSERT INTO tb_aluno (nome, periodo, media, materia) VALUES ("Creison", "Manhã", 3, "Matemática");
INSERT INTO tb_aluno (nome, periodo, media, materia) VALUES ("Jubileu", "Tarde", 10, "Ed. Física");
INSERT INTO tb_aluno (nome, periodo, media, materia) VALUES ("Florentina", "Noite", 4, "Geografia");
INSERT INTO tb_aluno (nome, periodo, media, materia) VALUES ("Frorilda", "Manhã", 8, "Geografia");

SELECT * FROM tb_aluno WHERE media >= 7;
SELECT * FROM tb_aluno WHERE media < 7;

UPDATE tb_aluno SET media= 7 WHERE ra= 4;