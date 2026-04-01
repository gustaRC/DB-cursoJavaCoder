select e.nome as 'Empresa', c.nome as 'Cidade'
from empresas e, empresas_unidades eu, cidades c
where e.id = eu.empresa_id and c.id = eu.cidade_id and sede;
# == INNER JOIN (implicitamente)

select e.nome as 'Empresa', c.nome as 'Cidade'
from empresas e inner join empresas_unidades eu inner join cidades c
on e.id = eu.empresa_id and c.id = eu.cidade_id and sede;
# == INNER JOIN (explicitamente)
# Mais moderno e recomendado para mitigar erros de sintaxe e melhorar a legibilidade do código.