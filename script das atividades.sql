/*----------------------------------------
Obtenha os dados das tabelas Produtos, categorias e Plataformas
---------------------------------------*/

select * 
from produtos; 

select * 
from categorias; 

select * 
from plataformas; 

/*----------------------------------------
Obtenha os dados das tabelas Produtos ordenados por 
	a) Nome do produto
    b) Nome do Studio e nome do Produto
---------------------------------------*/

/*a*/
select *
from Produtos
order by produto;

/*b*/
select *
from Produtos
order by Studio, produto;

/*----------------------------------------
Obtenha todos os jogos que contenham 'of' no nome do produto
---------------------------------------*/

select * 
from produtos
where produto like '%of%'
order by Studio;

select * from produtos;

/*----------------------------------------
Obtenha todos os jogos por order decrescente de idPRoduto
---------------------------------------*/

select * 
from produtos 
order by idPRoduto DESC;

/*----------------------------------------
Obtenha todos os jogos lanÇados em 2019 pela NaughtyDog
---------------------------------------*/
select * 
from produtos 
where AnoLancamento = 2019 and
		Studio =  'NaughtyDog';
        
/*----------------------------------------
Obtenha todos os jogos lanÇados pelas a NaughtyDog ou pela Sony
---------------------------------------*/
select * 
from produtos 
where Studio  in ('Sony','NaughtyDog');

/*----------------------------------------
Obtenha todos os jogos da categoria 'tiro'
---------------------------------------*/


select c.IdCategoria, p.IdProduto, p.Produto
from categoriasPRodutos c 
inner join Produtos p on p.IdProduto = c.IdPRoduto
where c.IdCategoria = 5;














