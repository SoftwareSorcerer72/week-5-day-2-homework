CREATE TABLE IF NOT EXISTS customers (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(25) NOT NULL,
	last_name VARCHAR NOT NULL	
);

CREATE TABLE IF NOT EXISTS tickets (
	ticket_id SERIAL PRIMARY KEY,
	price integer NOT NULL
);

CREATE TABLE IF NOT EXISTS movies (
	movie_id SERIAL PRIMARY KEY,
	show_times integer NOT NULL
);

ALTER TABLE customers
ADD COLUMN IF NOT EXISTS ticket_id SERIAL;


ALTER TABLE customers
ADD FOREIGN key(ticket_id) REFERENCES tickets(ticket_id);

ALTER TABLE movies
ADD COLUMN IF NOT EXISTS ticket_id SERIAL;

ALTER TABLE movies
ADD FOREIGN key(ticket_id) REFERENCES tickets(ticket_id);

ALTER TABLE tickets
ADD COLUMN IF NOT EXISTS movie_id SERIAL;

ALTER TABLE tickets
ADD FOREIGN key(movie_id) REFERENCES movies(movie_id);
