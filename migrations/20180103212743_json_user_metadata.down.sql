ALTER TABLE users 
ALTER COLUMN raw_app_meta_data TYPE text,
ALTER COLUMN raw_app_meta_data set DEFAULT NULL,

ALTER COLUMN raw_user_meta_data TYPE text,
ALTER COLUMN raw_user_meta_data set DEFAULT NULL;
