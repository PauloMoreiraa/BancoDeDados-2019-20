use bdEscolaIdiomas
	
--1--

	select nomeAluno as 'Aluno', nomeCurso as 'Curso' 
	from tbAluno
		inner join tbMatricula 
		on tbMatricula.codAluno = tbAluno.codAluno
		inner join tbTurma 
		on tbTurma.codTurma = tbMatricula.codTurma
		inner join tbCurso 
		on tbCurso.codCurso = tbTurma.codCurso

	--2--

	select count(tbAluno.codAluno) as 'Alunos', nomeCurso as 'Curso' 
		from tbAluno
		inner join tbMatricula 
		on tbMatricula.codAluno = tbAluno.codAluno
		inner join tbTurma 
		on tbTurma.codTurma = tbMatricula.codTurma
		inner join tbCurso 
		on tbCurso.codCurso = tbTurma.codCurso
		group by nomeCurso

	--3--

	select count(tbAluno.codAluno) as 'Alunos', nomeTurma as 'Turma' 
		from tbAluno
		inner join tbMatricula 
		on tbMatricula.codAluno = tbAluno.codAluno
		inner join tbTurma 
		on tbTurma.codTurma = tbMatricula.codTurma
		group by nomeTurma

	--4--

	select count(tbAluno.codAluno) as 'Matrículas realizadas em maio' 
	    from tbAluno
		inner join tbMatricula 
		on tbMatricula.codAluno = tbAluno.codAluno
		where datepart(month, dataMatricula) = 5

	--5--

	select nomeAluno as 'Aluno', nomeCurso as 'Curso', nomeTurma as 'Turma' 
		from tbAluno
		inner join tbMatricula 
		on tbMatricula.codAluno = tbAluno.codAluno
		inner join tbTurma 
		on tbTurma.codTurma = tbMatricula.codTurma
		inner join tbCurso 
		on tbCurso.codCurso = tbTurma.codCurso

	--6--

	select nomeCurso as 'Curso', horarioTurma as 'Horário' 
		from tbCurso
		inner join tbTurma 
		on tbTurma.codCurso = tbCurso.codCurso
		order by nomeCurso

	--7--

	select count(tbAluno.codAluno) as 'Alunos', naturalidadeAluno as 'Estado' 
		from tbAluno
		inner join tbMatricula 
		on tbMatricula.codAluno = tbAluno.codAluno
		inner join tbTurma 
		on tbTurma.codTurma = tbMatricula.codTurma
		inner join tbCurso 
		on tbCurso.codCurso = tbTurma.codCurso
		where tbCurso.codCurso = 1
		group by naturalidadeAluno

	--8--

	select nomeAluno as 'Aluno', FORMAT(dataMatricula, 'dd/MM/yyyy') as 'Data de matrícula' 
		from tbAluno
		inner join tbMatricula 
		on tbMatricula.codAluno = tbAluno.codAluno
		order by dataMatricula

	--9-- 

	select nomeAluno as 'Aluno', nomeCurso as 'Curso' 
		from tbAluno
		inner join tbMatricula 
		on tbMatricula.codAluno = tbAluno.codAluno
		inner join tbTurma 
		on tbTurma.codTurma = tbMatricula.codTurma
		inner join tbCurso 
		on tbCurso.codCurso = tbTurma.codCurso
		where nomeAluno like 'A%' and tbCurso.codCurso = 1

	--10--

	select count(codMatricula) as 'Matrículas realizadas em 2016' 
		from tbMatricula
		where datepart(year, dataMatricula) = 2016

	--11--

	select count(codMatricula) as 'Matriculas por curso', nomeCurso as 'Curso' 
		from tbMatricula
		inner join tbTurma 
		on tbTurma.codTurma = tbMatricula.codTurma
		inner join tbCurso 
		on tbTurma.codCurso = tbCurso.codCurso
		group by nomeCurso

	--12--

	select count(tbAluno.codAluno) as 'Aunos que fazem cursos que custam mais que R$300,00' 
		from tbAluno
		inner join tbMatricula 
		on tbMatricula.codAluno = tbAluno.codAluno
		inner join tbTurma 
		on tbTurma.codTurma = tbMatricula.codTurma
		inner join tbCurso 
		on tbTurma.codCurso = tbCurso.codCurso
		where valorCurso > 300

	--13--

		select nomeAluno as 'Alunos que cursam alemão' 
			from tbAluno
			inner join tbMatricula 
			on tbMatricula.codAluno = tbAluno.codAluno
			inner join tbTurma 
			on tbTurma.codTurma = tbMatricula.codTurma
			inner join tbCurso 
			on tbTurma.codCurso = tbCurso.codCurso
			where tbCurso.codCurso = 2