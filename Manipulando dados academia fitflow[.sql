create database db_academia_fitflow;

use db_academia_fitflow;

create table planos(
	id INT auto_increment primary key,
	nome varchar(50) not null,
	valor_mensal decimal (10,2) not null,
	duracao_meses tinyint not null
);

create table alunos(
	id INT auto_increment primary key,
	nome VARCHAR(100) not null,
	cpf char(11) unique not null,
	data_nascimento DATE,
	email varchar(100),
	peso decimal(5,2),
	altura decimal(3,2),
	id_plano INT,
	constraint fk_aluno_plano foreign key (id_plano) references planos(id)
);

create table instrutores (
	id INT auto_increment primary key,
	nome VARCHAR(100) not null,
	especialidade varchar(50),
	data_contratacao DATE
);

create table treinos(
	id INT auto_increment primary key,
	id_aluno int not null,
	id_instrutor int not null,
	data_criacao date not null,
	objetivo varchar(100),
	constraint fk_treino_aluno foreign key(id_aluno)
	references alunos(id),
	constraint fk_treino_instrutor foreign key(id_instrutor)
	references instrutores(id)
);

create table exercicios (
	id INT auto_increment primary key,
	nome_exercicio varchar(50) not null,
	equipamento varchar (50)
);

create table itens_treino(
	id_treino int,
	id_exercicio int,
	series tinyint,
	repeticoes tinyint,
	primary key (id_treino, id_exercicio),
	constraint fk_item_treino foreign key(id_treino)
	references treinos(id),
	constraint fk_item_exercicio foreign key(id_exercicio)
	references exercicios(id)
);


INSERT INTO planos (nome, valor_mensal, duracao_meses) VALUES 
('Plano Mensal Bronze', 90.00, 1),
('Plano Trimestral Prata', 150.00, 3),
('Plano Semestral Ouro', 250.00, 6),
('Plano Anual Black', 1200.00, 12),
('Plano de Teste', 0.00, 1);

INSERT INTO alunos (nome, cpf, data_nascimento, email, peso, altura, id_plano) VALUES 
('Carlos Silva', '12345678901', '1960-05-15', 'carlos@email.com', 95.50, 1.68, 4),
('Ana Souza', '23456789012', '2009-10-20', 'ana.souza@email.com', 55.00, 1.62, 1),
('Ricardo Oliveira', '34567890123', '1995-03-10', 'ricardo@email.com', 110.00, 1.85, 2),
('Mariana Costa', '45678901234', '1985-08-25', NULL, 62.00, 1.70, 3),
('Pedro Santos', '56789012345', '1965-12-30', 'pedro@email.com', 88.00, 1.75, 4),
('Julia Lima', '56789012365', '2010-01-05', 'julia@email.com', 48.00, 1.55, 1);

INSERT INTO instrutores (nome, especialidade, data_contratacao) VALUES 
('Renato Personal', 'Musculação', '2024-06-01'),
('Fabiana Zen', 'Yoga', '2025-02-15'),
('Marcos Iron', 'Crossfit', '2026-01-10'),
('Cláudia Dance', 'Zumba', '2025-11-20');

INSERT INTO treinos (id_aluno, id_instrutor, data_criacao, objetivo) VALUES 
(1, 1, '2026-04-01', 'Perda de Peso'),
(3, 3, '2026-04-10', 'Hipertrofia'),
(2, 1, '2026-04-12', 'Condicionamento'),
(5, 4, '2025-12-15', 'Fisioterapia');

INSERT INTO exercicios (nome_exercicio, equipamento) VALUES 
('Supino Reto', 'Barra'),
('Supino Inclinado', 'Haltere'),
('Agachamento Hack', 'Máquina'),
('Rosca Direta', 'Halter'),
('Leg Press 45', 'Máquina'),
('Desenvolvimento Articulado', 'Máquina'),
('Remada Curvada', 'Barra');

INSERT INTO itens_treino (id_treino, id_exercicio, series, repeticoes) VALUES 
(1, 1, 3, 12),
(1, 3, 4, 15),
(2, 1, 4, 8),
(2, 7, 3, 10),
(3, 4, 3, 20);

INSERT INTO planos (nome, valor_mensal,duracao_meses) 
VALUES ('Plano Kids', 70.00 ,1);


INSERT INTO exercicios (nome_exercicio, equipamento) VALUES
('Cadeira Extensora', 'Máquina');


UPDATE planos SET valor_mensal = valor_mensal * 1.05;


UPDATE instrutores SET especialidade = 'Treinamento
Funcional' WHERE nome = 'Marcos Iron';


SELECT * FROM alunos WHERE email IS NULL;


UPDATE treinos SET objetivo =
'Condicionamento Físico' WHERE objetivo =
'Condicionamento';


UPDATE alunos SET peso = peso + 2 WHERE peso < 60;


DELETE FROM exercicios WHERE equipamento = 'Anilha';


DELETE FROM planos WHERE nome = 'Plano de Teste';


DELETE FROM instrutores WHERE YEAR(data_contratacao) <
2020;


SELECT * FROM alunos WHERE id = 6; /*FIZ COM 6 POR QUE MEUS ALUNOS SÓ VÃO ATÉ ID 6*/


SELECT nome_exercicio, equipamento FROM exercicios WHERE
equipamento != 'Máquina';


SELECT * FROM planos WHERE valor_mensal BETWEEN 100.00
AND 200.00;


SELECT * FROM instrutores WHERE especialidade != 'Yoga';


SELECT * FROM alunos WHERE peso < 50 OR peso > 120;


SELECT nome FROM alunos WHERE email IS NULL;


SELECT * FROM treinos WHERE data_criacao >= '2026-01-01';


SELECT * FROM planos ORDER BY valor_mensal ASC;


SELECT * FROM alunos ORDER BY nome DESC;


SELECT * FROM exercicios WHERE equipamento IN
('Barra', 'Anilha', 'Kettlebell');


SELECT * FROM instrutores WHERE data_contratacao
BETWEEN '2025-01-01' AND '2025-12-31';


UPDATE alunos SET cpf = '12345678901' WHERE id = 1;


UPDATE alunos SET peso = 78.50, altura = 1.82 WHERE id = 15;


UPDATE exercicios SET equipamento = 'Halter' WHERE
equipamento = 'Halter';


INSERT INTO exercicios (nome_exercicio, equipamento) VALUES
('Agachamento Livre', 'Barra');


DELETE FROM planos WHERE nome = 'Plano de
Teste';


DELETE FROM treinos WHERE objetivo = 'Fisioterapia';


DELETE FROM alunos WHERE cpf IS null;


SELECT * FROM exercicios WHERE equipamento = 'Máquina';


SELECT nome, altura FROM alunos WHERE altura > 1.80;







select * from alunos order by data_nascimento desc;
select * from alunos where id >= 5;
select * from alunos where id_plano = 4 order by data_nascimento asc;

select nome,email, peso from alunos where peso > 90;
select nome,email, peso from alunos where peso > 90 and altura < 1.70;

select * from exercicios where equipamento = 'Halter' or equipamento = 'Barra';

select * from exercicios where equipamento in ('Halter','Barra');
select nome, data_nascimento from alunos where data_nascimento < '2008-01-01' or data_nascimento < '1966-01-01';

select * from exercicios where equipamento != 'Máquina';

select * from alunos where email is not null;

update planos set nome = 'Plano Trimestral Bronze' where id = 5;

select nome as "Nome do Aluno",
DATE_FORMAT(data_nascimento, "%D/%M/%Y") as "Data de Nascimento",
cpf as "CPF do Aluno"
from alunos where peso > 60;

select max(peso) from alunos;

select * from alunos;

select distinct equipamento from exercicios;

select * from alunos a
inner join planos p on a.id_plano = p.id;

select * from planos

select 
	a.nome as "Nome Aluno",
	p.nome as "Nome do Plano"
from alunos as a
inner join planos p on a.id_plano = p.id
where a.nome = "Ana Souza";

select
	i.nome as "Nome do Instrutor",
	t.objetivo as "Nome do Treino,",
	DATE_FORMAT(data_criacao,"%D/%M/%Y") as "Data de Criação"
from instrutores as i
inner join treinos t on i.id = t.id_instrutor 
where i.nome = "Renato Personal";

select * from treino



