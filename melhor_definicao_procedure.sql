create or replace function melhor_definicao(animal varchar(255)) returns varchar(255) as
'       declare melhor_definicao varchar(255);

        begin
                select id_definicao into melhor_definicao from rank_definicao(animal) limit 1;
                
                return melhor_definicao;
        end;
'
language plpgsql;
  
select melhor_definicao('a5bc8f4e-5f4b-8a01-2f38-439b347ef9a6');