CREATE DATABASE db_construindo_nossa_vida;

USE db_construindo_nossa_vida;

CREATE TABLE tb_categorias (
	id bigint AUTO_INCREMENT,
    categoria varchar (75) NOT NULL,
    departamento varchar (50) NOT NULL,
    marca varchar (50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
	id bigint AUTO_INCREMENT,
    nome varchar (100) NOT NULL,
    tipo varchar (30) NOT NULL,
    medida varchar (10) NOT NULL,
    cor varchar (20) NOT NULL,
    valor decimal (7,2) NOT NULL,
    id_categoria bigint,
    PRIMARY KEY (id),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (categoria, departamento, marca) VALUES
	("Manual", "Ferramentas", "Tramontina"),
    ("Elétrico", "Utensílios", "Pial"),
    ("Combustão", "Jardinagem", "CortaCorta");
    
INSERT INTO tb_produtos (nome, tipo, medida, cor, valor, id_categoria) VALUES
	("Cortador de Grama", "Motorizado", "Grande", "Verde", 4499.90, 3),
    ("Furadeira Elétrica", "Furadeira/Parafusadeira", "Pequena", "Cinza", 349.90, 1),
    ("Ventilador de Teto", "Automático", "Grande", "Branco", 129.90, 2),
    ("Janela Veneziana", "Alumínio", "2,00x1,50", "Prata", 149.90, 2),
    ("Porta", "Madeira", "2,20x0,90", "Mogmo", 220.80, 2);
    
SELECT * FROM tb_produtos WHERE valor > 50.00;
SELECT * FROM tb_produtos WHERE valor > 3.00 and valor < 60.00;
SELECT * FROM tb_produtos WHERE cor LIKE "%ci%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria= tb_categorias.id;

-- SELECT da tabela referenciada, JOIN a tabela que eu quero buscar informação
-- ON item da tabela referenciada que é = ao item da tabela que quero a informação.

SELECT tb_produtos.nome, tb_produtos.tipo, tb_produtos.valor, tb_categorias.departamento
	FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria= tb_categorias.id
		AND tb_categorias.id = 2;