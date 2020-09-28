CREATE DATABASE db_casa_das_carnes;

USE db_casa_das_carnes;

CREATE TABLE tb_categorias (
	id bigint AUTO_INCREMENT,
    tipo varchar (6) NOT NULL,
    importado varchar (3) NOT NULL,
    pais varchar (20) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
	id bigint AUTO_INCREMENT,
    nome varchar (50) NOT NULL,
    temperado varchar (3) NOT NULL,
    qualidade varchar (8) NOT NULL,
    quantidade float (6,3) NOT NULL,
    valor decimal (6,2) NOT NULL,
    id_categoria bigint NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, importado, pais) VALUES
	("Aves", "não", "Brasil"),
    ("Bovino", "não", "Brasil"),
    ("Bovino", "sim", "Argentina"),
    ("Suíno", "não", "Brasil"),
    ("Outro", "não", "Brasil");
    
INSERT INTO tb_produtos (nome, temperado, qualidade, quantidade, valor, id_categoria) VALUES
	("peito de frango", "sim", "primeira", 1.000, 18.90, 1),
    ("carne moída", "não", "segunda", 1.000, 19.90, 2),
    ("bisteca", "sim", "primeira", 1.000, 22.90, 4),
    ("batata smile", "não", "primeira", 1.000, 22.90, 5),
    ("lagarto", "sim", "primeira", 1.000, 27.90, 2),
    ("filé mingnon", "não", "primeira", 1.000, 48.99, 3),
    ("linguiça", "não", "segunda", 1.000, 12.90, 2),
    ("coxa sobrecoxa", "sim", "primeira", 1.000, 19.90, 1);
    
SELECT * FROM tb_produtos WHERE valor > 50.00;
SELECT * FROM tb_produtos WHERE valor > 3.00 and valor < 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%co%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria= tb_categorias.id;

-- SELECT da tabela referenciada, JOIN a tabela que eu quero buscar informação
-- ON item da tabela referenciada que é = ao item da tabela que quero a informação.

SELECT tb_produtos.nome, tb_produtos.valor, tb_categorias.tipo
	FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria= tb_categorias.id
		AND tb_categorias.id = 2;