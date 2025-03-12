CREATE DATABASE "my_DB"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

    CREATE TABLE public.students
(
    id integer NOT NULL,
    name text NOT NULL,
    age integer,
    email text NOT NULL,
    "number" text,
    PRIMARY KEY (id),
    CONSTRAINT student_email_unique UNIQUE (email)
);

ALTER TABLE IF EXISTS public.students
    OWNER to postgres;

insert into students(name, age, email, number) values 
('Olga', 19, 'mam@a.ru', '8998980'),
('Anna', 20, 'sed@a.ru', '8800025'),
('Vlad', 29, 'fed@a.ru', '8956522');

select * from students where age > 20;