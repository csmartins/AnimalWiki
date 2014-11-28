DROP TABLE animal;
CREATE TABLE animal (animal_id CHARACTER VARYING(255) NOT NULL, descricaoinformal CHARACTER VARYING(1000), nomeinformal CHARACTER VARYING(255), reino_id CHARACTER VARYING(255), filo_id CHARACTER VARYING(255), subfilo_id CHARACTER VARYING(255), classe_id CHARACTER VARYING(255), subclasse_id CHARACTER VARYING(255), ordem_id CHARACTER VARYING(255), subordem_id CHARACTER VARYING(255), familia_id CHARACTER VARYING(255), subfamilia_id CHARACTER VARYING(255), genero_id CHARACTER VARYING(255), subgenero_id CHARACTER VARYING(255), especie_id CHARACTER VARYING(255), subespecie_id CHARACTER VARYING(255), PRIMARY KEY (animal_id));
DROP TABLE classe;
CREATE TABLE classe (classe_id CHARACTER VARYING(255) NOT NULL, descricao CHARACTER VARYING(1000) NOT NULL, nome CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (classe_id));
DROP TABLE comentario;
CREATE TABLE comentario (comentario_id CHARACTER VARYING(255) NOT NULL, usuario_id CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (comentario_id));
DROP TABLE definicao;
CREATE TABLE definicao (definicao_id CHARACTER VARYING(255) NOT NULL, avaliacao CHARACTER VARYING(255), animal_id CHARACTER VARYING(255) NOT NULL, contador_likes INTEGER, contador_dislikes INTEGER, PRIMARY KEY (definicao_id));
DROP TABLE especie;
CREATE TABLE especie (especie_id CHARACTER VARYING(255) NOT NULL, descricao CHARACTER VARYING(1000) NOT NULL, nome CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (especie_id));
DROP TABLE estado;
CREATE TABLE estado (estado_id CHARACTER VARYING(255) NOT NULL, codigo CHARACTER VARYING(2) NOT NULL, nome CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (estado_id));
DROP TABLE familia;
CREATE TABLE familia (familia_id CHARACTER VARYING(255) NOT NULL, descricao CHARACTER VARYING(1000) NOT NULL, nome CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (familia_id));
DROP TABLE filo;
CREATE TABLE filo (filo_id CHARACTER VARYING(255) NOT NULL, descricao CHARACTER VARYING(1000) NOT NULL, nome CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (filo_id));
DROP TABLE foto;
CREATE TABLE foto (foto_id CHARACTER VARYING(255) NOT NULL, localizacao_id CHARACTER VARYING(255) NOT NULL, animal_id CHARACTER VARYING(255), foto BYTEA NOT NULL, data DATE, datasubmissao DATE NOT NULL, usuario_id CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (foto_id));
DROP TABLE fotos_indefinidas;
CREATE TABLE fotos_indefinidas (foto_indefinida_id CHARACTER VARYING(255) NOT NULL, foto_id CHARACTER VARYING(255) NOT NULL, ultima_atualizacao DATE NOT NULL, PRIMARY KEY (foto_indefinida_id));
DROP TABLE genero;
CREATE TABLE genero (genero_id CHARACTER VARYING(255) NOT NULL, descricao CHARACTER VARYING(1000) NOT NULL, nome CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (genero_id));
DROP TABLE localizacao;
CREATE TABLE localizacao (localizacao_id CHARACTER VARYING(255) NOT NULL, complemento CHARACTER VARYING(255), comentario CHARACTER VARYING(255), estado_id CHARACTER VARYING(255) NOT NULL, municipio_id CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (localizacao_id));
DROP TABLE mapa_ocorrencias;
CREATE TABLE mapa_ocorrencias (animal CHARACTER VARYING(255) NOT NULL, estado CHARACTER VARYING(255) NOT NULL, municipio CHARACTER VARYING(255) NOT NULL, quantidadeanimal INTEGER, PRIMARY KEY (animal, municipio, estado));
DROP TABLE municipio;
CREATE TABLE municipio (municipio_id CHARACTER VARYING(255) NOT NULL, nome CHARACTER VARYING(255) NOT NULL, estado_id CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (municipio_id));
DROP TABLE ordem;
CREATE TABLE ordem (ordem_id CHARACTER VARYING(255) NOT NULL, descricao CHARACTER VARYING(1000) NOT NULL, nome CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (ordem_id));
DROP TABLE postagem;
CREATE TABLE postagem (postagem_id CHARACTER VARYING(255) NOT NULL, comentario CHARACTER VARYING(1000), foto_id CHARACTER VARYING(255) NOT NULL, usuario_id CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (postagem_id));
DROP TABLE postagem_comentario;
CREATE TABLE postagem_comentario (postagem_id CHARACTER VARYING(255) NOT NULL, comentario_id CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (postagem_id, comentario_id));
DROP TABLE postagem_definicao;
CREATE TABLE postagem_definicao (postagem_id CHARACTER VARYING(255) NOT NULL, definicao_id CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (postagem_id, definicao_id));
DROP TABLE reino;
CREATE TABLE reino (reino_id CHARACTER VARYING(255) NOT NULL, descricao CHARACTER VARYING(1000) NOT NULL, nome CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (reino_id));
DROP TABLE subclasse;
CREATE TABLE subclasse (subclasse_id CHARACTER VARYING(255) NOT NULL, descricao CHARACTER VARYING(1000) NOT NULL, nome CHARACTER VARYING(255) NOT NULL, classe_id CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (subclasse_id));
DROP TABLE subespecie;
CREATE TABLE subespecie (subespecie_id CHARACTER VARYING(255) NOT NULL, descricao CHARACTER VARYING(1000) NOT NULL, nome CHARACTER VARYING(255) NOT NULL, especie_id CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (subespecie_id));
DROP TABLE subfamilia;
CREATE TABLE subfamilia (subfamilia_id CHARACTER VARYING(255) NOT NULL, descricao CHARACTER VARYING(1000) NOT NULL, nome CHARACTER VARYING(255) NOT NULL, familia_id CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (subfamilia_id));
DROP TABLE subfilo;
CREATE TABLE subfilo (subfilo_id CHARACTER VARYING(255) NOT NULL, descricao CHARACTER VARYING(1000) NOT NULL, nome CHARACTER VARYING(255) NOT NULL, filo_id CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (subfilo_id));
DROP TABLE subgenero;
CREATE TABLE subgenero (subgenero_id CHARACTER VARYING(255) NOT NULL, descricao CHARACTER VARYING(1000) NOT NULL, nome CHARACTER VARYING(255) NOT NULL, genero_id CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (subgenero_id));
DROP TABLE subordem;
CREATE TABLE subordem (subordem_id CHARACTER VARYING(255) NOT NULL, descricao CHARACTER VARYING(1000) NOT NULL, nome CHARACTER VARYING(255) NOT NULL, ordem_id CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (subordem_id));
DROP TABLE usuario;
CREATE TABLE usuario (usuario_id CHARACTER VARYING(255) NOT NULL, cpf CHARACTER VARYING(20) NOT NULL, senha CHARACTER VARYING(10) NOT NULL, email CHARACTER VARYING(255) NOT NULL, nome CHARACTER VARYING(255) NOT NULL, PRIMARY KEY (usuario_id));
ALTER TABLE animal ADD CONSTRAINT animal_reino FOREIGN KEY (reino_id) REFERENCES reino (reino_id);
ALTER TABLE animal ADD CONSTRAINT animal_filo FOREIGN KEY (filo_id) REFERENCES filo (filo_id);
ALTER TABLE animal ADD CONSTRAINT animal_subfilo FOREIGN KEY (subfilo_id) REFERENCES subfilo (subfilo_id);
ALTER TABLE animal ADD CONSTRAINT animal_classe FOREIGN KEY (classe_id) REFERENCES classe (classe_id);
ALTER TABLE animal ADD CONSTRAINT animal_subclasse FOREIGN KEY (subclasse_id) REFERENCES subclasse (subclasse_id);
ALTER TABLE animal ADD CONSTRAINT animal_ordem FOREIGN KEY (ordem_id) REFERENCES ordem (ordem_id);
ALTER TABLE animal ADD CONSTRAINT animal_subordem FOREIGN KEY (subordem_id) REFERENCES subordem (subordem_id);
ALTER TABLE animal ADD CONSTRAINT animal_familia FOREIGN KEY (familia_id) REFERENCES familia (familia_id);
ALTER TABLE animal ADD CONSTRAINT animal_subfamilia FOREIGN KEY (subfamilia_id) REFERENCES subfamilia (subfamilia_id);
ALTER TABLE animal ADD CONSTRAINT animal_genero FOREIGN KEY (genero_id) REFERENCES genero (genero_id);
ALTER TABLE animal ADD CONSTRAINT animal_subgenero FOREIGN KEY (subgenero_id) REFERENCES subgenero (subgenero_id);
ALTER TABLE animal ADD CONSTRAINT animal_especie FOREIGN KEY (especie_id) REFERENCES especie (especie_id);
ALTER TABLE animal ADD CONSTRAINT animal_subespecie FOREIGN KEY (subespecie_id) REFERENCES subespecie (subespecie_id);
ALTER TABLE comentario ADD CONSTRAINT fkusuario_comentario FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id);
ALTER TABLE definicao ADD CONSTRAINT fkanimal_definicao FOREIGN KEY (animal_id) REFERENCES animal (animal_id);
ALTER TABLE foto ADD CONSTRAINT fkanimal_foto FOREIGN KEY (animal_id) REFERENCES animal (animal_id);
ALTER TABLE foto ADD CONSTRAINT foto_usuario FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id);
ALTER TABLE foto ADD CONSTRAINT fkfoto_localizacao FOREIGN KEY (localizacao_id) REFERENCES localizacao (localizacao_id);
ALTER TABLE fotos_indefinidas ADD CONSTRAINT fotoindefinida_foto FOREIGN KEY (foto_id) REFERENCES foto (foto_id);
ALTER TABLE localizacao ADD CONSTRAINT fk_localizacao_estado FOREIGN KEY (estado_id) REFERENCES estado (estado_id);
ALTER TABLE localizacao ADD CONSTRAINT fk_localizacao_municipio FOREIGN KEY (municipio_id) REFERENCES municipio (municipio_id);
ALTER TABLE municipio ADD CONSTRAINT fk_estado_municipio FOREIGN KEY (estado_id) REFERENCES estado (estado_id);
ALTER TABLE postagem ADD CONSTRAINT fkusuario_postagem FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id);
ALTER TABLE postagem ADD CONSTRAINT fkfoto_postagem FOREIGN KEY (foto_id) REFERENCES foto (foto_id);
ALTER TABLE postagem_definicao ADD CONSTRAINT fkpostagemdefinicao_postagem FOREIGN KEY (postagem_id) REFERENCES postagem (postagem_id);
ALTER TABLE postagem_definicao ADD CONSTRAINT fkpostagemdefinicao_definicao FOREIGN KEY (definicao_id) REFERENCES definicao (definicao_id);
ALTER TABLE subclasse ADD CONSTRAINT subclasse_classe FOREIGN KEY (classe_id) REFERENCES classe (classe_id);
ALTER TABLE subespecie ADD CONSTRAINT subespecie_especie FOREIGN KEY (especie_id) REFERENCES especie (especie_id);
ALTER TABLE subfamilia ADD CONSTRAINT subfamilia_familia FOREIGN KEY (familia_id) REFERENCES familia (familia_id);
ALTER TABLE subfilo ADD CONSTRAINT subfilo_filo FOREIGN KEY (filo_id) REFERENCES filo (filo_id);
ALTER TABLE subgenero ADD CONSTRAINT subgenero_genero FOREIGN KEY (genero_id) REFERENCES genero (genero_id);
ALTER TABLE subordem ADD CONSTRAINT subordem_ordem FOREIGN KEY (ordem_id) REFERENCES ordem (ordem_id);
DROP FUNCTION adicionar_dislikes_em_definicao;
--/
CREATE FUNCTION adicionar_dislikes_em_definicao (character varying)  RETURNS void
  VOLATILE
