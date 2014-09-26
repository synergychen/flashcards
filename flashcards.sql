CREATE TABLE decks(
  id integer NOT NULL,
  name character varying(255),
  cards_number integer NOT NULL
);

CREATE TABLE cards(
  id integer NOT NULL,
  front character varying(255),
  back character varying(255),
  deck_id integer NOT NULL
);

INSERT INTO decks (id, name, cards_number)
  VALUES
    (1, 'japanese', 2),
    (2, 'germany', 3);

INSERT INTO cards (id, front, back, deck_id)
  VALUES
    (1, 'Dog', 'Inu', 1),
    (2, 'Cat', 'Neko', 1),
    (3, 'Snake', 'Hebi', 1),
    (4, 'Dog', 'Hund', 2),
    (5, 'Cat',  'Katze', 2),
    (6, 'Snake', 'Schlange', 2);
