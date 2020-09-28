CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categorias (
	id bigint AUTO_INCREMENT,
    areaDeAtuacao varchar (75) NOT NULL,
    profissao varchar (50) NOT NULL,
    tipoModulo varchar (50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
	id bigint AUTO_INCREMENT,
    nome varchar (100) NOT NULL,
    qntdModulos int NOT NULL,
    reconhecimentoEx varchar (3) NOT NULL,
    valorMensal decimal (7,2) NOT NULL,
    matricula decimal (7,2) NOT NULL,
    id_categoria bigint,
    PRIMARY KEY (id),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (areaDeAtuacao, profissao, tipoModulo) VALUES
	("Gestão de Projetos", "Engenharia/Arquitetura", "Presencial"),
    ("Desenho Técnico Mecânico", "Projetista", "Semi-Presencial"),
    ("Java Developer Back-end", "Tecnologia da Informação", "A distância");
    
INSERT INTO tb_produtos (nome, qntdModulos, reconhecimentoEx, valorMensal, matricula, id_categoria) VALUES
	("Projetos Elétricos", 3, "não", 280.75, 320.00, 1),
    ("Projetos Estruturais Civis", 4, "sim", 490.50, 750.00, 1),
    ("Desenho para Tôrnos", 2, "não", 130.73, 89.90, 2),
    ("Lógica de programação JAVA", 4, "sim", 149.90, 149.90, 3),
    ("Banco de dados com JAVA", 4, "sim", 189.00, 220.80, 3);
    
SELECT * FROM tb_produtos WHERE valorMensal > 50.00;
SELECT * FROM tb_produtos WHERE valorMensal > 3.00 and valorMensal < 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%JAV%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria= tb_categorias.id;

-- SELECT da tabela referenciada, JOIN a tabela que eu quero buscar informação
-- ON item da tabela referenciada que é = ao item da tabela que quero a informação.

SELECT tb_produtos.nome, tb_produtos.valorMensal, tb_produtos.qntdModulos, tb_categorias.tipoModulo, tb_categorias.areaDeAtuacao
	FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria= tb_categorias.id
		AND tb_categorias.id = 3;