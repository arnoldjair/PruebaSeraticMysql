insert into categories(category_name, remarks) values 
("category1", "remark1"),
("category2", "remark2"),
("category3", "remark3"),
("category4", "remark4"),
("category5", "remark5"),
("category6", "remark6"),
("category7", "remark7"),
("category8", "remark8"),
("category9", "remark9");


insert into movies(title, director, year_released, category_id) values
("Peli1", "Director1", 2000, 1),
("Peli2", "Director2", 2001, 2),
("Peli3", "Director1", 2002, 3),
("Peli4", "Director2", 2003, 4),
("Peli5", "Director3", 2004, 5),
("Peli6", "Director1", 2004, 6),
("Peli7", "Director2", 2005, 7),
("Peli8", "Director3", 2005, 8),
("Peli1", "Director3", 2005, 9);

insert into members(full_names, gender, date_of_birth, physical_address, postal_address, contact_number, email) values
("Carlitos Yalanda", "male", "1995/07/01", "Evergreen terrace", "252828", "3131111111", "carlosya@mail.com"),
("Adriana Perez", "female", "1994/07/01", "Evergreen terrace", "252828", "3131111111", "carlosya@mail.com"),
("Camila Lopez", "female", "1993/07/01", "Evergreen terrace", "252828", "3131111111", "carlosya@mail.com"),
("Andres Majin", "male", "1992/07/01", "Evergreen terrace", "252828", "3131111111", "carlosya@mail.com"),
("Lorena Sacred", "female", "1991/07/01", "Evergreen terrace", "252828", "3131111111", "carlosya@mail.com"),
("Daniela Salcedo", "female", "1990/07/01", "Evergreen terrace", "252828", "3131111111", "carlosya@mail.com"),
("Alfredo Omote", "male", "1991/07/01", "Evergreen terrace", "252828", "3131111111", "carlosya@mail.com"),
("Jory Luna", "male", "1992/07/01", "Evergreen terrace", "252828", "3131111111", "carlosya@mail.com"),
("Darwin Serafin", "male", "1991/07/01", "Evergreen terrace", "252828", "3131111111", "carlosya@mail.com");

insert into movie_rentals(transaction_date, return_date, membership_number, movie_id) values
("2016/01/01", "2016/01/05", 2, 1),
("2016/01/01", "2016/01/05", 3, 2),
("2016/01/01", "2016/01/05", 4, 3),
("2016/01/01", "2016/01/05", 5, 4),
("2016/01/01", "2016/01/05", 6, 5),
("2016/01/01", "2016/01/05", 7, 6),
("2016/01/01", "2016/01/05", 8, 7),
("2016/01/01", "2016/01/05", 9, 8),
("2016/01/01", "2016/01/05", 10, 9);

insert into payments(membership_number, payment_date, description, amount_paid, external_reference_number) values 
(2, "2016/01/01", "none", 15000, 100),
(3, "2016/01/01", "none", 15000, 100),
(4, "2016/01/01", "none", 15000, 100),
(5, "2016/01/01", "none", 15000, 100),
(6, "2016/01/01", "none", 15000, 100),
(7, "2016/01/01", "none", 15000, 100),
(8, "2016/01/01", "none", 15000, 100),
(9, "2016/01/01", "none", 15000, 100),
(10, "2016/01/01", "none", 15000, 100);