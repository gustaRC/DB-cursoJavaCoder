create table if not exists teste (
    id int unsigned not null auto_increment primary key
#   id | inteiro | não pode ser negativo | não pode ser nulo | incrementação automatica (sintetica) | chave primaria
);

drop table if exists teste;
# Tabela somente será deletada caso exista no banco de dados