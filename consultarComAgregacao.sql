select
    regiao as 'Região',
    sum(populacao) as 'Total'
from estados
group by regiao
order by Total desc;
# Soma total da população por região

select
    sum(populacao) as 'Total'
from estados
order by Total desc;
# Soma total das regiões

select
    avg(populacao) as 'Total'
from estados;
# Media da população por cada estado/registro;

