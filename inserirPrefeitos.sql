insert into prefeitos (nome, cidade_id)
values
    ('Rodrigo Neves', 2),
    ('Raquel Lyra', 3),
    ('Zenaldo Coutinho', null);

insert into prefeitos (nome, cidade_id)
values
    ('Rafael Greca', null);

insert into prefeitos (nome, cidade_id)
values
    ('Rodrigo Pinheiro', 3);
# Ocorre erro pois cidade_id tem que ser único, ou seja, não pode haver mais de um prefeito para a mesma cidade.

