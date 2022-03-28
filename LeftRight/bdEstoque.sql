create database bdEstooque
go
use bdEstooque
	
create table tbCliente (
codCliente int primary key identity (1,1)
,nomeCliente varchar (40) not null
,cpfCliente char (15) not null
,emailCliente varchar (60) not null
,sexoCliente varchar (1) not null
,dataNascimentoCliente date not null
)
create table tbFornecedor(
codFornecedor int primary key identity (1,1)
,nomeFornecedor varchar (40) not null
,contatoFornecedor varchar (40) not null
)
create table tbFabricante(
codFabricante int primary key identity (1,1)
,nomeFabricante varchar (40) not null
)
create table tbProduto (
codProduto int primary key identity (1,1)
,descricaoProduto varchar (50) not null
,valorProduto smallmoney not null
,quantidadeProduto char (8000) not null
,codFabricante int foreign key references tbFabricante (codFabricante)
,codFornecedor int foreign key references tbFornecedor (codFornecedor)
)
create table tbVenda (
codVenda int primary key identity (1,1) 
,datavenda smalldatetime not null 
,valorTotalVenda smallmoney not null
,codCliente int foreign key references tbCliente  (codCliente)
)
create table tbItensVenda (
codItemVenda int primary key identity (1,1)
,codVenda int  foreign key references tbVenda (codVenda)
,codProduto int foreign key references tbProduto (codProduto)
,quantidadeItemVenda char (8000)not null
,subTotalItemVenda smallmoney not null
)
