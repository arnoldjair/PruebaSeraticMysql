--punto a
select * from members where gender ="male" order by full_names desc;
--.punto a

--punto b
select * from movies where (instr(title, 'a') > 0) order by year_released;
--.punto b

--punto c
select * from categories order by length(category_name);
--.punto c

--punto d
delete from members where (instr(lower(full_names), "ca")> 0);
--.punto d

--punto e
select * from members where membership_number in (select membership_number from movie_rentals where return_date > now());
--.punto e

--punto f

--.punto f

--punto g
select year_released,count(*) from movies group by year_released; 
--.punto g

--punto h

--.punto h

--punto i
insert into movies(movie_id, title, director, year_released, category_id) values 
(4, "Peli100", "Arnold", 1987, 1) on duplicate key update title="Peli100", director="Arnold", year_released=1987, category_id=1;
--.punto i

