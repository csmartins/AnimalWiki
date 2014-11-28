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
 
 
 select * from definicao where definicao_id = '94e89d47-ad24-3ce7-15b3-76455ddfebbb'
 
 select adicionar_likes_em_definicao('94e89d47-ad24-3ce7-15b3-76455ddfebbb')
 