begin;

/* Usuarios */
insert into usuario values('65b74200-f86b-e96a-5112-3bb7a7a2b494', '123456', '123mudar', 'email@gmail.com', 'Teste');

/* Estado */
insert into estado values('c5e0b5e3-2ade-5103-1e80-1b2489525b3c', 'RJ', 'Rio de Janeiro');
insert into estado values('5e597417-13d0-5c49-303a-a834ff7339b2', 'SP', 'Sao Paulo');

/* Municipio */
insert into municipio values('cf3f68db-8ec7-0301-9acf-fee42c490db0', 'Rio de Janeiro', 'c5e0b5e3-2ade-5103-1e80-1b2489525b3c');
insert into municipio values('e1967090-1d3a-6c80-6476-c396b6cd56d5', 'São João de Meriti', 'c5e0b5e3-2ade-5103-1e80-1b2489525b3c');
insert into municipio values('0af1d7f4-ba84-57ed-29e1-ebf9872f3dac', 'São Paulo', '5e597417-13d0-5c49-303a-a834ff7339b2');

/* Localizacao */
insert into localizacao (localizacao_id, estado_id, municipio_id) values ('05041e78-c037-896e-69bf-71fd3479c386', 'c5e0b5e3-2ade-5103-1e80-1b2489525b3c', 'cf3f68db-8ec7-0301-9acf-fee42c490db0');
insert into localizacao (localizacao_id, estado_id, municipio_id) values ('8d83788d-c894-ccf9-221d-a9da607f4381', 'c5e0b5e3-2ade-5103-1e80-1b2489525b3c', 'e1967090-1d3a-6c80-6476-c396b6cd56d5');
insert into localizacao (localizacao_id, estado_id, municipio_id) values ('1a2b3c54-c509-8d22-d168-a3eb95f92443', '5e597417-13d0-5c49-303a-a834ff7339b2', '0af1d7f4-ba84-57ed-29e1-ebf9872f3dac');

/* Animais */
insert into Animal values ('a5bc8f4e-5f4b-8a01-2f38-439b347ef9a6', 'cachorro legal', 'cachorro');
insert into Animal values ('6deefcdd-b265-cb83-5977-2fe0d23a64fc', 'gato legal', 'gato');
insert into Animal values ('fe4a4670-2ac9-622b-9566-e2c47b16a336', 'cobra legal', 'cobra');
insert into Animal values ('b5133539-2de9-3f30-927b-b130ca9b90ae', 'aruarana legal', 'aruarana');

/* Fotos */
insert into foto values( '441e183f-8628-8fe4-6ba8-de6f6c329de9',
                         '05041e78-c037-896e-69bf-71fd3479c386',
                         'a5bc8f4e-5f4b-8a01-2f38-439b347ef9a6',
                          E'\x7f\x7f',
                          current_date,
                          current_date,
                          '65b74200-f86b-e96a-5112-3bb7a7a2b494');

insert into foto values( 'bc9abd98-ab52-826a-e99d-68a82f9c0760',
                         '05041e78-c037-896e-69bf-71fd3479c386',
                         'a5bc8f4e-5f4b-8a01-2f38-439b347ef9a6',
                          E'\x7f\x7f',
                          current_date,
                          current_date,
                          '65b74200-f86b-e96a-5112-3bb7a7a2b494');

insert into foto values( '59cb184e-3fd0-f159-dd3c-cd44d6d17997',
                         '05041e78-c037-896e-69bf-71fd3479c386',
                         '6deefcdd-b265-cb83-5977-2fe0d23a64fc',
                          E'\x7f\x7f',
                          current_date,
                          current_date,
                          '65b74200-f86b-e96a-5112-3bb7a7a2b494');
                          
                          
