CREATE DATABASE db_RH2;

USE db_RH2;

drop table tb_cargo, tb_funcionario;

CREATE TABLE tb_cargo (
	id bigint AUTO_INCREMENT,
    cargo varchar (40) NOT NULL,
    turno varchar (10) NOT NULL,
    departamento varchar (50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_funcionario (
	id bigint AUTO_INCREMENT,
    nome varchar (100) NOT NULL,
    vr varchar (3) NOT NULL,
    vt varchar (3) NOT NULL,
    salario decimal (7,2) NOT NULL,
    cargo_id bigint NOT NULL, -- Criando atributo que receberá a FOREIGN KEY
    PRIMARY KEY (id),
    FOREIGN KEY (cargo_id) REFERENCES tb_cargo(id) -- Referenciando a FOREIGN KEY no atributo
);

INSERT INTO tb_cargo (cargo, turno, departamento) VALUES 
	("Eletricista de Manutenção", "Integral", "Manutenção"),
    ("Auxiliar Geral", "Tarde", "Manutenção"),
    ("Mecânico de Manutenção", "Integral", "Manutenção"),
    ("Jovem Aprendiz", "Manhã", "Recursos Humanos");
    
INSERT INTO tb_funcionario (nome, vr, vt, salario, cargo_id) VALUES
	("Franco", "Não", "Sim", 2250.35, 3),
    ("Weslley", "Não", "Não", 1225.63, 2),
    ("Alex", "Sim", "Não", 1095.00, 4),
    ("Matheus", "Não", "Sim", 2250.35, 1);
    
SELECT * FROM tb_funcionario WHERE salario > 2000;
SELECT * FROM tb_funcionario WHERE salario > 1000 AND salario < 2000;
SELECT * FROM tb_funcionario WHERE nome LIKE '%c%';