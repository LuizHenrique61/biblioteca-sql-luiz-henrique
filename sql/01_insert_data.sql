USE biblioteca_db;

-- CATEGORIA
INSERT INTO CATEGORIA (nome_categoria, descricao) VALUES
('Ficção',     'Romances e narrativas ficcionais'),
('Tecnologia', 'Livros de programação e TI'),
('Educação',   'Materiais voltados à área educacional');

-- AUTOR
INSERT INTO AUTOR (nome_autor) VALUES
('J. R. R. Tolkien'),
('Robert C. Martin'),
('Paulo Freire');

-- LIVRO
INSERT INTO LIVRO (titulo, ano_publicacao, isbn, id_categoria, id_autor) VALUES
('O Hobbit',                1937, '9788578273690', 1, 1),
('Clean Code',              2008, '9780132350884', 2, 2),
('Pedagogia da Autonomia',  1996, '9788588219079', 3, 3);

-- USUARIO
INSERT INTO USUARIO (nome, cpf, email, telefone, data_cadastro) VALUES
('Ana Silva',   '11111111111', 'ana.silva@example.com',   '(11)90000-0001', '2025-03-01'),
('Bruno Costa', '22222222222', 'bruno.costa@example.com', '(11)90000-0002', '2025-03-02'),
('Carla Souza', '33333333333', 'carla.souza@example.com', '(11)90000-0003', '2025-03-03');

-- EMPRESTIMO
INSERT INTO EMPRESTIMO (data_emprestimo, data_prevista_devolucao, status, id_usuario, id_livro)
VALUES 
('2025-03-05', '2025-03-15', 'DEVOLVIDO',    1, 1),
('2025-03-10', '2025-03-20', 'EM_ANDAMENTO', 2, 2),
('2025-02-20', '2025-03-01', 'EM_ATRASO',    1, 3);

-- DEVOLUCAO (apenas do empréstimo 1)
INSERT INTO DEVOLUCAO (data_devolucao, observacoes, id_emprestimo) VALUES
('2025-03-12', 'Livro devolvido em bom estado', 1);
