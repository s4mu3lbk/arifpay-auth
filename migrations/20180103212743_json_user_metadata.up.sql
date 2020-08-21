/* ALTER TABLE users CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci; */

UPDATE users SET raw_app_meta_data='{}' WHERE raw_app_meta_data='';
UPDATE users SET raw_user_meta_data='{}' WHERE raw_user_meta_data='';

ALTER TABLE users 
ALTER raw_app_meta_data TYPE json USING raw_app_meta_data::json,
ALTER raw_user_meta_data TYPE json USING raw_user_meta_data::json;

ALTER TABLE users
ALTER raw_app_meta_data SET DEFAULT NULL,
ALTER raw_user_meta_data SET DEFAULT NULL;

