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
        '05041e78-c037-896e-69bf-71fd3479c386',
        null,
        E'\x7f\x7f',
        current_date,
        current_date,
        '65b74200-f86b-e96a-5112-3bb7a7a2b494'
)