create table if not exists prefeitos (
    id int unsigned not null auto_increment,
    nome varchar(255) not null,
    cidade_id int unsigned,
    primary key (id),
    unique key (cidade_id),
    foreign key (cidade_id) references cidades(id)
);
# Relação 1 para 1 (one-to-one) entre prefeitos e cidades, onde cada prefeito é associado a uma única cidade e cada cidade tem um único prefeito.
# Pergunta para modelagem: "será que esse dado não é melhor alocado na mesma tabela?"