ALTER TABLE animal DROP CONSTRAINT animal_reino ;
ALTER TABLE animal DROP CONSTRAINT animal_subfilo ;
ALTER TABLE animal DROP CONSTRAINT animal_classe ;
ALTER TABLE animal DROP CONSTRAINT animal_subclasse ;
ALTER TABLE animal DROP CONSTRAINT animal_ordem ;
ALTER TABLE animal DROP CONSTRAINT animal_subordem ;
ALTER TABLE animal DROP CONSTRAINT animal_familia ;
ALTER TABLE animal DROP CONSTRAINT animal_subfamilia ;
ALTER TABLE animal DROP CONSTRAINT animal_genero ;
ALTER TABLE animal DROP CONSTRAINT animal_subgenero ;
ALTER TABLE animal DROP CONSTRAINT animal_especie ;
ALTER TABLE animal DROP CONSTRAINT animal_subespecie ;
ALTER TABLE comentario DROP CONSTRAINT fkusuario_comentario ;
ALTER TABLE definicao DROP CONSTRAINT fkanimal_definicao ;
ALTER TABLE foto DROP CONSTRAINT fkanimal_foto ;
ALTER TABLE foto DROP CONSTRAINT foto_usuario ;
ALTER TABLE foto DROP CONSTRAINT fkfoto_localizacao ;
ALTER TABLE fotos_indefinidas DROP CONSTRAINT fotoindefinida_foto ;
ALTER TABLE localizacao DROP CONSTRAINT fk_localizacao_estado ;
ALTER TABLE localizacao DROP CONSTRAINT fk_localizacao_municipio ;
ALTER TABLE municipio DROP CONSTRAINT fk_estado_municipio ;
ALTER TABLE postagem DROP CONSTRAINT fkusuario_postagem ;
ALTER TABLE postagem DROP CONSTRAINT fkfoto_postagem ;
ALTER TABLE postagem_definicao DROP CONSTRAINT fkpostagemdefinicao_postagem ;
ALTER TABLE postagem_definicao DROP CONSTRAINT fkpostagemdefinicao_definicao ;
ALTER TABLE subclasse DROP CONSTRAINT subclasse_classe ;
ALTER TABLE subespecie DROP CONSTRAINT subespecie_especie ;
ALTER TABLE subfamilia DROP CONSTRAINT subfamilia_familia ;
ALTER TABLE subfilo DROP CONSTRAINT subfilo_filo ;
ALTER TABLE subgenero DROP CONSTRAINT subgenero_genero ;
ALTER TABLE subordem DROP CONSTRAINT subordem_ordem ;

DROP TABLE animal;
DROP TABLE classe;
DROP TABLE comentario;
DROP TABLE definicao;
DROP TABLE especie;
DROP TABLE estado;
DROP TABLE familia;
DROP TABLE filo;
DROP TABLE foto;
DROP TABLE fotos_indefinidas;
DROP TABLE genero;
DROP TABLE localizacao;
DROP TABLE municipio;
DROP TABLE ordem;
DROP TABLE postagem;
DROP TABLE postagem_comentario;
DROP TABLE postagem_definicao;
DROP TABLE reino;
DROP TABLE subclasse;
DROP TABLE subespecie;
DROP TABLE subfamilia;
DROP TABLE subfilo;
DROP TABLE subgenero;
DROP TABLE subordem;
DROP TABLE usuario;
DROP TABLE mapa_ocorrencias;