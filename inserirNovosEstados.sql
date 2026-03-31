insert into estados(id, nome, sigla, populacao, regiao)
values (1000, 'Novo', 'NV', 2.54, 'Sul');
# Com ID

insert into estados(nome, sigla, populacao, regiao)
values ('Mais Novo', 'MN', 2.54, 'Sul');
# Sem ID
# Será utilizado o auto_increment, pegará o ultimo valor ID de maneirá ascendete e incrementará no novo registro