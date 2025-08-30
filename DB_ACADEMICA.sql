CREATE DATABASE db_academica;
USE db_academica;
-------------------------------------------------------------------------------
CREATE TABLE tb_curso (
id_curso INT(10) NOT NULL,
nome VARCHAR(100),
duracao_anos INT(4),
PRIMARY KEY (id_curso)
);

CREATE TABLE tb_professores (
id_professor INT(10) NOT NULL,
nome VARCHAR(100),
departamento VARCHAR(100),
PRIMARY KEY (id_professor)
);
ALTER TABLE tb_professores ADD ano_admissao DATE;

CREATE TABLE tb_disciplina (
id_disciplina INT(10) NOT NULL,
nome VARCHAR(100),
id_curso INT(10) NOT NULL,
id_professor INT(10) NOT NULL,
PRIMARY KEY (id_disciplina),
FOREIGN KEY (id_curso) REFERENCES tb_curso (id_curso),
FOREIGN KEY (id_professor) REFERENCES tb_professores (id_professor)
);

CREATE TABLE tb_estudante (
id_estudante INT(10) NOT NULL,
nome VARCHAR(100),
data_nascimento DATE,
email VARCHAR(100),
id_curso INT(10) NOT NULL,
data_matricula DATE,
PRIMARY KEY (id_estudante),
FOREIGN KEY (id_curso) REFERENCES tb_curso (id_curso)
);

CREATE TABLE tb_matricula (
id_matricula INT(10) NOT NULL,
id_estudante INT(10) NOT NULL,
id_disciplina INT(10) NOT NULL,
data_matricula DATE,
PRIMARY KEY (id_matricula),
FOREIGN KEY (id_estudante) REFERENCES tb_estudante (id_estudante),
FOREIGN KEY (id_disciplina) REFERENCES tb_disciplina (id_disciplina)
);

CREATE TABLE tb_nota (
id_nota INT(10) NOT NULL,
id_matricula INT(10) NOT NULL,
nota DECIMAL(5,2),
data_lancamento DATE,
PRIMARY KEY (id_nota),
FOREIGN KEY (id_matricula) REFERENCES tb_matricula (id_matricula)
);
--------------------------------------------------------------------------------
/* AUTO INCREMENTO */
ALTER TABLE tb_curso MODIFY id_curso INT AUTO_INCREMENT;
ALTER TABLE tb_professores MODIFY id_professor INT AUTO_INCREMENT;
ALTER TABLE tb_disciplina MODIFY id_disciplina INT AUTO_INCREMENT;
ALTER TABLE tb_estudante MODIFY id_estudante INT AUTO_INCREMENT;
ALTER TABLE tb_matricula MODIFY id_matricula INT AUTO_INCREMENT;
ALTER TABLE tb_nota MODIFY id_nota INT AUTO_INCREMENT;
-------------------------------------------------------------------------------
/*         DML         */

/*        TB_CURSO         */ 
INSERT INTO tb_curso VALUES ('1', 'Ciencia de Dados', '2');
INSERT INTO tb_curso VALUES ('2', 'Engenharia da Computação', '3');
INSERT INTO tb_curso VALUES ('3', 'Segurança Cibernetica', '2');
INSERT INTO tb_curso VALUES ('4', 'Mecatronica', '2');
INSERT INTO tb_curso VALUES ('5', 'Análise e Desenvolvimento de Sistemas', '1');

/*        TB_PROFESSORES          */
INSERT INTO tb_professores VALUES ('1', 'Jessica', 'Corpo Docente', '2020-01-01');
INSERT INTO tb_professores VALUES ('2', 'Kaique', 'Corpo Docente', '2015-01-01');
INSERT INTO tb_professores VALUES ('3', 'Daniel', 'Coordenador da Area Mecanica', '2011-01-01');
INSERT INTO tb_professores VALUES ('4', 'Paulo', 'Corpo Docente', '2009-01-01');
INSERT INTO tb_professores VALUES ('5', 'Vivian', 'Coordenadora Pedagogica', '2009-01-01');

/*         TB_DISCIPLINA          */
INSERT INTO tb_disciplina VALUES ('1', 'Banco de Dados', '1', '1');
INSERT INTO tb_disciplina VALUES ('2', 'Redes de Computadores', '2', '2');
INSERT INTO tb_disciplina VALUES ('3', 'Leis Governamentais', '3', '5');
INSERT INTO tb_disciplina VALUES ('4', 'Desenho Tecnico e Metrologia', '4', '3');
INSERT INTO tb_disciplina VALUES ('5', 'Engenharia de Software', '5', '2');
INSERT INTO tb_disciplina VALUES ('6', 'Circuitos Eletricos', '4', '4');
INSERT INTO tb_disciplina VALUES ('7', 'Algoritimos e Programação', '1', '1');

