USE codeup_test_db;
DROP table if exists albums;
CREATE table albums(
  id INT UNSIGNED not null AUTO_INCREMENT,
  artist VARCHAR(100) not null,
  name varchar(100) not null,
  release_date date not null,
  sales float,
  genre varchar(100),
  primary key (id)
)
