create function inserir_nova_foto_em_fotos_indefinidas() returns trigger as 
'
        begin
                if new.animal_id is null then
                        insert into fotos_indefinidas values(uuid_in(md5(random()::text || now()::text)::cstring), new.foto_id, new.datasubmissao);
                end if;
                return null;
        end;
'
 language plpgsql;
 
 drop function inserir_nova_foto_em_fotos_indefinidas()
 drop trigger foto_trigger on foto

create trigger foto_trigger 
after insert on foto 
for each row execute procedure inserir_nova_foto_em_fotos_indefinidas();

insert into foto values(
        uuid_in(md5(random()::text || now()::text)::cstring),
        '5e843ed1-7d19-6b26-0baf-0e4d74490c45',
        null,
        E'\x7f\x7f',
        current_date,
        current_date,
        '74835ec2-6a54-0016-ff77-b50ab23f28fa'
)

insert into localizacao (localizacao_id, estado_id, municipio_id) values (uuid_in(md5(random()::text || now()::text)::cstring), '86e9ae54-9fd4-22df-6878-338fd94b85b0', '31f358ad-2a1c-3d0f-84b8-e9be128b3868')
insert into estado values(uuid_in(md5(random()::text || now()::text)::cstring), 'RJ', 'Rio de Janeiro')
insert into municipio values(uuid_in(md5(random()::text || now()::text)::cstring), 'Rio de Janeiro', '86e9ae54-9fd4-22df-6878-338fd94b85b0')
insert into usuario values(uuid_in(md5(random()::text || now()::text)::cstring), '123456', '123mudar', 'email@gmail.com', 'Teste')