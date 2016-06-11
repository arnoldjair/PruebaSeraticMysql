create table categories(
  category_id integer not null auto_increment,
  category_name varchar(150),
  remarks varchar(500),
  primary key(category_id)
);

create table movies(
  movie_id integer not null auto_increment,
  title varchar(350),
  director varchar(150),
  year_released varchar(4),
  category_id integer,
  primary key(movie_id)
);

create table movie_rentals (
  references_number integer not null auto_increment,
  transaction_date DATE,
  return_date DATE,
  membership_number integer,
  movie_id integer,
  primary key(references_number)
);

create table members(
  membership_number integer not null auto_increment,
  full_names varchar(150),
  gender varchar(6),
  date_of_birth date,
  physical_address varchar(255),
  postal_address varchar(255),
  contact_number varchar(75),
  email varchar(255),
  primary key(membership_number)
);

create table payments(
  payment_id integer not null auto_increment,
  
  membership_number integer,
  payment_date DATE,
  description varchar(75),
  amount_paid float,
  external_reference_number integer,
  primary key(payment_id)
);

alter table movies add constraint movie_category foreign key (category_id) references categories(category_id) on delete set null;

alter table movie_rentals add constraint mrental_movie foreign key (movie_id) references movies(movie_id) on delete set null;

alter table movie_rentals add constraint mrental_member foreign key (membership_number) references members(membership_number) on delete set null;

alter table payments add constraint payment_member foreign key (membership_number) references members(membership_number) on delete set null;