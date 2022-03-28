use bdEstoque
go 

--1--

select codProduto,descricaoProduto ,nomeFabricante 
	from tbProduto 
	INNER JOIN tbFabricante on tbFabricante.codFabricante = tbProduto.codFabricante
	where valorProduto = (select MAX(valorProduto)from tbProduto)

--2--

select descricaoProduto, nomeFabricante ,valorProduto 
	from tbProduto 
	INNER JOIN tbFabricante on tbFabricante.codFabricante = tbProduto.codFabricante
	where valorProduto >(select AVG(valorProduto)from tbProduto)

--3--

select nomeCliente,valorTotalVenda 
	from tbCliente 
	INNER JOIN tbVenda on tbVenda.codVenda = tbCliente.codCliente
	where valorTotalVenda > (select AVG(valorTotalVenda)from tbVenda) 

--4--

select descricaoProduto, valorProduto 
	from tbProduto
	where valorProduto > (select AVG (valorProduto)from tbProduto)

--5--

select descricaoProduto, valorProduto 
	from tbProduto
	where valorProduto = (select MIN (valorProduto)from tbProduto)






