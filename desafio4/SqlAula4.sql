CREATE DATABASE mercado;
USE mercado;

CREATE TABLE produto(
	preço FLOAT NOT NULL,
    id INT PRIMARY KEY,
    marca VARCHAR(40),
    categoria VARCHAR(40) NOT NULL,
    quantidade INT NOT NULL    
);

CREATE TABLE funcionario(
	nome VARCHAR(100) NOT NULL,
    idade INT,
    tipo_contratacao VARCHAR(3),
    setor VARCHAR(50),
    cpf VARCHAR(14) PRIMARY KEY
);

CREATE TABLE cliente(
	nome VARCHAR(100) NOT NULL,
    idade INT,
    CPF VARCHAR(14) PRIMARY KEY,
    telefone VARCHAR(25),
    categoria CHAR
);

CREATE TABLE endereco(
	rua VARCHAR(100),
    numero INT,
    cep VARCHAR(20),
    cidade VARCHAR(100),
    bairro VARCHAR(100),
    tipo VARCHAR(10),
    
    PRIMARY KEY (cep)
);

SELECT * FROM produto;
SELECT rua, cep FROM endereco;
SELECT * FROM cliente;

ALTER TABLE cliente ADD COLUMN sexo CHAR;
ALTER TABLE cliente RENAME COLUMN sexo TO sex;
ALTER TABLE cliente DROP COLUMN sex;

DROP TABLE produto;

INSERT INTO 
cliente(idade, categoria, telefone, CPF, nome)
VALUES 
(21,'A', '6656565', '111-111-111.98', 'hugo'),
(21,'A', '6656565', '111-111-111.97', 'jorge'),
(21,'A', '6656565', '111-111-111.96', 'pedro');

-- INSERT INTO
-- produto(preco, id, marca, categoria, quantidade) 
-- VALUES;