CREATE TABLE Animal (
  animal_id         varchar(255) NOT NULL, 
  descricaoInformal varchar(1000) NOT NULL, 
  nomeInformal      varchar(255), 
  reino_id          varchar(255) NOT NULL, 
  filo_id           varchar(255) NOT NULL, 
  subFilo_id        varchar(255) NOT NULL, 
  classe_id         varchar(255) NOT NULL, 
  subClasse_id      varchar(255) NOT NULL, 
  ordem_id          varchar(255) NOT NULL, 
  subOrdem_id       varchar(255) NOT NULL, 
  familia_id        varchar(255) NOT NULL, 
  subFamilia_id     varchar(255) NOT NULL, 
  genero_id         varchar(255) NOT NULL, 
  subGenero_id      varchar(255) NOT NULL, 
  especie_id        varchar(255) NOT NULL, 
  subEspecie_id     varchar(255) NOT NULL, 
  PRIMARY KEY (animal_id));
  
CREATE TABLE Reino (
  reino_id  varchar(255) NOT NULL, 
  descricao varchar(1000) NOT NULL, 
  nome      varchar(255) NOT NULL, 
  PRIMARY KEY (reino_id));
  
CREATE TABLE Filo (
  filo_id   varchar(255) NOT NULL, 
  descricao varchar(1000) NOT NULL, 
  nome      varchar(255) NOT NULL, 
  PRIMARY KEY (filo_id));
  
CREATE TABLE SubFilo (
  subFilo_id varchar(255) NOT NULL, 
  descricao  varchar(1000) NOT NULL, 
  nome       varchar(255) NOT NULL, 
  PRIMARY KEY (subFilo_id));
  
CREATE TABLE Classe (
  classe_id varchar(255) NOT NULL, 
  descricao varchar(1000) NOT NULL, 
  nome      varchar(255) NOT NULL, 
  PRIMARY KEY (classe_id));
  
CREATE TABLE Sub_Classe (
  subClasse_id varchar(255) NOT NULL, 
  descricao    varchar(1000) NOT NULL, 
  nome         varchar(255) NOT NULL, 
  PRIMARY KEY (subClasse_id));
  
CREATE TABLE Ordem (
  ordem_id  varchar(255) NOT NULL, 
  descricao varchar(1000) NOT NULL, 
  nome      varchar(255) NOT NULL, 
  PRIMARY KEY (ordem_id));
  
CREATE TABLE SubOrdem (
  subOrdem_id varchar(255) NOT NULL, 
  descricao   varchar(1000) NOT NULL, 
  nome        varchar(255) NOT NULL, 
  PRIMARY KEY (subOrdem_id));
  
CREATE TABLE Familia (
  familia_id varchar(255) NOT NULL, 
  descricao  varchar(1000) NOT NULL, 
  nome       varchar(255) NOT NULL, 
  PRIMARY KEY (familia_id));
  
CREATE TABLE SubFamilia (
  subFamilia_id varchar(255) NOT NULL, 
  descricao     varchar(1000) NOT NULL, 
  nome          varchar(255) NOT NULL, 
  PRIMARY KEY (subFamilia_id));
  
CREATE TABLE Genero (
  genero_id varchar(255) NOT NULL, 
  descricao varchar(1000) NOT NULL, 
  nome      varchar(255) NOT NULL, 
  PRIMARY KEY (genero_id));
  
CREATE TABLE SubGenero (
  subGenero_id varchar(255) NOT NULL, 
  descricao    varchar(1000) NOT NULL, 
  nome         varchar(255) NOT NULL, 
  PRIMARY KEY (subGenero_id));
  
CREATE TABLE Especie (
  especie_id varchar(255) NOT NULL, 
  descricao  varchar(1000) NOT NULL, 
  nome       varchar(255) NOT NULL, 
  PRIMARY KEY (especie_id));
  
CREATE TABLE SubEspecie (
  subEspecie_id varchar(255) NOT NULL, 
  descricao     varchar(1000) NOT NULL, 
  nome          varchar(255) NOT NULL, 
  PRIMARY KEY (subEspecie_id));
  
CREATE TABLE Definicao (
  definicao_id varchar(255) NOT NULL, 
  avaliacao    varchar(255), 
  animal_id    varchar(255) NOT NULL, 
  PRIMARY KEY (definicao_id));
  
CREATE TABLE Foto (
  foto_id        varchar(255) NOT NULL, 
  localizacao_id varchar(255) NOT NULL, 
  animal_id      varchar(255), 
  foto           bytea NOT NULL, 
  data           date, 
  dataSubmissao  date NOT NULL, 
  PRIMARY KEY (foto_id));
  
CREATE TABLE Postagem (
  postagem_id varchar(255) NOT NULL, 
  comentario  varchar(1000), 
  foto_id     varchar(255) NOT NULL, 
  usuario_id  varchar(255) NOT NULL, 
  PRIMARY KEY (postagem_id));
  
CREATE TABLE Usuario (
  usuario_id varchar(255) NOT NULL, 
  cpf        varchar(20) NOT NULL, 
  senha      varchar(10) NOT NULL, 
  email      varchar(255) NOT NULL, 
  nome       varchar(255) NOT NULL, 
  PRIMARY KEY (usuario_id));
  
CREATE TABLE Comentario (
  comentario_id varchar(255) NOT NULL, 
  usuario_id    varchar(255) NOT NULL, 
  PRIMARY KEY (comentario_id));
  
CREATE TABLE Postagem_Comentario (
  postagem_id   varchar(255) NOT NULL, 
  comentario_id varchar(255) NOT NULL, 
  PRIMARY KEY (postagem_id, 
  comentario_id));
  
