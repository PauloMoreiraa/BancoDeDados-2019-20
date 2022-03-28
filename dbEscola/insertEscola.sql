use bdEscola

	insert into tbAluno(nomeAluno, dataNascAluno, rgAluno, naturalidadeAluno)
		values('Paulo Santos', '2000/03/10', '82.282.122-0', 'SP')
		,('Maria da Gloria', '1999/10/03', '45.233.123-0', 'SP')
		,('Pedro Nogueira da Silva', '1998/04/04', '23.533.211-9', 'SP')
		,('Gilson Barros Silva', '1995/09/09', '34.221.111-x', 'PE')
		,('Mariana Barbosa Santos', '2001/10/10', '54,222,122-9', 'RJ')
		,('Alessandro Pereira', '2003/10/11', '24,402,454-9', 'ES')
		,('Aline Melo', '2001/10/08', '88.365.012-3', 'RJ')

		select * from tbAluno



	insert into tbCurso(nomeCurso, cargaHorariaCurso, valorCurso)
		values('Ingl�s', 2000, 356.00)
		,('Alem�o', 3000, 478.00)
		,('Espanhol', 4000, 500.00)

		select * from tbCurso



	insert into tbTurma(nomeTurma, codCurso, horarioTurma)
		values('1|A', 1, '12:00:00')
		,('1|C', 3, '18:00:00')
		,('1|B', 1, '18:00:00')
		,('1|AA', 2, '19:00:00')

		select * from tbTurma



	insert into tbMatricula(dataMatricula, codAluno, codTurma)
		values('2015/10/03', 1, 1)
		,('2014/05/04', 2, 1)
		,('2014/05/04', 2, 4)
		,('2012/05/03', 3, 2)
		,('2016/03/03', 1, 3)
		,('2015/05/07', 4, 2)
		,('2015/07/05', 4, 3)

		select * from tbMatricula