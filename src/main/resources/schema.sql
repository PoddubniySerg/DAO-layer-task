create table customers (
                           id serial primary key,
                           name varchar(50) not null,
                           surname varchar(50) not null,
                           age int check ( age > 18 and age < 150) not null,
                           phone_number char(11) not null
);
create index name_index on customers(name);
insert into customers(name, surname, age, phone_number) values ('Alexey', 'Kust', 29, '89246545221');
insert into customers(name, surname, age, phone_number) values ('Zevs', 'Oganesov', 26, '89235486552');
insert into customers(name, surname, age, phone_number) values ('alexey', 'Vetrov', 44, '89222365446');
insert into customers(name, surname, age, phone_number) values ('Marya', 'Suchova', 24, '89668783222');
insert into customers(name, surname, age, phone_number) values ('alexey', 'Valenok', 55, '89133955885');
insert into customers(name, surname, age, phone_number) values ('Igor', 'Scoriy', 20, '89568485544');
insert into customers(name, surname, age, phone_number) values ('Alexey', 'Mirniy', 33, '89265244732');

create table orders(
  id serial primary key,
  date date check ( date > '2020.01.01') not null,
  customer_id bigint unsigned not null,
  product_name varchar(200) not null,
  amount dec(10, 2) not null,
  foreign key (customer_id) references customers(id)
);

insert into orders(date, customer_id, product_name, amount) VALUES ('2021.12.08', 5, 'fun', 28543.45);
insert into orders(date, customer_id, product_name, amount) VALUES ('2020.07.23', 1, 'controller', 3045.12);
insert into orders(date, customer_id, product_name, amount) VALUES ('2022.04.12', 4, 'driver', 2747.88);
insert into orders(date, customer_id, product_name, amount) VALUES ('2022.08.16', 2, 'fun', 16752.27);