-- Projeto 02 Jailson

create database Projeto02;
use projeto02;

desc Alunos;

select * from Alunos;

create table Alunos (
id int primary key auto_increment,
nome varchar(100),
idade int,
curso varchar(50),
notaFinal decimal(4,2)
);

insert into Alunos (nome, idade, curso, notaFinal) values
("Gabriel Ferreira", 18, "Banco de Dados", 8.3),
("Robson", 21, "C#", 4.9),
("Vitor", 25, "Java", 7.6),
("Lucas Silva", 21, "Sistemas de Informação", 8.5),
("João", 19, "Análise de Sistemas", 5),
("Joana Melo", 23, "Banco de Dados", 7.8);

-- Funções de agregação (COUNT, AVG, SUM)
-- 1- Conte quantos alunos estão cadastrados na tabela.

select count(*) from Alunos;

-- 2- Mostre a média (AVG) da nota final de todos os alunos.

select avg(notaFinal) from Alunos;

-- 3- Calcule a soma (SUM) de todas as notas finais dos alunos do curso "Engenharia de Software".

select sum(notaFinal) from Alunos
where curso = "Engenharia de Software";

-- 4- Exiba a quantidade de alunos com nota final maior ou igual a 7.0.

select count(*) from Alunos
where notaFinal >= 7;

-- 5- Mostre a média das notas dos alunos com idade inferior a 25 anos.

select avg(notaFinal) from Alunos
where idade < 25;

-- Consultas com operadores lógicos (AND, OR, NOT, BETWEEN, IN, LIKE)
-- 6- Liste os alunos que têm nota entre 6 e 8 e estão matriculados no curso de "Sistemas de Informação".

select * from Alunos
where notaFinal between 6 and 8 and curso = "Sistemas de Informação";

-- 7- Liste os alunos que não estão no curso de "Engenharia de Software".

select * from Alunos
where not curso = "Engenharia de Software";

-- 8- Mostre os nomes dos alunos cuja nota final seja menor que 5 OU maior que 9.

select nome from Alunos
where notaFinal < 5 or notaFinal > 9;

-- 9- Liste os alunos com curso sendo "Redes", "Sistemas de Informação" ou "Análise de Sistemas" (utilize o operador IN).

select * from Alunos
where curso in ("Redes", "Sistemas de Informação", "Análise de Sistemas");

-- 10- Liste os alunos cujos nomes começam com a letra "J".

select * from Alunos
where nome like "J%";