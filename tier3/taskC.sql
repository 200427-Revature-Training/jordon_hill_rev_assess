/*Create a table structure using the provided ERD, ensure that the ability for auto-incrementing IDs
Value: 30 points*/
CREATE TABLE category (
	category_id serial PRIMARY KEY,
	"name" varchar(50)
);

CREATE TABLE flashcard (
	flashcard_id serial PRIMARY KEY,
	question varchar(250),
	answer varchar(250),
	category_id int REFERENCES category (category_id)
);

CREATE TABLE user_role (
	role_id serial PRIMARY KEY,
	"name" varchar(50)
);

CREATE TABLE app_user (
	user_id serial PRIMARY KEY,
	username varchar(50),
	"password" varchar(70), /* allowing room for hashed password */
	first_name varchar(50),
	last_name varchar(50),
	role_id int REFERENCES user_role (role_id)
);

CREATE TABLE study_set (
	study_set_id serial PRIMARY KEY,
	"name" varchar(50),
	owner_id int REFERENCES app_user (user_id)
);

CREATE TABLE study_set_card (
	study_set_id int REFERENCES study_set (study_set_id),
	flashcard_id int REFERENCES flashcard (flashcard_id),
	PRIMARY KEY (study_set_id, flashcard_id)
);

/*Implement a stored procedure that takes a user's id as an IN parameter and a cursor as a OUT parameter. This procedure will insert a result set into the provided cursor; the result set must contain the study sets belonging to the user with the provided id.
Value: 40 points*/





