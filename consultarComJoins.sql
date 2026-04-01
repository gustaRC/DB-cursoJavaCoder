select * from cidades c inner join prefeitos p on c.id = p.cidade_id;
# Trouxe somente o inner. Somente dados estritamente relacionados, ou seja, somente as cidades que possuem prefeitos e os prefeitos que possuem cidades.

select * from cidades c left join prefeitos p on c.id = p.cidade_id;
# Trouxe o inner + left. Trouxe todas as cidades, mesmo aquelas que não possuem prefeitos, e os prefeitos relacionados às cidades.

select * from cidades c right join prefeitos p on c.id = p.cidade_id;
# Trouxe o inner + right. Trouxe todos os prefeitos, mesmo aqueles que não possuem cidades, e as cidades relacionadas aos prefeitos.

# select * from cidades c full join prefeitos p on c.id = p.cidade_id; ERRO - O MySQL não suporta FULL JOIN. Para simular um FULL JOIN, podemos usar uma combinação de LEFT JOIN e RIGHT JOIN com UNION.
select * from cidades c left join prefeitos p on c.id = p.cidade_id
union
select * from cidades c right join prefeitos p on c.id = p.cidade_id;
# == FULL JOIN
# Trouxe o inner + left + right. Trouxe todas as cidades e todos os prefeitos, mesmo aqueles que não possuem relacionamentos, e os relacionamentos entre eles.