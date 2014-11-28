create type holder as (definicao_oid varchar(255), likes int);

create or replace function rank_definicao(animal varchar(255)) returns setof holder as
'
        declare
        r holder%rowtype;
        begin
        for r in select distinct d.definicao_id, d.contador_likes from postagem p
                          inner join foto f on f.foto_id = p.foto_id
                          inner join definicao d on d.animal_id = f.animal_id
                          where d.animal_id = animal
                                and d.contador_likes is not null
                          order by d.contador_likes desc
        loop
        return next r;
        end loop;
        return;
        end
'
language plpgsql;
  
create or replace function PLpgSQLDepartmentSalaries() returns setof holder as
'
declare
r holder%rowtype;
begin
for r in select distinct d.definicao_id, d.contador_likes from postagem p
                  inner join foto f on f.foto_id = p.foto_id
                  inner join definicao d on d.animal_id = f.animal_id
                  where d.animal_id = animal
                        and d.contador_likes is not null
                  order by d.contador_likes desc 
loop
return next r;
end loop;
return;
end
'
language 'plpgsql';  

select rank_definicao('a5bc8f4e-5f4b-8a01-2f38-439b347ef9a6');