insert into foto values( 'e8184964-6531-4af4-5fba-26f3b95608ec',
                         '05041e78-c037-896e-69bf-71fd3479c386',
                         '6deefcdd-b265-cb83-5977-2fe0d23a64fc',
                          E'\x7f\x7f',
                          current_date,
                          current_date,
                          '65b74200-f86b-e96a-5112-3bb7a7a2b494');
                          
 insert into foto values('c5f039cb-fc52-59ca-48e4-e8aa056156ee',
                         '8d83788d-c894-ccf9-221d-a9da607f4381',
                         '6deefcdd-b265-cb83-5977-2fe0d23a64fc',
                          E'\x7f\x7f',
                          current_date,
                          current_date,
                          '65b74200-f86b-e96a-5112-3bb7a7a2b494');
 
 insert into foto values('88e606c3-9ccb-e170-608f-ed2befa049ef',
                         '8d83788d-c894-ccf9-221d-a9da607f4381',
                         '6deefcdd-b265-cb83-5977-2fe0d23a64fc',
                          E'\x7f\x7f',
                          current_date,
                          current_date,
                          '65b74200-f86b-e96a-5112-3bb7a7a2b494');
                          
                          
 insert into foto values('82ac48d2-0be5-841a-d40a-329e58fe8554',
                         '1a2b3c54-c509-8d22-d168-a3eb95f92443',
                         '6deefcdd-b265-cb83-5977-2fe0d23a64fc',
                          E'\x7f\x7f',
                          current_date,
                          current_date,
                          '65b74200-f86b-e96a-5112-3bb7a7a2b494');
                          
/* Definição */
insert into definicao values ('94e89d47-ad24-3ce7-15b3-76455ddfebbb', null, '6deefcdd-b265-cb83-5977-2fe0d23a64fc', 0, null);
insert into definicao values ('d5bd6f35-b3f4-0d45-4c74-980c01684b01', null, '6deefcdd-b265-cb83-5977-2fe0d23a64fc', null, 0);
insert into definicao values ('54dadca5-7122-dd26-4356-cf3216de5cce', null, '6deefcdd-b265-cb83-5977-2fe0d23a64fc', 10, 2);

insert into definicao values ('7c2ecfc7-823d-673a-ec2d-d7106bcee0d9', null, 'a5bc8f4e-5f4b-8a01-2f38-439b347ef9a6', 0, null);
insert into definicao values ('df81c454-35f1-79c1-71d3-57ef0f14f4ba', null, 'a5bc8f4e-5f4b-8a01-2f38-439b347ef9a6', null, 0);
insert into definicao values ('49acd4f8-732b-64fa-1a58-723c156c0a8c', null, 'a5bc8f4e-5f4b-8a01-2f38-439b347ef9a6', 10, 2);

insert into definicao values ('7cc8b6d3-d90e-66af-189b-bb7865be9631', null, 'b5133539-2de9-3f30-927b-b130ca9b90ae', 0, null);
insert into definicao values ('197cc8d4-7d4a-289a-9ddf-5715d24c477c', null, 'b5133539-2de9-3f30-927b-b130ca9b90ae', null, 0);
insert into definicao values ('5411445a-8f0b-6a9a-5c96-d219fb4f3ac7', null, 'b5133539-2de9-3f30-927b-b130ca9b90ae', 10, 2);

/* Postagem */
insert into postagem values ('e81877e2-5952-6476-8636-ad25883b8782', null, '441e183f-8628-8fe4-6ba8-de6f6c329de9', '65b74200-f86b-e96a-5112-3bb7a7a2b494');
insert into postagem values ('b1684bbd-c6ff-d0fe-4792-888729230bda', null, 'bc9abd98-ab52-826a-e99d-68a82f9c0760', '65b74200-f86b-e96a-5112-3bb7a7a2b494');
insert into postagem values ('166df82b-97e1-f0b5-1874-c58294155876', null, '59cb184e-3fd0-f159-dd3c-cd44d6d17997', '65b74200-f86b-e96a-5112-3bb7a7a2b494');
insert into postagem values ('034334dd-1174-5fec-02f2-56c509be4cb2', null, 'e8184964-6531-4af4-5fba-26f3b95608ec', '65b74200-f86b-e96a-5112-3bb7a7a2b494');
insert into postagem values ('6c681b0e-3f98-bb08-98c0-7d2cbadeadec', null, 'c5f039cb-fc52-59ca-48e4-e8aa056156ee', '65b74200-f86b-e96a-5112-3bb7a7a2b494');
insert into postagem values ('d1cb85f7-940c-3231-5562-b379bb93830c', null, '88e606c3-9ccb-e170-608f-ed2befa049ef', '65b74200-f86b-e96a-5112-3bb7a7a2b494');
insert into postagem values ('6bf51779-2d52-56f0-451a-d9a01f5fa8d7', null, '82ac48d2-0be5-841a-d40a-329e58fe8554', '65b74200-f86b-e96a-5112-3bb7a7a2b494');

commit

rollback

select * from postagem

