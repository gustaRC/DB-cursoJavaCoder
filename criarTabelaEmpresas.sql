create table if not exists empresas (
    id int unsigned not null auto_increment,
    nome varchar(255) not null,
    cnpj int unsigned, #será alterado depois
#   atribuir int somente a valores em que ocorrerá manipulação matemática
    primary key (id),
    unique key (cnpj)
);
# Será uma relação N para N (muitos para muitos/many-to-many), pois uma empresa pode ter unidades em várias cidades e uma cidade pode ter várias empresas.

# Tabela relacional
create table if not exists empresas_unidades (
    empresa_id int unsigned not null,
    cidade_id int unsigned not null,
    sede tinyint(1) not null, # 1 para indicar a sede da empresa, 0 para filiais
    primary key (empresa_id, cidade_id)
#     foreign key (empresa_id) references empresas(id) on delete cascade,
#     foreign key (cidade_id) references cidades(id) on delete cascade
);