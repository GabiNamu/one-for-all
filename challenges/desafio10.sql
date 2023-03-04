-- Descomente e altere as linhas abaixo:

CREATE TABLE SpotifyClone.favorite_songs(
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    PRIMARY KEY(user_id, song_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (song_id) REFERENCES songs(id)
) engine = InnoDB;

INSERT INTO SpotifyClone.favorite_songs (user_id, song_id)
VALUES
  (1, 3),
  (1, 6),
  (1, 10),
  (2, 4),
  (3, 1),
  (3, 3),
  (4, 7),
  (4, 6),
  (5, 10),
  (5, 2),
  (8, 4),
  (9, 7),
  (10, 3);

