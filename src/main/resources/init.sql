create database giorgi_odishvili;
create table giorgi_odishvili.movies
(
    movieId      BIGINT auto_increment primary key,
    title        text,
    director     text,
    release_date DATE,
    rating       decimal,
    description  text
);