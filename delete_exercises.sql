USE codeup_test_db;

delete from albums where release_date > '1991-01-01';
delete from albums where genre = '%disco%';
delete from albums where artist_name = 'Eagles';