CREATE TABLE Postagem_Definicao (
  postagem_id  varchar(255) NOT NULL, 
  definicao_id varchar(255) NOT NULL, 
  PRIMARY KEY (postagem_id, 
  definicao_id));
  
CREATE TABLE Localizacao (
  localizacao_id varchar(255) NOT NULL, 
  complemento    varchar(255), 
  comentario     varchar(255), 
  estado_id      varchar(255) NOT NULL, 
  municipio_id   varchar(255) NOT NULL, 
  PRIMARY KEY (localizacao_id));
  
CREATE TABLE Estado (
  estado_id varchar(255) NOT NULL, 
  codigo    varchar(2) NOT NULL, 
  nome      varchar(255) NOT NULL, 
  PRIMARY KEY (estado_id));
  
CREATE TABLE Municipio (
  municipio_id varchar(255) NOT NULL, 
  nome         varchar(255) NOT NULL, 
  estado_id    varchar(255) NOT NULL, 
  PRIMARY KEY (municipio_id));
  
ALTER TABLE Animal ADD CONSTRAINT FKAnimal_Reino FOREIGN KEY (reino_id) REFERENCES Reino (reino_id);
ALTER TABLE Animal ADD CONSTRAINT FKAnimal_Filo FOREIGN KEY (filo_id) REFERENCES Filo (filo_id);
ALTER TABLE Animal ADD CONSTRAINT FKAnimal_SubFilo FOREIGN KEY (subFilo_id) REFERENCES SubFilo (subFilo_id);
ALTER TABLE Animal ADD CONSTRAINT FKAnimal_Classe FOREIGN KEY (classe_id) REFERENCES Classe (classe_id);
ALTER TABLE Animal ADD CONSTRAINT FKAnimal_SubClasse FOREIGN KEY (subClasse_id) REFERENCES Sub_Classe (subClasse_id);
ALTER TABLE Animal ADD CONSTRAINT FKAnimal_Ordem FOREIGN KEY (ordem_id) REFERENCES Ordem (ordem_id);
ALTER TABLE Animal ADD CONSTRAINT FKANimal_SubOrdem FOREIGN KEY (subOrdem_id) REFERENCES SubOrdem (subOrdem_id);
ALTER TABLE Animal ADD CONSTRAINT FKAnimal_Familia FOREIGN KEY (familia_id) REFERENCES Familia (familia_id);
ALTER TABLE Animal ADD CONSTRAINT FKAnimal_SubFamilia FOREIGN KEY (subFamilia_id) REFERENCES SubFamilia (subFamilia_id);
ALTER TABLE Animal ADD CONSTRAINT FKAnimal_Genero FOREIGN KEY (genero_id) REFERENCES Genero (genero_id);
ALTER TABLE Animal ADD CONSTRAINT FKAnimal_SubGenero FOREIGN KEY (subGenero_id) REFERENCES SubGenero (subGenero_id);
ALTER TABLE Animal ADD CONSTRAINT FKAnimal_Especie FOREIGN KEY (especie_id) REFERENCES Especie (especie_id);
ALTER TABLE Animal ADD CONSTRAINT FKAnimal_SubEspecie FOREIGN KEY (subEspecie_id) REFERENCES SubEspecie (subEspecie_id);
ALTER TABLE Definicao ADD CONSTRAINT FKAnimal_Definicao FOREIGN KEY (animal_id) REFERENCES Animal (animal_id);
ALTER TABLE Foto ADD CONSTRAINT FKAnimal_Foto FOREIGN KEY (animal_id) REFERENCES Animal (animal_id);
ALTER TABLE Postagem ADD CONSTRAINT FKFoto_Postagem FOREIGN KEY (foto_id) REFERENCES Foto (foto_id);
ALTER TABLE Postagem ADD CONSTRAINT FKUsuario_Postagem FOREIGN KEY (usuario_id) REFERENCES Usuario (usuario_id);
ALTER TABLE Comentario ADD CONSTRAINT FKUsuario_Comentario FOREIGN KEY (usuario_id) REFERENCES Usuario (usuario_id);
ALTER TABLE Postagem_Comentario ADD CONSTRAINT FKPostagem_C473061 FOREIGN KEY (postagem_id) REFERENCES Postagem (postagem_id);
ALTER TABLE Postagem_Comentario ADD CONSTRAINT FKPostagem_C831908 FOREIGN KEY (comentario_id) REFERENCES Comentario (comentario_id);
ALTER TABLE Postagem_Definicao ADD CONSTRAINT FKPostagem_D766037 FOREIGN KEY (postagem_id) REFERENCES Postagem (postagem_id);
ALTER TABLE Postagem_Definicao ADD CONSTRAINT FKPostagem_D618805 FOREIGN KEY (definicao_id) REFERENCES Definicao (definicao_id);
ALTER TABLE Foto ADD CONSTRAINT FK_Foto_Localizacao FOREIGN KEY (localizacao_id) REFERENCES Localizacao (localizacao_id);
ALTER TABLE Localizacao ADD CONSTRAINT FK_Localizacao_Estado FOREIGN KEY (estado_id) REFERENCES Estado (estado_id);
ALTER TABLE Localizacao ADD CONSTRAINT FK_Localizacao_Municipio FOREIGN KEY (municipio_id) REFERENCES Municipio (municipio_id);
ALTER TABLE Municipio ADD CONSTRAINT FK_Estado_Municipio FOREIGN KEY (estado_id) REFERENCES Estado (estado_id);
