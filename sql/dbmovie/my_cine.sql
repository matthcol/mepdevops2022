-- connect with user movie or root on dbmovie database
-- (it work on any other database name) 
-- 		mysql -u movie -p dbmovie 	(with password)
--		mysql -u root -p dbmovie  	(with password)
--      sudo mysql -u root dbmovie 	(without password linux)
--		mysql -u root dbmovie 		(without password admin os)

-- (drop and) create tables :
source ddl/my_dbmovie_ddl.sql

-- insert init data
set autocommit = 1;
source dml/data_stars.sql
source dml/data_movies.sql
source dml/data_play.sql
