-- Criando um banco de dados
CREATE DATABASE db_RHEmpresa;

-- Acessando o banco para usá-lo
USE db_RHEmpresa;

-- Criando uma de suas tabelas
CREATE TABLE tb_funcionario (
	id bigint AUTO_INCREMENT,
    nome varchar (100) NOT NULL,
    idade int NOT NULL,
    cargo varchar (40) NOT NULL,
    salario decimal (8,2) NOT NULL,
    PRIMARY KEY (id)
);
-- DROP TABLE tb_funcionario;
-- Populando a tabela
INSERT INTO tb_funcionario (nome, idade, cargo, salario) VALUES ("Matheus", 25, "Junior Java Developer", 2500.00);
INSERT INTO tb_funcionario (nome, idade, cargo, salario) VALUES ("Weslley", 25, "Junior Java Developer", 2750.85);
INSERT INTO tb_funcionario (nome, idade, cargo, salario) VALUES ("Mario", 35, "Encanador", 9999.99);
INSERT INTO tb_funcionario (nome, idade, cargo, salario) VALUES ("Bowser", 120, "Ladrão de Princesas", 685.50);
INSERT INTO tb_funcionario (nome, idade, cargo, salario) VALUES ("Robin Hood", 38, "Roubar Ricos", 00.00);

-- Selecionando dados específicos da tabela
SELECT * FROM tb_funcionario WHERE salario > 2000;
SELECT * FROM tb_funcionario WHERE salario < 2000;

-- Atualizando um dado da tabela
UPDATE tb_funcionario SET nome= "Luigi", cargo= "Encanador Aux." WHERE id= 2;