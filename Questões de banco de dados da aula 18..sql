#1 coloque os nomes em ordem crescente.
select *
from cliente
 order by nome asc, endereco asc;

#2 selecione todos os clientes com lopes no nome
select*
from cliente
where nome like '%Lopes%';

#3 seleione todos os ids.
select id
from cliente;

#4 selecione todos os nomes dos produtos
select nome
from produto;

#5 Quais os nomes dos clientes que moram na rua Severino Peixoto?
select nome
from cliente 
where endereco = 'Rua Severino Peixoto';

#6 Quais funcionários moram em Avenidas?
select nome, endereco
from funcionario
where endereco like '%AV%';

#7 Qual o telefone do funcionário Pedro Batista?
select telefone
from funcionario
where nome = 'Pedro Batista';

#8 Qual o endereço do funcionário Lucas Barbosa?
select endereco
from funcionario
where nome = 'Lucas Barbosa';

#9 Qual o nome e o endereço do funcionário com matricula = 456?
select nome, endereco
from funcionario
where matricula = 456;

#10 Quais funcionários tem telefones do estado de Pernambuco? (087 e 081)
select nome, matricula, telefone
from funcionario
where telefone like '082%' or telefone like '081%';

#11 Quanto custa o produto TV LED?
select nome, preço
from produto
where nome = 'TV LED';

#12 Qual o nome e o preço do produto com código = 872819?
select nome
from produto
where codigo = '872819';

#13 Quais os produtos têm preço acima de 500,00 reais?
select nome, preço
from produto
where preço > 500;

#14 Quais os produtos têm preço entre R$ 500,00 e R$ 1500,00 reais?
select nome, preço
from produto
where preço >= 500 and preço <= 1500;

# outra forma de fazer isso é com o between
select nome, preço
from produto
where preço between 500 and 1500;

#15 seleione todos os endereços de cliente
select distinct endereco
from cliente;

#16 exemplo com in
 select nome, id 
 from cliente
 where id in (98, 985);


