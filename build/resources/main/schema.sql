USE blog;

CREATE TABLE IF NOT EXISTS autor (
autor_id  int NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome char,
descricao char,
postagens_id int
);

CREATE TABLE IF NOT EXISTS postagem (
 postagem_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
titulo char,
conteudo char,
categorias char,
exibicoes int,
autor_id int,
data timestamp,
FOREIGN KEY (autor_id) REFERENCES autor(autor_id)
) ;

ALTER TABLE autor
ADD FOREIGN KEY (postagens_id) REFERENCES postagem(postagem_id);