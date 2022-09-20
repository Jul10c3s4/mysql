use revisão_aula18;
#1 aumentar 10% o valor dos produtos
select nome, preço, preço*0.10 as aumento, ((preço*0.10)+preço) as novo_valor
from produto
where preço < 2000;

#2 pedir o produto mais caro e o mais barato
select p.nome, max(p.preço) as MAIS_CARO, MIN(P.PREÇO) AS MAIS_BARATO  
from produto p;

#3 media do valor dos produtos
select avg(preço) as media_salarios
from produto;

#4 soma dos valores dos produtos
select sum(preço)
from produto;

#5 consultar endereços distintos
select distinct c.endereco
from cliente c;

#6 contar endereços distintos
select count(distinct endereco) as quatidade_endereco
from cliente c;

 