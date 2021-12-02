CREATE DATABASE `my_library` collate `utf8_unicode_ci`;
create  table `Students`(
                            id int(11) AUTO_INCREMENT primary key ,
                            name varchar(10),
                            class varchar(10)
);
create table `producers`(
                            id int(11) auto_increment primary key ,
                            name varchar(11)
);

create table `books`(
                        id int(11) auto_increment primary key ,
                        name varchar(11),
                        category varchar(11),
                        producer_id int(11),
                        foreign key (producer_id) references producers(id)
);

create table `borrows`(
                          id int(11) auto_increment primary key ,
                          borrow_date varchar(10),
                          borrow_return_date varchar(10),
                          student_id   int(11),
                          foreign key (student_id) references students(id)
);
create table `detail`(
                         book_id int(11),
                         foreign key (book_id) references books(id),
                         borrow_id int(11),
                         foreign key (borrow_id) references borrows(id)
);
insert into students(`name`,`class`) values ('Dung','C09K1');
insert into students(`name`,`class`) values ('Hà','C09K1');
insert into students(`name`,`class`) values ('Nam','C09K2');
insert into students(`name`,`class`) values ('Tiệp','C09K2');
insert into students(`name`,`class`) values ('Lực','C09K2');