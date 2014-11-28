CREATE FUNCTION deletar_fotos_de_fotosindefinidas_quando_animalid_atualizado() RETURNS TRIGGER AS 
'
BEGIN
        if (old.animal_id is null) and (new.animal_id is not null) then 
                delete from fotos_indefinidas where foto_id = old.foto_id;
        end if;
RETURN null;
END
'
LANGUAGE plpgsql;

create trigger foto_update_trigger
after update on foto 
for each row execute procedure deletar_fotos_de_fotosindefinidas_quando_animalid_atualizado();

select f.* from foto f
        inner join public.fotos_indefinidas fi on fi.foto_id = f.foto_id
        
update foto set animal_id = '6deefcdd-b265-cb83-5977-2fe0d23a64fc' where foto_id = 'ac636cb9-7fee-b9ed-f64c-21adcd833b25'

update foto set animal_id = '6deefcdd-b265-cb83-5977-2fe0d23a64fc' where foto_id = '5bbe2747-ca90-30e6-3896-6c19c83b75d8'