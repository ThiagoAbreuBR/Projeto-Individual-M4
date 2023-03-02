# Projeto-Individual-M4

- **Existem outras entidades além dessas três?**
- Sim, são elas entidade FACILITADOR e INSTITUIÇÃO.

- **Quais são os principais campos e tipos?**

- **Facilitador**
-cod_facilitador(INT PRIMARY KEY), cpf(VARCHAR), nome(VARCHAR), gênero(VARCHAR), email(VARCHAR), formação(VARCHAR).

- **Cursos**
-cod_cursos(INT PRIMARY KEY), nome_curso(VARCHAR), descrição(VARCHAR), duração(VARCHAR), modo_ensino(VARCHAR).

- **Turmas**
cod_turmas(INT PRIMARY KEY), num_turma(INT), sala(INT), período(VARCHAR), data_inicio(DATE), data_termino(DATE).

- **Instituição**
-cod_instituicao(INT PRIMARY KEY), cnpj(VARCHAR), razão_social(VARCHAR), endereço(VARCHAR).

- **Alunos**
-matricula(INT PRIMARY KEY), cpf(VARCHAR), nome(VARCHAR), data_nascimento(DATE), gênero(VARCHAR), email(VARCHAR).

- **Como essas entidades estão relacionadas?**

- Facilitador (1,n) <<<< Possui >>>> (1,n) Turmas. No modelo relacional a entidade Facilitador recebe chave estrangeira da entidade Turmas e Turmas recebe chaves entrangeiras de Facilitador. OBS: No modelo físico outra entidade é criada na qual irá receber a chaves estrangeiras de Facilitador e Turmas.

- Cursos (1,1) <<<< Possuem >>>> (1,n) Facilitador. No modelo relacional e físico a entidade Facilitador irá receber como chave estrangeira a chave primária de Cursos.

- Cursos (1,1) <<<< Tem >>>> (1,n) Turmas. No modelo relacional e físico a entidade Turmas irá receber como chave estrangeira a chave primária de Cursos.

- Cursos (1,n) <<<< Cursam >>>> (1,1) Alunos. No modelo relacional e físico a entidade Alunos irá receber como chave estrangeira a chave primária de Cursos.

- Instituição (1,1) <<<< Disponibiliza >>>> (1,n) Cursos. No modelo relacional e físico a entidade Cursos irá receber como chave estrangeira a chave primária de Instituição.
