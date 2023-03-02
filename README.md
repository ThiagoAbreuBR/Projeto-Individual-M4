# Projeto-Individual-M4

- **Existem outras entidades além dessas três?**
- Sim, são elas entidade FACILITADOR e INSTITUIÇÃO.

- **Quais são os principais campos e tipos?**
- 
- Facilitador 
- cod_facilitador(INT PRIMARY KEY), cpf(VARCHAR), nome(VARCHAR), gênero(VARCHAR), email(VARCHAR), formação(VARCHAR).

- Cursos
- cod_cursos(INT PRIMARY KEY), nome_curso(VARCHAR), descrição(VARCHAR), duração(VARCHAR), modo_ensino(VARCHAR).

- Turmas 
- cod_turmas(INT PRIMARY KEY), num_turma(INT), sala(INT), período(VARCHAR), data_inicio(DATE), data_termino(DATE).

- Instituição
- cod_instituicao(INT PRIMARY KEY), cnpj(VARCHAR), razão_social(VARCHAR), endereço(VARCHAR).
- 
- Alunos 
- matricula(INT PRIMARY KEY), cpf(VARCHAR), nome(VARCHAR), data_nascimento(DATE), gênero(VARCHAR), email(VARCHAR).

- **Como essas entidades estão relacionadas?**


cod_cursos
