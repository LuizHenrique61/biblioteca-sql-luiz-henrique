CREATE DATABASE IF NOT EXISTS biblioteca_db;
USE biblioteca_db;

CREATE TABLE CATEGORIA (
  id_categoria INT PRIMARY KEY AUTO_INCREMENT,
  nome_categoria VARCHAR(100) NOT NULL,
  descricao VARCHAR(255)
);

CREATE TABLE AUTOR (
  id_autor INT PRIMARY KEY AUTO_INCREMENT,
  nome_autor VARCHAR(150) NOT NULL
);

CREATE TABLE LIVRO (
  id_livro INT PRIMARY KEY AUTO_INCREMENT,
  titulo VARCHAR(200) NOT NULL,
  ano_publicacao INT,
  isbn VARCHAR(20),
  id_categoria INT NOT NULL,
  id_autor INT NOT NULL,
  CONSTRAINT fk_livro_categoria
    FOREIGN KEY (id_categoria) REFERENCES CATEGORIA(id_categoria),
  CONSTRAINT fk_livro_autor
    FOREIGN KEY (id_autor) REFERENCES AUTOR(id_autor)
);

CREATE TABLE USUARIO (
  id_usuario INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(150) NOT NULL,
  cpf CHAR(11) NOT NULL UNIQUE,
  email VARCHAR(150),
  telefone VARCHAR(20),
  data_cadastro DATE NOT NULL
);

CREATE TABLE EMPRESTIMO (
  id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
  data_emprestimo DATE NOT NULL,
  data_prevista_devolucao DATE NOT NULL,
  status VARCHAR(20) NOT NULL,
  id_usuario INT NOT NULL,
  id_livro INT NOT NULL,
  CONSTRAINT fk_emprestimo_usuario
    FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario),
  CONSTRAINT fk_emprestimo_livro
    FOREIGN KEY (id_livro) REFERENCES LIVRO(id_livro)
);

CREATE TABLE DEVOLUCAO (
  id_devolucao INT PRIMARY KEY AUTO_INCREMENT,
  data_devolucao DATE NOT NULL,
  observacoes VARCHAR(255),
  id_emprestimo INT NOT NULL UNIQUE,
  CONSTRAINT fk_devolucao_emprestimo
    FOREIGN KEY (id_emprestimo) REFERENCES EMPRESTIMO(id_emprestimo)
);
