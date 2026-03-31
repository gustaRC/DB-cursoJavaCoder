create table if not exists cidades (
    id int unsigned not null auto_increment,
#   id | inteiro | não pode ser negativo | não pode ser nulo | incrementação automatica (sintetica)
    nome varchar(255) not null,
    estado_id int unsigned not null,
    area DECIMAL(10,2),
    PRIMARY KEY (id),
    FOREIGN KEY (estado_id) references estados (id)
#   chave estrangeira
);
# Tabela somente será criada caso ainda não exista no banco de dados