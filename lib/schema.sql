CREATE TABLE series (
  id          INTEGER PRIMARY KEY,
  title       TEXT,
  author_id   INTEGER,
  subgenre_id INTEGER
);

CREATE TABLE subgenres (
  id          INTEGER PRIMARY KEY,
  name        TEXT
);

CREATE TABLE authors (
  id          INTEGER PRIMARY KEY,
  name        TEXT
);