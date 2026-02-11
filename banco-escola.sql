CREATE TABLE alunos (
    id_aluno INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    data_nascimento DATE NOT NULL,
    cpf TEXT UNIQUE NOT NULL,
    email TEXT UNIQUE,
    telefone TEXT,
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE professores (
    id_professor INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    especialidade TEXT,
    email TEXT UNIQUE,
    telefone TEXT,
    data_contratacao DATE NOT NULL
);

CREATE TABLE cursos (
    id_curso INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    carga_horaria INTEGER NOT NULL,
    descricao TEXT
);

CREATE TABLE turmas (
    id_turma INTEGER PRIMARY KEY AUTOINCREMENT,
    id_curso INTEGER NOT NULL,
    id_professor INTEGER NOT NULL,
    ano INTEGER NOT NULL,
    semestre INTEGER NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso),
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);

CREATE TABLE matriculas (
    id_matricula INTEGER PRIMARY KEY AUTOINCREMENT,
    id_aluno INTEGER NOT NULL,
    id_turma INTEGER NOT NULL,
    data_matricula DATE NOT NULL,
    status TEXT DEFAULT 'Ativa',
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma),
    UNIQUE (id_aluno, id_turma)
);
