USE codeup_test_db;

select * from albums;

select * from albums where release_date < 1980;

select * from albums where artist_name = 'Michael Jackson';

update albums set sales = sales * 10;

-- update albums set release_date = release_date - 100 where release_date < 1980;

update albums set artist_name = 'Peter Jackson' where artist_name = 'Michael Jackson';