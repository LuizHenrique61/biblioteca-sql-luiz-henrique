USE biblioteca_db;

-----------------------
-- UPDATES
-----------------------

-- 1) Atualizar email da Ana
UPDATE USUARIO
SET email = 'ana.novoemail@example.com'
WHERE id_usuario = 1;

-- 2) Mudar status do empréstimo 2 para DEVOLVIDO
UPDATE EMPRESTIMO
SET status = 'DEVOLVIDO'
WHERE id_emprestimo = 2;

-- 3) Corrigir ano de publicação de Clean Code
UPDATE LIVRO
SET ano_publicacao = 2010
WHERE id_livro = 2;

-----------------------
-- DELETES
-----------------------

-- 1) Apagar devolução de id 1
DELETE FROM DEVOLUCAO
WHERE id_devolucao = 1;

-- 2) Apagar empréstimo 3 (não tem devolução ligada)
DELETE FROM EMPRESTIMO
WHERE id_emprestimo = 3;

-- 3) Apagar usuário 3 (nunca pegou livro)
DELETE FROM USUARIO
WHERE id_usuario = 3;
