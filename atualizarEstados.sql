update estados
set nome = 'Maranhão'
where sigla = 'MA';
# Dificilmente ocorre update sem where

select est.nome from estados est where sigla = 'MA';
# Pode-se usar abreviadores para caracterizar as tabelas
# Isso será util quando formos mesclar dados/consultas de duas/mais tabelas

update estados
set nome = 'Paraná',
    populacao = 11.32
where sigla = 'PR';

select est.nome, sigla, populacao from estados est
where sigla = 'PR';