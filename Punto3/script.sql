delimiter //

create procedure CountMoviesByYear(in year varchar(4), out count integer)
  begin
    select count(*) into count from movies where year_released = year;
  end//
  
delimiter ;
  
call CountMoviesByYear(2000);

select @count;
