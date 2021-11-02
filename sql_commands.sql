select  * from clients;
select * from userdevices;
select * from wishlist;
select * from games;

drop table IF EXISTS clients cascade;
drop table IF EXISTS users cascade;
drop table IF EXISTS wishlist cascade;
drop table IF EXISTS userdevices cascade;
drop table IF EXISTS games cascade; 

create table clients (
    clientID serial,
    clientname varchar(255) not null,
    clientemail varchar(255) not null,
    username varchar(255) not null,
    primary key (clientID)
);

/*
insert into clients (clientname,clientemail,username)
values ('Timothy','testemail@gmail.com','timothyyu');
insert into clients (clientname,clientemail,username)
values ('Kenneth','testemail2@gmail.com','kbradburn');
select * from clients;
*/

create table wishlist (
    wishlistID serial not null,
    wishclientID int not null,
    wishgameID int not null,
    foreign key (wishclientID) references clients(clientID),
    foreign key (wishgameID) references games(gamelineID),
    primary key (wishlistID)
);

create table games (
    gamelineID serial,
    gamename varchar(255) not null,
    gamegenre varchar(255) not null,
    gameprice DECIMAL(13, 2) not null,
    bestvendor varchar(255) not null,
    link varchar(255) not null,
    primary key (gamelineID)
);

drop table device cascade; 

create table Device (
    DevLineID serial,
    DevclientID int not null,
    DeviceName varchar(50) not null,
    PCref int unique,
    primary key (DevLineID),
    foreign key (DevclientID) references clients(clientID)
);
/*
insert into device (DevclientID,DeviceName)
values (1,'PS4');

select * from Device;

insert into device (DevclientID,DeviceName,PCref)
values (2,'PC', 1);

insert into PCowner (ownclientID,PCref,OS,RAM,CPU,GPU)
values (2,1,'Windows 10','16GB','AMD Ryzen 5 3600X','NVIDIA 2060S');

select * from PCowner;
*/

create table PCowner (
    LineID serial not null,
    ownclientID int not null,
    PCref int not null,
    OS varchar(255) not null,
    RAM varchar(255) not null,
    CPU varchar(255) not null,
    GPU varchar(255) not null,
    foreign key (ownclientID) references clients(clientID),
    foreign key (PCref) references Device(PCref),
    primary key (LineID)
);