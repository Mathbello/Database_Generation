CREATE DATABASE db_ecommerce2;

USE db_ecommerce2;

CREATE TABLE tb_categoria (
	id bigint AUTO_INCREMENT,
    categoria varchar (50) NOT NULL,
    marca varchar (50) NOT NULL,
    departamento varchar (20) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
	id bigint AUTO_INCREMENT,
    nome varchar (60) NOT NULL,
    modelo varchar (25) NOT NULL,
    cor varchar (20) NOT NULL,
    valor decimal (7,2) NOT NULL,
    categoria_id bigint NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_categoria (categoria, marca, departamento) VALUES
	("Eletrônicos", "Samsumg", "Escritório"),
    ("Cama Mesa Banho", "Limpin", "Quarto"),
    ("Automóveis", "DX Car", "Pneus"),
    ("Talheres", "Tramontina", "Cozinha"),
    ("Livros", "JBC", "Mangás");
    
INSERT INTO tb_produtos (nome, modelo, cor, valor, categoria_id) VALUES
	("Televisão", "Smart 4K", "Preta", 3999.90, 1),
    ("Demons Slayer", "Capa Simples", "Preto e Cinza", 17.90, 5),
    ("Carpete", "Emborrachado", "Preto", 53.90, 3),
    ("Lençol", "Linho", "Roxo", 75.90, 2),
    ("Conjunto Facas", "Churrasco", "Alumínio", 80.00, 4),
    ("Notebook", "Galaxy", "Branco", 3999.90, 1);
    
SELECT * FROM tb_produtos WHERE valor > 2000;
SELECT * FROM tb_produtos WHERE valor > 1000 and valor < 2000;
SELECT * FROM tb_produtos WHERE nome LIKE 'c%';