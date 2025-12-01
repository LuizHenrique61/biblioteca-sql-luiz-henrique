# 📚 Sistema de Biblioteca — Scripts SQL  
Repositório criado para a Experiência Prática 4 da disciplina de Modelagem de Banco de Dados.  
Aqui estão os scripts SQL necessários para criação, inserção, consulta e manipulação de dados do minimundo da **Biblioteca** desenvolvido nas atividades anteriores.

---

## 🗂️ Estrutura do Repositório

/
├── README.md
└── sql/
    ├── 00_create_tables.sql
    ├── 01_insert_data.sql
    ├── 02_select_queries.sql
    └── 03_update_delete.sql

---

## 🛠️ Tecnologias Utilizadas

- MySQL Workbench (executar scripts)
- MySQL Server
- Linguagem SQL (DDL + DML)

Os scripts também podem ser adaptados para PostgreSQL.

---

## 🗃️ Descrição do Banco de Dados

O banco representa o minimundo de uma **Biblioteca**, contendo:

- Categoria  
- Autor  
- Livro  
- Usuário  
- Empréstimo  
- Devolução

O modelo lógico segue integridade referencial e está normalizado até **3FN**.

---

## 📄 Scripts Disponíveis

### 00_create_tables.sql  
Cria o banco `biblioteca_db` e todas as tabelas com suas PKs e FKs.

### 01_insert_data.sql  
Insere dados de exemplo:
- 3 categorias  
- 3 autores  
- 3 livros  
- 3 usuários  
- 3 empréstimos  
- 1 devolução  

### 02_select_queries.sql  
Contém 5 consultas SQL com:
- JOIN  
- WHERE  
- ORDER BY  
- LIMIT  
- GROUP BY  

Inclui:
- Empréstimos em andamento  
- Livros com categoria e autor  
- Empréstimos em atraso  
- Livros mais recentes  
- Quantidade de empréstimos por usuário  

### 03_update_delete.sql  
Inclui:
- 3 UPDATE  
- 3 DELETE  

Alterações e remoções feitas respeitando integridade referencial.

---

## ▶️ Como Executar os Scripts (MySQL Workbench)

1. Abra o **MySQL Workbench**  
2. Clique em **Local Instance MySQL** para conectar  
3. Abra um script:
   - File → Open SQL Script  
4. Execute com o botão ⚡ (raio)  
5. Atualize o painel **SCHEMAS**

### Ordem recomendada de execução:
1. 00_create_tables.sql  
2. 01_insert_data.sql  
3. 02_select_queries.sql  
4. 03_update_delete.sql  

---

## 👨‍💻 Autor
**Luiz Henrique Ribeiro de Morais**  
Modelagem de Banco de Dados – Experiência Prática 4

---


