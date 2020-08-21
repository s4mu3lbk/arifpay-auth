CREATE SEQUENCE refresh_tokens_seq;

CREATE TABLE IF NOT EXISTS refresh_tokens (
  instance_id varchar(255) DEFAULT NULL,
  id bigint PRIMARY KEY NOT NULL DEFAULT NEXTVAL ('refresh_tokens_seq'),
  token varchar(255) DEFAULT NULL,
  user_id varchar(255) DEFAULT NULL,
  revoked smallint DEFAULT NULL,
  created_at timestamp(0) NULL DEFAULT NULL
) ;

CREATE INDEX refresh_tokens_instance_id_idx ON refresh_tokens (instance_id);
CREATE INDEX refresh_tokens_instance_id_user_id_idx ON refresh_tokens (instance_id,user_id);
CREATE INDEX refresh_tokens_token_idx ON refresh_tokens (token);
