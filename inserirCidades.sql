insert into cidades (nome, area, estado_id)
values ('Campinas', 795, 25);
# estado_id == São Paulo

insert into cidades (nome, area, estado_id)
values ('Niteroi', 133.9, 25);
# estado_id == São Paulo

insert into cidades (nome, area, estado_id)
values ('Caruaru', 920.6, (select id from estados where sigla = 'PE'));
# estado_id == Pernambuco

insert into cidades (nome, area, estado_id)
values ('Juazeiro do Norte', 248.2, (select id from estados where sigla = 'CE'));
# estado_id == Ceará