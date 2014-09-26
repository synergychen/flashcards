DROP TABLE decks;
DROP TABLE cards;

CREATE TABLE decks(
  id serial PRIMARY KEY,
  name character varying(255)
);

CREATE TABLE cards(
  id serial PRIMARY KEY,
  front character varying(255),
  back character varying(255),
  deck_id integer NOT NULL
);

INSERT INTO decks (name)
  VALUES
    ('japanese'),
    ('germany');

INSERT INTO cards (front, back, deck_id)
  VALUES
    ('Dog', 'Inu', 1),
    ('Cat', 'Neko', 1),
    ('Snake', 'Hebi', 1),
    ('Dog', 'Hund', 2),
    ('Cat',  'Katze', 2),
    ('Snake', 'Schlange', 2);
