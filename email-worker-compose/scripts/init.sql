create database email_sender;

\c email_sender

create table if not exists emails (
    id serial not null,
    data timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    assunto varchar(100) not null,
    mensagem varchar(250) not null
);