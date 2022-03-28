go
use bdEstooque

--1--

select nomeFornecedor, contatoFornecedor
	from tbFornecedor


--2--

select nomeFornecedor as 'Fornecedor', descricaoProduto as 'Produto'
	from tbFornecedor
	left join tbProduto 
	on tbProduto.codFornecedor = tbFornecedor.codFornecedor

--3--

select nomeFornecedor as 'Fornecedor', descricaoProduto as 'Produto'
from tbFornecedor
left join tbProduto on tbProduto.codFornecedor = tbFornecedor.codFornecedor
order by [Fornecedor]

select descricaoProduto as 'Descrição', nomeFornecedor as 'Nome do Fornecedor'
from tbProduto
right join tbFornecedor on tbProduto.codFornecedor = tbFornecedor.codFornecedor
order by [Descrição]


--4--

select descricaoProduto as 'Produto', nomeFornecedor as 'Fornecedor'
	from tbProduto
	left join tbFornecedor 
	on tbProduto.codFornecedor = tbFornecedor.codFornecedor


--5--

select descricaoProduto as 'Produto', nomeFornecedor as 'Fornecedor'
	from tbProduto
	full join tbFornecedor 
	on tbProduto.codFornecedor = tbFornecedor.codFornecedor


--6--

select nomeFornecedor as 'Fornecedor', descricaoProduto as 'Produto' 
	from tbFornecedor
	cross join tbProduto

-- RESPOSTA 6: RETORNOU 78 REGISTROS. A CONSULTA FEZ UM PLANO CARTESIANO "UNINDO" TODOS OS FORNECEDORES COM TODOS OS PRODUTOS--



