CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
	id bigint AUTO_INCREMENT,
    nome varchar (100) NOT NULL,
    marca varchar (50) NOT NULL,
    modelo varchar (100) NOT NULL,
    valor decimal (7,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, marca, modelo, valor) VALUES ("Console", "Sony", "Playstation 1", 320.00);
INSERT INTO tb_produtos (nome, marca, modelo, valor) VALUES ("Console", "Sony", "Playstation 2", 590.00);
INSERT INTO tb_produtos (nome, marca, modelo, valor) VALUES ("Console", "Sony", "Playstation 3", 800.00);
INSERT INTO tb_produtos (nome, marca, modelo, valor) VALUES ("Console", "Sony", "Playstation 4", 1890.90);
INSERT INTO tb_produtos (nome, marca, modelo, valor) VALUES ("Console", "Sony", "Playstation 5", 4999.99);
INSERT INTO tb_produtos (nome, marca, modelo, valor) VALUES ("Console", "Microsoft", "Xbox 360", 650.00);
INSERT INTO tb_produtos (nome, marca, modelo, valor) VALUES ("Console", "Microsoft", "Xbox One S", 1280.00);
INSERT INTO tb_produtos (nome, marca, modelo, valor) VALUES ("Console", "Microsoft", "Xbox Séries X", 2999.90);

SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET valor= 490.50 WHERE id= 6;