/*          TB_ESTUDANTE             */
INSERT INTO tb_estudante VALUES ('1', 'Amanda', '2001-12-20', 'amanda261@aluno.com.br', '2', '2025-01-27');
INSERT INTO tb_estudante VALUES ('2', 'Bruno', '2004-01-08', 'bruno119@aluno.com.br', '1', '2024-09-01');
INSERT INTO tb_estudante VALUES ('3', 'Caio', '2001-02-01', 'caio618@aluno.com.br', '2', '2025-02-10');
INSERT INTO tb_estudante VALUES ('4', 'Laura', '2000-12-10', 'laura606@aluno.com.br', '5', '2025-01-25');
INSERT INTO tb_estudante VALUES ('5', 'Guilherme', '2000-12-10', 'guilherme987@aluno.com.br', '1', '2025-01-26');
INSERT INTO tb_estudante VALUES ('6', 'Talita', '2005-12-10', 'talita395@aluno.com.br', '3', '2024-05-10');
INSERT INTO tb_estudante VALUES ('7', 'Carlos', '1999-07-08', 'carlos655@aluno.com.br', '4', '2023-06-15');
INSERT INTO tb_estudante VALUES ('8', 'Heitor', '1998-01-01', 'heitor974@aluno.com.br', '4', '2023-06-14');
INSERT INTO tb_estudante VALUES ('9', 'Maria', '2003-02-20', 'maria489@aluno.com.br', '1', '2024-10-01');
INSERT INTO tb_estudante VALUES ('10', 'Brenda', '2006-01-31', 'brenda613@aluno.com.br', '3', '2025-08-27');
INSERT INTO tb_estudante VALUES ('11', 'Luiza', '2003-11-03', 'luiza897@aluno.com.br', '5', '2024-05-11');

/*          TB_MATRICULA             */
INSERT INTO tb_matricula VALUES ('1', '1', '2', '2025-01-27');
INSERT INTO tb_matricula VALUES ('2', '2', '1', '2024-09-01');
INSERT INTO tb_matricula VALUES ('3', '3', '2', '2025-02-10');
INSERT INTO tb_matricula VALUES ('4', '4', '5', '2025-01-25');
INSERT INTO tb_matricula VALUES ('5', '5', '7', '2025-01-26');
INSERT INTO tb_matricula VALUES ('6', '6', '3', '2024-05-10');
INSERT INTO tb_matricula VALUES ('7', '7', '6', '2023-06-15');
INSERT INTO tb_matricula VALUES ('8', '8', '4', '2023-06-14');
INSERT INTO tb_matricula VALUES ('9', '9', '1', '2024-10-01');
INSERT INTO tb_matricula VALUES ('10', '10', '3', '2025-08-27');
INSERT INTO tb_matricula VALUES ('11', '11', '5', '2024-05-11');

/*         TB_NOTA             */
INSERT INTO tb_nota VALUES ('1', '1', '89', '2025-12-12');
INSERT INTO tb_nota VALUES ('2', '2', '80', '2025-12-12');
INSERT INTO tb_nota VALUES ('3', '3', '90', '2025-12-12');
INSERT INTO tb_nota VALUES ('4', '4', '92', '2025-12-12');
INSERT INTO tb_nota VALUES ('5', '5', '87', '2025-12-12');
INSERT INTO tb_nota VALUES ('6', '6', '80', '2025-12-12');
INSERT INTO tb_nota VALUES ('7', '7', '75', '2025-12-12');
INSERT INTO tb_nota VALUES ('8', '8', '65', '2025-12-12');
INSERT INTO tb_nota VALUES ('9', '9', '95', '2025-12-12');
INSERT INTO tb_nota VALUES ('10', '10', '90', '2025-12-12');
INSERT INTO tb_nota VALUES ('11', '11', '70', '2025-12-12');
---------------------------------------------------------------------------------------------------
/*                 DQL              */

