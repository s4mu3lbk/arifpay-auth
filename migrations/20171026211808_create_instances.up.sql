CREATE TABLE IF NOT EXISTS instances (
  id varchar(255) PRIMARY KEY NOT NULL,
  uuid varchar(255) DEFAULT NULL,
  raw_base_config text,
  created_at timestamp(0) NULL DEFAULT NULL,
  updated_at timestamp(0) NULL DEFAULT NULL,
  deleted_at timestamp(0) NULL DEFAULT NULL
);
