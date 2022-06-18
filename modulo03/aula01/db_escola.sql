-- iniciando o banco de dados no terminal
    mariadb -u root -p

-- Para criar um banco de dados: 
    CREATE DATABASE db_escola;

-- Selecionar o banco de dados
    USE db_escola;

--excluir tabela
DROP TABLE tb_professor;

 -- Criar tabela
 CREATE TABLE tb_professor(
    id INT(11) PRIMARY KEY AUTO_INCREMENT, --UUID
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL 
 
 );   

  CREATE TABLE tb_aluno(
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL,
    email VARCHAR(255) NOT NULL,
    matricula VARCHAR(10) NOT NULL 
 
 );   
 -- inserir 1 registro
 INSERT INTO tb_professor(nome,email,cpf) 
 VALUES ('Tanjiro','tanjiro.kamado@email.com','33345678901');

 INSERT INTO tb_professor(nome,email,cpf) 
 VALUES ('Shota','shoota.aizawa@email.com','74193131050');

-- inserir muitos registros
INSERT INTO tb_professor (nome,email,cpf) VALUES
('Shota','shoota.aizawa@email.com','74193131050'),
('Nemuri','nemuri.Kayama@email.com','56457299008'),
('Anan','anam.kurose@email.com','36796241070'),
('Emi','emi.fukukado@email.com','57364307036'),
('Yago','yagi.toshinori@email.com','28692297046');

--Excluir 1 registro
DELETE FROM tb_professor WHERE id='1';

-- Excluir todos
DELETE FROM tb_professor;

-- Editar dados de 1 registro

UPDATE tb_professor SET nome = 'Yagi' WHERE cpf = '28692297046';

-- Editar todos os registros da tabela

UPDATE tb_professor SET nome = 'Endeavor';

-- Selecionar todos os dados de todos os professores
 SELECT * FROM tb_professor;

 -- Selecionar os dados de um registro específico
 SELECT * FROM tb_professor WHERE id='5';

 -- Selecionar alguns dados  de todos os professores
 SELECT nome, cpf FROM tb_professor;
