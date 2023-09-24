# simple-crud-application
This project was created in 2 days after watching some Indian tutorials.
IDE was IntelliJ IDEA Ultimate.
Project JDK was Amazon Corretto 17.0.8.
Database used was Postgresql on Arch Linux (without GUI btw).
UI was Bootstrap 5.

BTW here's the SQL Query for creating Table:
create table stuff
(
    id         serial
        primary key,
    name       varchar(50) not null,
    birthday   date        not null,
    age        integer     not null,
    language   varchar(50) not null,
    university varchar(50) not null
);
