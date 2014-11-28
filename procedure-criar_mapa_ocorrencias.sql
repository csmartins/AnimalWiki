create or replace function criar_mapa_ocorrencias(animal varchar(255)) returns void as
'
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
'
language plpgsql;

select * from animal
select * from mapa_ocorrencias

insert into foto values(
        uuid_in(md5(random()::text || now()::text)::cstring),
        '3b4c1aad-4d2d-5340-cc50-e2bad0bf221b',
        '6deefcdd-b265-cb83-5977-2fe0d23a64fc',
        E'\x7f\x7f',
        current_date,
        current_date,
        '74835ec2-6a54-0016-ff77-b50ab23f28fa'
)

insert into localizacao (localizacao_id, estado_id, municipio_id) values (uuid_in(md5(random()::text || now()::text)::cstring), '86e9ae54-9fd4-22df-6878-338fd94b85b0', '31f358ad-2a1c-3d0f-84b8-e9be128b3868')
insert into municipio values(uuid_in(md5(random()::text || now()::text)::cstring), 'São João de Meriti', '86e9ae54-9fd4-22df-6878-338fd94b85b0')

select * from public.localizacao
select * from municipio

select criar_mapa_ocorrencias('6deefcdd-b265-cb83-5977-2fe0d23a64fc')
