/*Write a query that will find all user info related to users with a role of BASIC_USER
Value: 10 points*/
SELECT * FROM app_user WHERE role_id = (SELECT role_id FROM user_role WHERE name = 'BASIC_USER');

/*Write a statement that will insert a new user into the APP_USER table with a role of PREMIUM_USER
Value: 20 points*/
INSERT INTO app_user (username, "password", first_name, last_name, role_id) VALUES
('Hallstead', 'secret', 'Jordon', 'Hill', (SELECT role_id FROM user_role WHERE name = 'PREMIUM_USER'));

/*Write a query that will find all user and study set info related to the user with an id of 4
Value: 30 points*/
SELECT * FROM app_user JOIN study_set ON user_id = owner_id WHERE user_id = 4;

/*Write a query that will obtain the owner’s username and role name, as well as the category name,
questions, and answers of flashcards contained within the study set with an id of 1.
Value: 40 points*/
SELECT username, user_role."name" AS role_name, category."name" AS category_name, question, answer FROM app_user
JOIN user_role ON app_user.role_id = user_role.role_id
JOIN study_set ON user_id = owner_id
JOIN study_set_card ON study_set.study_set_id = study_set_card.study_set_id
JOIN flashcard ON study_set_card.flashcard_id = flashcard.flashcard_id
JOIN category ON category.category_id = flashcard.category_id WHERE study_set_card.study_set_id = 1;






