create or replace function rank_definicao(animal varchar(255)) returns table(id_definicao varchar(255), likes integer) as
'
        begin
                return query select distinct d.definicao_id, d.contador_likes from postagem p
                          inner join foto f on f.foto_id = p.foto_id
                          right join definicao d on d.animal_id = f.animal_id
                          where d.animal_id = animal
                                and d.contador_likes is not null
                          order by d.contador_likes desc;
        
        end;
'
language plpgsql;

select * from rank_definicao('6deefcdd-b265-cb83-5977-2fe0d23a64fc');

select distinct d.definicao_id, d.contador_likes from postagem p
                          inner join foto f on f.foto_id = p.foto_id
                          right join definicao d on d.animal_id = f.animal_id
                          where d.animal_id = 'a5bc8f4e-5f4b-8a01-2f38-439b347ef9a6'
                                and d.contador_likes is not null
                          order by d.contador_likes desc;