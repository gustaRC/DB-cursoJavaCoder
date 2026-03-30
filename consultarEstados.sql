select * from estados;
# selecionar todos os registros da tabela estados

select populacao, nome as 'Nome do Estado', sigla from estados;
# selecionar apenas as colunas população, nome e sigla da tabela estados

select nome, regiao from estados
where regiao = 'Sul';
# selecionar/filtrar os estados da região sul

select nome, populacao from estados
where populacao >= 10
order by populacao desc;
# selecionar os estados com população maior ou igual a 10 milhões e ordenar do mais populoso para o menos populoso
# para ordenar de maneira ascendente, basta usar order by populacao asc ou apenas order by populacao, pois o padrão é ascendente