create or replace function adicionar_dislikes_em_definicao(varchar(255)) returns void as 
'
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
'
 language plpgsql;
 
 insert into definicao values (uuid_in(md5(random()::text || now()::text)::cstring), null, '6deefcdd-b265-cb83-5977-2fe0d23a64fc', 0, null)
 insert into definicao values (uuid_in(md5(random()::text || now()::text)::cstring), null, '6deefcdd-b265-cb83-5977-2fe0d23a64fc', null, 0)
 insert into definicao values (uuid_in(md5(random()::text || now()::text)::cstring), null, '6deefcdd-b265-cb83-5977-2fe0d23a64fc', 10, 2)
 
 select * from definicao
 
 select adicionar_dislikes_em_definicao('96825a03-8ca0-2088-46d5-0907fb6fc50e')
 select adicionar_dislikes_em_definicao('d685d8a4-ca83-27fb-80ea-f4b186a26e15')
 select adicionar_dislikes_em_definicao('4ae9f6b1-9186-30ef-34da-3b82e550117f')