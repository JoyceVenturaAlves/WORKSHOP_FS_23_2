create database livraria;
Use livraria;

CREATE TABLE livros_de_Romance(
id INT PRIMARY KEY,
titulo CHAR(80)  NOT NULL,
lancamento YEAR NOT NULL, 
preco FLOAT NOT NULL
);

CREATE TABLE livros_de_Aventura(
id INT PRIMARY KEY,
titulo CHAR(80)  NOT NULL,
lancamento YEAR NOT NULL, 
preco FLOAT NOT NULL

);

CREATE TABLE livros_de_Suspense(
id INT PRIMARY KEY,
titulo CHAR(80)  NOT NULL,
lancamento YEAR NOT NULL, 
preco FLOAT NOT NULL
);


-- Adicionando colunas em cada tabela

ALTER TABLE  livros_de_Romance ADD COLUMN AutorRomance CHAR;
ALTER TABLE  livros_de_Aventura ADD COLUMN AutorAventura CHAR;
ALTER TABLE  livros_de_Suspense ADD COLUMN AutorSuspense CHAR;

-- Inserindo dados em cada tabela

INSERT INTO 
AutorRomance (Nome, Idade, País, magnum_Opus)
VALUES 
('Jane Austen','41', 'Inglaterra', 'Orgulho e Preconceito');

INSERT INTO 
AutorAventura (Nome, Idade, País, magnum_Opus)
VALUES 
('Júlio Verne','77', 'França', 'A Volta ao Mundo em 80 Dias');

INSERT INTO 
AutorSuspense (Nome, Idade, País, magnum_Opus)
VALUES 
('Agatha Christie','85', 'Inglaterra', 'Assassinato no Expresso Oriente');

-- Removendo uma coluna de cada tabela

ALTER TABLE livros_de_Romance DROP COLUMN id;
ALTER TABLE livros_de_Aventura DROP COLUMN id;
ALTER TABLE livros_de_Suspense DROP COLUMN id;

-- Mostrando o conteudo de cada tabela

SELECT * FROM livros_de_Aventura;
SELECT * FROM livros_de_Romance;
SELECT * FROM livros_de_Suspense;

-- mostrando algum conteudo específico de cada tabela 

SELECT titulo FROM livros_de_Romance;
SELECT lancamento FROM livros_de_Aventura;
SELECT preco FROM livros_de_Suspense;
