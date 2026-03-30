-- Criando a tabela estado:
create table estados (
    id int unsigned not null auto_increment,
--  id | inteiro | não pode ser negativo | não pode ser nulo | incrementação automatica (sintetica)
    nome varchar(45) not null,
    sigla varchar(2) not null,
    regiao ENUM('Norte', 'Nordeste', 'Centro-Oeste', 'Sudeste', 'Sul') not null,
    populacao DECIMAL(5, 2),
--	5 digitos e 2 digitos são pontos flutuantes. População milhões (45,2 milões, 0,800 mil pessoas)
    primary key (id),
--	chave primaria
    unique key (nome),
    unique key (sigla)
--	valor único
);
