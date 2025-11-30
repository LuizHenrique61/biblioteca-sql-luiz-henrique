USE biblioteca_db;

-- 1) Livros com categoria e autor
SELECT
  l.id_livro,
  l.titulo,
  c.nome_categoria,
  a.nome_autor
FROM LIVRO l
JOIN CATEGORIA c ON l.id_categoria = c.id_categoria
JOIN AUTOR a     ON l.id_autor = a.id_autor
ORDER BY c.nome_categoria, l.titulo;

-- 2) Empréstimos em andamento, com usuário e livro
SELECT
  e.id_emprestimo,
  u.nome   AS usuario,
  l.titulo AS livro,
  e.data_emprestimo,
  e.data_prevista_devolucao
FROM EMPRESTIMO e
JOIN USUARIO u ON e.id_usuario = u.id_usuario
JOIN LIVRO   l ON e.id_livro   = l.id_livro
WHERE e.status = 'EM_ANDAMENTO'
ORDER BY e.data_emprestimo DESC;

-- 3) Até 5 últimos livros cadastrados
SELECT id_livro, titulo, ano_publicacao
FROM LIVRO
ORDER BY id_livro DESC
LIMIT 5;

-- 4) Empréstimos em atraso sem devolução registrada
SELECT
  e.id_emprestimo,
  u.nome AS usuario,
  l.titulo AS livro,
  e.data_prevista_devolucao
FROM EMPRESTIMO e
JOIN USUARIO u ON e.id_usuario = u.id_usuario
JOIN LIVRO   l ON e.id_livro   = l.id_livro
LEFT JOIN DEVOLUCAO d ON d.id_emprestimo = e.id_emprestimo
WHERE d.id_devolucao IS NULL
  AND e.data_prevista_devolucao < CURRENT_DATE();

-- 5) Quantidade de empréstimos por usuário
SELECT
  u.nome AS usuario,
  COUNT(e.id_emprestimo) AS qtde_emprestimos
FROM USUARIO u
LEFT JOIN EMPRESTIMO e ON e.id_usuario = u.id_usuario
GROUP BY u.id_usuario, u.nome
ORDER BY qtde_emprestimos DESC;
