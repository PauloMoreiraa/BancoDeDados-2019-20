create database bdEscola
go
use bdEscola

	create table tbCurso(
		codCurso int primary key identity(1,1)
		,nomeCurso varchar(20) not null
		,cargaHorariaCurso float not null
		,valorCurso smallint not null
	)

	create table tbTurma(
		codTurma int primary key identity(1,1)
		,codCurso int foreign key references tbCurso(codCurso)
		,nomeTurma varchar(10) not null
		,horarioTurma time not null
	)

	create table tbAluno(
		codAluno int primary key identity(1,1)
		,nomeAluno varchar(35) not null
		,dataNascAluno date not null
		,rgAluno varchar(15) not null
		,naturalidadeAluno varchar(5) not null
	)

	create table tbMatricula(
		codMatricula int primary key identity(1,1)
		,codAluno int foreign key references tbAluno(codAluno)
		,codTurma int foreign key references tbTurma(codTurma)
		,dataMatricula date not null
	)