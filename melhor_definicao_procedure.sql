create or replace function melhor_definicao(animal varchar(255)) returns varchar(255) as
'       declare melhor_definicao varchar(255);

        begin
                select d.definicao_id into melhor_definicao from postagem p
                  inner join foto f on f.foto_id = p.foto_id
                  inner join definicao d on d.animal_id = f.animal_id
                  where d.animal_id = animal
                        and d.contador_likes is not null
                  order by d.contador_likes desc
                  limit 1;
                  
                return melhor_definicao;
        end;
'
language plpgsql;
  
select melhor_definicao('a5bc8f4e-5f4b-8a01-2f38-439b347ef9a6');
