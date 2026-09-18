CREATE DATABASE biblioteca_1ano;
USE biblioteca_1ano;

#Criando usuário
CREATE USER 'biblioteca_user1'@'localhost' IDENTIFIED BY 'projeto1';

#Dar Permissão ao usuário
GRANT ALL PRIVILEGES
ON biblioteca_1ano.*
TO 'biblioteca_user1'@'localhost';

#Atualiza Permissão
FLUSH PRIVILEGES;

#Visualizar todas as bases existentes
SHOW DATABASES;

#Visualizar todos os usuários
SELECT user FROM mysql.user;

#Criação da tabela de Aluno
CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    serie VARCHAR(20) NOT NULL,
    turma VARCHAR(20) NOT NULL,
    telefone VARCHAR(20)
);

#Criação da tabela de Livro
CREATE TABLE livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    status VARCHAR(20) NOT NULL DEFAULT 'Disponível'
);

#Criação da tabela de Professor
CREATE TABLE professor (
 id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL);

#Criação da tabela de Bibliotecário
CREATE TABLE bibliotecario (
    id_bibliotecario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);
#inset em todas as tabbelas
#pelo menos 5 INSERt por tabela

INSERT INTO aluno (nome, serie, turma, telefone)
VALUES('ruan','1 ano','1B','4435936-9673'),
('kaio naves','1 ano','1B','4467694-1423'),
('daniel assis','1 ano','1B','4459583-2848'),
('fernando HENRIQUE','1 ano','1B','4467409-2948'),
('lucas mauro ','1 ano','1B','4427304-2015');

SELECT * FROM ALUNO;

INSERT INTO bibliotecario (nome, email)
VALUES('Ruan','ruan@gmail.com'),
('pulgar','pulgar@gmail.com'),
('wallace yan','wallaceyan@gmail.com'),
('varela','varela@gmail.com'),
('rossi','rossi@gmail.com');

SELECT * FROM bibliotecario;

INSERT INTO livro (titulo, autor, categoria, status)
VAlUES(' A volta ao mundo em 80 dias','julio verne','ficção cientifica','0'),
('A viagem ao centro da terra','julioi verne','suspense','1'),
('A terra longa','julio verne','comédia','2'),
('A guerra longa','julio verne','românce','3'),
('Da terra a lua','julio verne','fantasia','4');

SELECT * FROM livro;
-- 1. Inserindo dados e consultando a tabela 'professor'
INSERT INTO professor (nome, telefone, email)
VALUES 
    ('ruan', '4492567-9367', 'ruan@gmail.com'),
    ('neriudo', '4492875-3679', 'neriudo@gmail.com'),
    ('jorge', '4492637-9257', 'jorge@gmail.com'),
    ('neymar', '4492767-9286', 'neymar@gmail.com'),
    ('douglas', '4492725-2887', 'douglas@gmail.com');

SELECT * FROM professor;

-- 2. Inserindo dados e consultando a tabela 'livro'
INSERT INTO livro (titulo, autor, categoria, status)
VALUES
    ('A volta ao mundo em 80 dias', 'Julio Verne', 'Ficção científica', '0'),
    ('Viagem ao centro da terra', 'Julio Verne', 'Suspense', '1'),
    ('A terra longa', 'Julio Verne', 'Comédia', '2'),
    ('A guerra longa', 'Julio Verne', 'Romance', '3'),
    ('Da terra a lua', 'Julio Verne', 'Fantasia', '4');

SELECT * FROM emprestimo;
CREATE DATABASE biblioteca_1ano;
USE biblioteca_1ano;

#Criando usuário
CREATE USER 'biblioteca_user1'@'localhost' IDENTIFIED BY 'projeto1';

#Dar Permissão ao usuário
GRANT ALL PRIVILEGES
ON biblioteca_1ano.*
TO 'biblioteca_user1'@'localhost';

#Atualiza Permissão
FLUSH PRIVILEGES;

#Visualizar todas as bases existentes
SHOW DATABASES;

#Visualizar todos os usuários
SELECT user FROM mysql.user;