USE codeup_test_db;

select album_name from albums where artist_name = "Pink Floyd";

select release_date from albums where album_name = "Sgt. Peppers Lonely Hearts Club Band";

select genre from albums where album_name = "Nevermind";

select album_name from albums where release_date between 1990 and 1999;

select album_name from albums where sales = < 20000000;

select album_name from albums where genre like "%rock%";