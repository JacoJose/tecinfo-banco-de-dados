CREATE DATABASE academia;
USE academia;

CREATE TABLE instrutores (
    nome_instrutor VARCHAR(100),
    especialidade VARCHAR(50),
    data_contratacao DATE
);

CREATE TABLE planos (
    tipo_plano VARCHAR(50),
    duracao VARCHAR(30),
    valor DECIMAL(10, 2)
);

CREATE TABLE alunos (
    nome_aluno VARCHAR(100),
    cpf VARCHAR(14),
    data_nascimento DATE,
    email VARCHAR(100),
    plano VARCHAR(50)
);

CREATE TABLE medidas (
    nome_aluno VARCHAR(100),
    altura DECIMAL(3, 2),
    peso DECIMAL(5, 2)
);

CREATE TABLE treino (
	nome_aluno VARCHAR(100),
    instrutor VARCHAR(100),
    data_criacao DATE
);

CREATE TABLE exercicios (
    tipo_exercicio VARCHAR(50),
    series INT,
    repeticoes INT,
    cpf_aluno VARCHAR(14),
    data_treino DATE
);