USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(100),
    album_name VARCHAR(100),
    release_date DATE,
    sales DECIMAL(12, 2),
    genre VARCHAR(100),
    PRIMARY KEY (id)
);

