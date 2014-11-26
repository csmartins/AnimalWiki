CREATE FUNCTION deletar_todas_fotos_quando_animal_deletado() RETURNS TRIGGER AS 
'
BEGIN
        delete from Foto where animal_id = old.animal_id;
        
        delete from definicao where animal_id = old.animal_id;
RETURN null;
END
'
LANGUAGE plpgsql;

create trigger animal_trigger 
before delete on animal 
for each row execute procedure deletar_todas_fotos_quando_animal_deletado();

insert into Animal values (uuid_in(md5(random()::text || now()::text)::cstring), 'cachorro legal', 'cachorro')

insert into foto values(
        uuid_in(md5(random()::text || now()::text)::cstring),
        '5e843ed1-7d19-6b26-0baf-0e4d74490c45',
        '6deefcdd-b265-cb83-5977-2fe0d23a64fc',
        E'\x7f\x7f',
        current_date,
        current_date,
        '74835ec2-6a54-0016-ff77-b50ab23f28fa'
)

insert into definicao values (uuid_in(md5(random()::text || now()::text)::cstring), null, '6deefcdd-b265-cb83-5977-2fe0d23a64fc')

delete from animal where nomeinformal = 'cachorro'