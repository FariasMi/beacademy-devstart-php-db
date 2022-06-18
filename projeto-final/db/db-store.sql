CREATE DATABASE db_store;

--selecionar o banco --
USE db_store

--criando tabelas

CREATE TABLE tb_category(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(100) NOT NULL
);

CREATE TABLE tb_product(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) Not NULL,
    description VARCHAR(100) NOT NULL,
    photo VARCHAR(255),
    price float (5,2),
    quantity INT(5) NOT NULL,
    create_at DATETIME NOT NULL,
    category_id INT(11) NOT NULL
);

-- inserindo categorias
INSERT INTO tb_category(name, description) VALUES
('Informática', 'Produtos de Informática e acessórios para computador' ),
('Escritório',  'Canetas, Cadernos, folhas, etc' ),
('Eletronicos', 'Tvs, Som portatil, Caixas de som etc' );

-- descrição da tabela
DESC tb_products