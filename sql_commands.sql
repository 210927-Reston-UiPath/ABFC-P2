create table clients (
    clientID serial,
    clientname varchar(255) not null,
    clientemail varchar(255) not null,
    primary key (clientID)
);

create table users (
    wishlistID serial,
    uclientID int not null,
    username varchar(255) not null,
    primary key (wishlistID)
    foreign key (uclientID) references clients(clientID)
);

create table userdevices (
    entryID serial not null,
    dclientID serial,
    Switch boolean,
    XboxOne boolean,
    XboxSeriesX boolean,
    PS5 boolean,
    PS4 boolean,
    PC boolean,
    OS varchar(255),
    ram varchar(255),
    cpu varchar(255),
    gpu varchar(255),
    primary key (entryID),
    foreign key (dclientID) references clients(clientID)
    
);

create table wishlist (
    gamename varchar(255) not null,
    wishlistID int not null,
    foreign key (wishlistID) references users(wishlistID)
);

create table games (
    gamelineID serial,
    gamename varchar(255) not null,
    gamegenre varchar(255) not null,
    gameprice DECIMAL(13, 2) not null,
    bestvendor varchar(255) not null,
    primary key (gamelineID)
);

create table vendors (
    vendorlineID serial,
    connectionkey int not null,
    link varchar(255) not null,
    primary key (vendorlineID),
    foreign key (connectionkey) references games(gamelineID)
);



