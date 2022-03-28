use bdEscola
go

--A--

select nomeCurso,valorCurso 
	from tbCurso
	where valorCurso < (select AVG(valorCurso) from tbCurso)

--B--

select nomeAluno,rgAluno, dataNascimentoAluno 
	from tbAluno
	where dataNascimentoAluno = (select MAX(dataNascimentoAluno) from tbAluno)

--C--

select nomeAluno 
	from tbAluno
	where dataNascimentoAluno = (select MIN(dataNascimentoAluno) from tbAluno)

--D--

select nomeCurso,valorCurso 
	from tbCurso
	where valorCurso = (select MAX(valorCurso) from tbCurso)

--E--

select nomeAluno, nomeCurso 
	from tbAluno
    INNER JOIN tbMatricula on tbAluno.codAluno = tbMatricula.codAluno
    INNER JOIN tbTurma on tbMatricula.codTurma = tbTurma.codTurma
	INNER JOIN tbCurso on tbTurma.codCurso = tbCurso.codCurso
    where  dataMatricula = (select MAX(dataMatricula) from tbMatricula)

--F--

select nomeAluno 
	from tbAluno
    INNER JOIN tbMatricula on tbMatricula.codAluno = tbAluno.codAluno
    where dataMatricula = (select MIN(dataMatricula) from tbMatricula)

--G--

select nomeAluno,rgAluno,dataNascimentoAluno 
	from tbAluno
	INNER JOIN tbMatricula on tbAluno.codAluno = tbMatricula.codAluno
    INNER JOIN tbTurma on tbMatricula.codTurma = tbTurma.codTurma
	INNER JOIN tbCurso on tbTurma.codCurso = tbCurso.codCurso
    where nomeCurso LIKE '%Inglês'

