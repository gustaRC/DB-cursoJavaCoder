select * from estados e, cidades c;
# dessa forma será exibido o produto cartesiano, ou seja, todas as combinações possíveis entre os registros das duas tabelas
# não irá exibir os dados relacionados, ou seja, os estados e suas respectivas cidades

select * from estados e, cidades c
where e.id = c.estado_id;
# por padrão, utiliza-se apelido para as tabelas, para facilitar a escrita da consulta

select
    c.nome as 'Cidade',
    e.nome as 'Estado',
    regiao as 'Região'
from estados e inner join cidades c
on e.id = c.estado_id;