AS $dbvis$
declare valor_dislike_antigo integer;
        declare valor_dislike_novo integer;
                
        begin
                select contador_dislikes into valor_dislike_antigo from definicao where definicao_id = $1 ;
                
                if (valor_dislike_antigo is null) then 
                        valor_dislike_antigo = 0;
                end if;
                
                valor_dislike_novo = valor_dislike_antigo - 1;
                
                if(valor_dislike_novo = -1) then
                        valor_dislike_novo = 0;
                end if;
                
                update definicao set contador_dislikes = valor_dislike_novo where definicao_id = $1;
        end;
$dbvis$ LANGUAGE plpgsql
/
DROP FUNCTION adicionar_likes_em_definicao;
--/
CREATE FUNCTION adicionar_likes_em_definicao (character varying)  RETURNS void
  VOLATILE
AS $dbvis$
declare valor_like_antigo integer;
        declare valor_like_novo integer;
                
        begin
                select contador_likes into valor_like_antigo from definicao where definicao_id = $1 ;
                
                if (valor_like_antigo is null ) then 
                        valor_like_antigo = 0;
                end if;
                
                valor_like_novo = valor_like_antigo + 1;
                
                update definicao set contador_likes = valor_like_novo where definicao_id = $1;
        end;
$dbvis$ LANGUAGE plpgsql
/
DROP FUNCTION criar_mapa_ocorrencias;
--/
CREATE FUNCTION criar_mapa_ocorrencias (animal character varying)  RETURNS void
  VOLATILE