/* Exercício 1: Liste todos os estudantes cadastrados na tabela estudantes que
pertencem ao curso de Ciência de Dados e foram matriculados em 2024. */
SELECT E.nome, C.nome, M.data_matricula FROM tb_estudante AS E
INNER JOIN tb_curso AS C
ON E.id_curso = C.id_curso
INNER JOIN tb_matricula AS M
ON E.id_estudante = M.id_estudante
WHERE C.nome = 'Ciencia de Dados' AND M.data_matricula BETWEEN '2024-01-01' AND '2024-12-31';

/* Exercício 2: Liste todos os professores que pertencem ao departamento de Engenharia
da Computação e possuem mais de 5 anos de experiência. */
SELECT * FROM tb_disciplina AS D
INNER JOIN tb_professores AS P
ON D.id_professor = P.id_professor
INNER JOIN tb_curso AS C
ON D.id_curso = C.id_curso
WHERE C.nome = 'Engenharia da Computação' AND TIMESTAMPDIFF(YEAR, P.ano_admissao, CURDATE()) > 5;

/* Exercício 3: Liste os nomes dos estudantes e suas notas nas disciplinas, ordenados
pela nota em ordem decrescente e, em caso de empate, pelo nome do estudante
em ordem alfabética. */
SELECT * FROM tb_estudante;
SELECT * FROM tb_nota;

SELECT N.nota, E.nome FROM tb_nota AS N
INNER JOIN tb_matricula AS M
ON N.id_matricula = M.id_matricula
INNER JOIN tb_estudante AS E
ON M.id_estudante = E.id_estudante
WHERE id_nota ORDER BY nota DESC, E.nome ASC;

/* Exercício 4: Encontre a média das notas dos estudantes no curso de Segurança Cibernetica. */
---- SELECT AVG (nota) FROM tb_nota;

---- SELECT * FROM tb_nota
---- WHERE curso = 'Segurança Cibernetica' (SELECT AVG (nota) FROM tb_nota);

SELECT AVG(nota) FROM tb_nota AS N
INNER JOIN tb_matricula AS M
ON N.id_matricula = M.id_matricula
INNER JOIN tb_estudante AS E
ON M.id_estudante = E.id_estudante
INNER JOIN tb_curso AS C
ON E.id_curso = C.id_curso
WHERE C.nome = 'Segurança Cibernetica';

/* Exercício 5: Liste os cursos que possuem mais de 5 estudantes matriculados.
Exiba o nome do curso e o total de estudantes matriculados. */

SELECT * FROM tb_curso WHERE id_estudante > 5;

SELECT * FROM tb_estudante AS E
INNER JOIN tb_curso AS C
ON E.id_curso = C.id_curso
WHERE id_estudante > 5;
------------------------------------------------------------------------------------------
/*              SUBQUERY           */

/* Exercício 1: Liste os cursos que possuem mais de 5 disciplinas associadas. */
SELECT * FROM tb_disciplina AS D
INNER JOIN tb_curso AS C
ON D.id_curso = C.id_curso
WHERE id_disciplina IN (SELECT id_disciplina FROM tb_curso
GROUP BY C.id_curso HAVING COUNT(D.id_disciplina) > 5);

/* Exercício 2: Liste os estudantes que estão matriculados em mais disciplinas do que
a média de disciplinas por estudante. */
SELECT E.nome, COUNT(M.id_disciplina) AS Total_disciplina
FROM tb_estudante AS E
INNER JOIN tb_matricula AS M
ON E.id_estudante = M.id_estudante
INNER JOIN tb_disciplina AS D
ON D.id_disciplina = M.id_disciplina
GROUP BY E.id_estudante, E.nome HAVING COUNT(M.id_disciplina) > (
SELECT AVG (qtd) FROM ( SELECT COUNT(M2.id_disciplina) AS qtd
FROM tb_matricula AS M2 
GROUP BY M2.id_estudante) AS SUB );

/* Exercício 3: Encontre os professores que ministram disciplinas com a maior média
de notas. */

/* Exercício 4: Liste os estudantes que possuem pelo menos uma nota abaixo da
média geral de notas. */
SELECT AVG(nota) FROM tb_nota;

SELECT E.nome, N.nota FROM tb_nota AS N
INNER JOIN tb_matricula AS M
ON N.id_matricula = M.id_matricula
INNER JOIN tb_estudante AS E
ON M.id_estudante = E.id_estudante
WHERE nota < (SELECT AVG(nota) FROM tb_nota);

/* Exercício 5: Liste os professores que não possuem nenhuma disciplina com notas
abaixo de 7. */
SELECT * FROM tb_disciplina AS D
INNER JOIN tb_professores AS P
ON D.id_professor = P.id_professor









