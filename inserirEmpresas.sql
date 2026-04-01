insert into empresas (nome, cnpj)
values
    ('Bradesco', 12345678901234),
    ('Itaú', 23456789012345),
    ('Cielo', 00567890123456);
# PROBLEMA 1- Primeiro dígito é zero, ou seja, o número é interpretado como 567890123456, o que não é o valor correto do CNPJ. Para resolver isso, o campo cnpj deve ser alterado para varchar(14) ou char(14) para armazenar o número como uma string, preservando os zeros à esquerda.
# PROBLEMA 2- O número do CNPJ é muito grande para ser armazenado em um campo int, mesmo que seja unsigned. O tipo de dados int unsigned pode armazenar valores até 4.294.967.295, enquanto um CNPJ tem 14 dígitos, o que excede esse limite. Portanto, é necessário alterar o tipo de dados do campo cnpj para varchar(14) ou char(14) para acomodar o número completo do CNPJ.

alter table empresas modify cnpj varchar(14);

insert into empresas (nome, cnpj)
values
    ('Bradesco', 12345678901234),
    ('Itaú', 23456789012345),
    ('Cielo', 00567890123456);
# mesmo sem o cnpj estar delimitado por aspas, o valor é inserido corretamente como uma string, preservando os zeros à esquerda.
# No entanto, é uma boa prática delimitar os valores de string com aspas para evitar confusões e garantir a clareza do código.

desc empresas;
# buscar dados da estrutura da tabela empresas, não seus valores

insert into empresas_unidades (empresa_id, cidade_id, sede)
values
    (1, 1, 1), # Bradesco - Campinas - Sede
    (1, 2, 0), # Bradesco - Niteroi - Filial
    (2, 1, 0), # Itau - Campinas - Filial
    (2, 2, 1); # Itau - Niteroi - Sede