AS $dbvis$
declare nome_animal varchar(255);
        
        begin
                select a.nomeinformal into nome_animal from animal a
                        where a.animal_id = animal;
                        
                delete from mapa_ocorrencias mo where mo.animal = nome_animal;
                
                insert into mapa_ocorrencias select a.nomeinformal, e.nome, m.nome, count(f.animal_id) from public.animal a
                        inner join public.foto f on f.animal_id = a.animal_id
                        inner join public.localizacao l on l.localizacao_id = f.localizacao_id
                        inner join public.municipio m on m.municipio_id = l.municipio_id
                        inner join public.estado e on e.estado_id = m.estado_id
                        where a.animal_id = animal
                        group by a.nomeinformal, e.nome, m.nome;
        end;
$dbvis$ LANGUAGE plpgsql
/
DROP FUNCTION deletar_fotos_de_fotosindefinidas_quando_animalid_atualizado;
--/
CREATE FUNCTION deletar_fotos_de_fotosindefinidas_quando_animalid_atualizado ()  RETURNS trigger
  VOLATILE
AS $dbvis$
BEGIN
        if (old.animal_id is null) and (new.animal_id is not null) then 
                delete from fotos_indefinidas where foto_id = old.foto_id;
        end if;
RETURN null;
END
$dbvis$ LANGUAGE plpgsql
/
DROP FUNCTION deletar_todas_fotos_quando_animal_deletado;
--/
CREATE FUNCTION deletar_todas_fotos_quando_animal_deletado ()  RETURNS trigger
  VOLATILE
