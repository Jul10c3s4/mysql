#1 Quais os telefones do Cliente João da Silva?
select t.telefone
from telefones t
inner join cliente c
on t.cpf_cli_fk = c.cpf 
where c.nome = 'João da Silva';
      
#2 Quais os dependentes do Cliente Pedro Batista?
select d.nome
from dependente d
inner join cliente c
on d.cpf_cli_fk = c.cpf 
where c.nome = 'Pedro Batista';

#3 Yasmin Barreto é dependente de quem?
select c.nome
from cliente c
inner join dependente d
on c.cpf = d.cpf_cli_fk 
where d.nome = 'Yasmin Barreto';

#4 Quais os filmes alugados pela Cliente Sofia?
select c.nome, f.titulo, a.data
from cliente c
inner join aluga a on c.cpf = a.cpf_cli_fk
inner join filme f on f.id = a.ID_FILME_FK
where c.nome like '%sofia%';

#5 Quais os clientes alugaram o Filme Laranja Mecânica?
select c.nome AS NOME_CLIENTE, f.titulo as TITULO
from cliente c
inner join aluga a on c.cpf = a.CPF_CLI_FK 
inner join filme f on f.id = a.ID_FILME_FK
where f.titulo = 'Laranja Mecânica';

#6 Há quantos clientes cadastrados
select count(*) as quantidade_clientes
from CLIENTE;

#7 Quais os filmes foram lançados entre os anos de 1999 e 2001?
select f.titulo, f.ano
from filme f
where f.ano between 1999 and 2001;

#8 Quantos filmes foram lançados entre os anos de 1999 e 2001?
select count(*)
from filme f  
where f.ano between 1999 and 2001;

#9 Quantos filmes foram alugados?
select count(*)
from aluga a;

#10 Quais os filmes alugados pelo Cliente Gabriel Araújo?
select f.titulo
from filme f
inner join aluga a on a.id_filme_fk = f.id 
inner join cliente c on c.CPF = a.CPF_CLI_FK 
where c.nome = 'Gabriel Araújo';

#11 Liste todos os clientes e dependentes cadastrados.
select count(c.nome) as quantidade_clientes, count(d.nome) as quantidade_dependentes
from cliente c, dependente d
where c.cpf = d.CPF_CLI_FK;

#12 Liste todos os clientes e dependentes que possuam Silva no nome.
select c.nome as clientes, d.nome as dependentes
from cliente c
inner join dependente d 
where c.cpf = d.cpf_cli_fk 
and (c.nome like '%silva%' 
or d.nome like '%silva%');

#13 Quais os filmes alugados no mês de Abril?
select f.titulo as FILMES, a.DATA
from filme f
inner join aluga a on f.id = a.ID_FILME_FK
where a.DATA like '%/04/%';

#14 Quais os dependentes nasceram na década de 90?
select d.nome, d.dt_nasc
from dependente d
where d.dt_nasc like '%/199%';

#15 Quais os clientes possuem telefone com prefixo de alagoas (082)?
select c.nome, t.telefone
from cliente c, telefones t
where c.cpf = t.cpf_cli_fk 
and telefone like '082%';
