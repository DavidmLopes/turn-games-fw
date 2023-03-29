create schema dbo;

create table dbo.Users(
    id int generated always as identity primary key,
    username unique VARCHAR(64) not null,
    password_validation VARCHAR(256) not null,
    state VARCHAR(64) not null CHECK (state in ('OFFLINE', 'ONLINE')) default 'OFFLINE'
);

create table dbo.Users_Stats(
    user_id int primary key references dbo.Users(id),
    game_id int primary key references dbo.Games(id),
    state VARCHAR(64) CHECK (state in ('SEARCHING', 'IN_GAME')) default null,
    rating int not null
);

create table dbo.Tokens(
    token_validation VARCHAR(256) primary key,
    user_id int references dbo.Users(id),
    created_at bigint not null,
    last_used_at bigint not null
);

create table dbo.Games(
    id int generated always as identity primary key,
    name VARCHAR(64) not null,
    description VARCHAR(255),
    rules VARCHAR(255)
);

create table dbo.Matches(
    id UUID primary key not null,
    game_id int references dbo.Games(id),
    state VARCHAR(64) not null CHECK (state in ('SETUP', 'ON_GOING', 'END')) default 'SETUP',
    curr_player int references dbo.Users(id),
    curr_turn int not null default 0,
    deadline_turn TIMESTAMP,
    info jsonb not null
);

create table dbo.GamesUsers(
    game_id UUID primary key references dbo.Games(id),
    user_id int primary key references dbo.Users(id)
);