AS $dbvis$
BEGIN
        delete from Foto where animal_id = old.animal_id;
        
        delete from definicao where animal_id = old.animal_id;
RETURN null;
END
$dbvis$ LANGUAGE plpgsql
/
DROP FUNCTION inserir_nova_foto_em_fotos_indefinidas;
--/
CREATE FUNCTION inserir_nova_foto_em_fotos_indefinidas ()  RETURNS trigger
  VOLATILE
AS $dbvis$
begin
                if new.animal_id is null then
                        insert into fotos_indefinidas values(uuid_in(md5(random()::text || now()::text)::cstring), new.foto_id, new.datasubmissao);
                end if;
                return null;
        end;
$dbvis$ LANGUAGE plpgsql
/
DROP FUNCTION insert_minha_function;
--/
CREATE FUNCTION insert_minha_function ()  RETURNS trigger
  VOLATILE
AS $dbvis$
BEGIN
INSERT INTO teste2 (campoC, campoD) values (5,25);
RETURN new;
END
$dbvis$ LANGUAGE plpgsql
/
DROP FUNCTION melhor_definicao;
--/
CREATE FUNCTION melhor_definicao (animal character varying)  RETURNS character varying
  VOLATILE
AS $dbvis$
declare melhor_definicao varchar(255);

        begin
                select id_definicao into melhor_definicao from rank_definicao(animal) limit 1;
                
                return melhor_definicao;
        end;
$dbvis$ LANGUAGE plpgsql
/
DROP FUNCTION rank_definicao;
--/
CREATE FUNCTION rank_definicao (animal character varying)  RETURNS TABLE(id_definicao character varying, likes integer)
  VOLATILE
AS $dbvis$
begin
                return query select distinct d.definicao_id, d.contador_likes from postagem p
                          inner join foto f on f.foto_id = p.foto_id
                          right join definicao d on d.animal_id = f.animal_id
                          where d.animal_id = animal
                                and d.contador_likes is not null
                          order by d.contador_likes desc;
        
        end;
$dbvis$ LANGUAGE plpgsql
/
DROP TRIGGER foto_trigger ON foto CASCADE;
--/
CREATE TRIGGER foto_trigger
  AFTER INSERT ON foto
  FOR EACH ROW
EXECUTE PROCEDURE inserir_nova_foto_em_fotos_indefinidas()
/
