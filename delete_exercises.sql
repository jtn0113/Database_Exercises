USE codeup_test_db;

delete from albums where release_date > '1991-01-01';
delete from albums where genre like '%disco%';
delete from albums where artist_name = 'Eagles';

