use tecinfo;

create table AUTORES(
	id INT auto_increment primary key,
	nome_autor varchar(100) not null,
	nacionalidade varchar(50)
);

create table livros(
	id INT auto_increment primary key,
	titulo varchar(150) not null,
	ano_publicacao INT,
	id_autor INT,
	foreign key (id_autor) references AUTORES(id)
);


insert into AUTORES (nome_autor,nacionalidade)
values ('Jacó','Brasileiro');

insert into livros (titulo,ano_publicacao,id_autor)
values ('O Senhor dos Pasteis',2025,1);