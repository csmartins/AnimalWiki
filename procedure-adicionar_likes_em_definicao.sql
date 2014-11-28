create or replace function adicionar_likes_em_definicao(varchar(255)) returns void as 
'
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
'
 language plpgsql;
 
 insert into definicao values (uuid_in(md5(random()::text || now()::text)::cstring), null, '6deefcdd-b265-cb83-5977-2fe0d23a64fc', 0, 0)
 insert into definicao values (uuid_in(md5(random()::text || now()::text)::cstring), null, '6deefcdd-b265-cb83-5977-2fe0d23a64fc', null, 0)
 insert into definicao values (uuid_in(md5(random()::text || now()::text)::cstring), null, '6deefcdd-b265-cb83-5977-2fe0d23a64fc', 10, 0)
 
 select * from definicao
 
 select adicionar_likes_em_definicao('96825a03-8ca0-2088-46d5-0907fb6fc50e')
 select adicionar_likes_em_definicao('39a165f4-6be2-c95d-338f-3bc5179951f4')
 select adicionar_likes_em_definicao('de2c7bef-92fb-18b6-17dc-2a8a3e2d02be')